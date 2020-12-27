import { HttpClient } from '@angular/common/http';
import { Component, ViewChild, AfterViewInit } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { merge, Observable, of as observableOf } from 'rxjs';
import { catchError, map, startWith, switchMap } from 'rxjs/operators';

@Component({
  selector: 'app-projects',
  templateUrl: './projects.component.html',
  styleUrls: ['./projects.component.scss'],
})
export class ProjectsComponent implements AfterViewInit {
  displayedColumns: string[] = [
    'index',
    'Title',
    'Type',
    'TotalIssues',
    'OwnerAlias',
    'CreatedDate',
    // 'actions',
  ];
  Database: ExampleHttpDatabase | null;
  data: Project[] = [];

  resultsLength = 0;
  isLoadingResults = true;
  isRateLimitReached = false;

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private _httpClient: HttpClient) {}

  ngAfterViewInit() {
    this.Database = new ExampleHttpDatabase(this._httpClient);

    // If the user changes the sort order, reset back to the first page.
    this.sort.sortChange.subscribe(() => (this.paginator.pageIndex = 0));

    merge(this.sort.sortChange, this.paginator.page)
      .pipe(
        startWith({}),
        switchMap(() => {
          this.isLoadingResults = true;

          return this.Database!.getLeads(
            this.sort.active,
            this.sort.direction,
            this.paginator.pageIndex
          );
        }),
        map((leadsData) => {
          // Flip flag to show that loading has finished.
          this.isLoadingResults = false;
          this.isRateLimitReached = false;
          this.resultsLength = leadsData.rows;

          console.log(leadsData);

          return leadsData.items;
        }),
        catchError(() => {
          this.isLoadingResults = false;
          // Catch if the API has reached its rate limit. Return empty data.
          this.isRateLimitReached = true;
          return observableOf([]);
        })
      )
      .subscribe((data) => (this.data = data));
  }
}

export interface ProjectApi {
  items: Project[];
  rows: number;
}

export interface Project {
  title: string;
  type: string;
  totalIssues: number;
  ownerAlias: string;
  createdDate: string;
}

/** An example database that the data source uses to retrieve data for the table. */
export class ExampleHttpDatabase {
  constructor(private _httpClient: HttpClient) {}

  getLeads(sort: string, order: string, page: number): Observable<ProjectApi> {
    const href = 'https://localhost:5001/api/projects';

    if (order == 'desc') order = '-';
    else order = '';

    const requestUrl = `${href}?Page=${page + 1}&Sort=${order}${sort}`;
    return this._httpClient.get<ProjectApi>(requestUrl);
  }
}
