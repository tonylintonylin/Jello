using Jello.Application._Related;
using Jello.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Jello.API.Projects
{
    public class Detail : BaseModel
    {
        #region Data

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public int TotalIssues { get; set; }

        public int? OwnerId { get; set; }
        public string OwnerAlias { get; set; }
        public string OwnerName { get; set; }
        
        public DateTime CreatedDate { get; set; }

        // Related Lists
        public string Tab { get; set; } = "details";
        public _Issues Issues { get; set; } = new _Issues { ParentIdName = "ProjectId" };

        #endregion

        #region Handlers

        public async Task<DetailOutput> GetAsync()
        {
            var project = await _db.Project.SingleOrDefaultAsync(c => c.Id == Id);
            _mapper.Map(project, this);

            var issues = await _db.Issue.Where(o => o.ProjectId == project.Id).OrderByDescending(o => o.Id).Take(6).ToListAsync();
            _related.Prepare(issues, Issues, project.TotalIssues, project.Id, project.Title);
            // implement recently viewed when auth is implemented
            // await _viewedService.Log(Id, "Project", project.Title);
            
            var output = new DetailOutput { detail = project, related = issues };

            return output;
        }

        #endregion

        #region Helpers

        public class DetailOutput
        {
            public Project detail { get; set; }
            public List<Issue> related { get; set; }
        }
        
        #endregion

        #region Mapping

        public class MapperProfile : BaseProfile
        {
            public MapperProfile()
            {
                CreateMap<Project, Detail>()
                  .Map(dest => dest.OwnerName, opt => opt.MapFrom(src => _cache.Users[src.OwnerId].Name));
            }
        }

        #endregion
    }
}
