using Jello.Domain;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace Jello
{
    #region Interface

    public interface IRollup
    {
        void Startup();

        Task RollupAllAsync();

        Task RollupProjectAsync(int? id);
        Task RollupIssueAsync(int? id);

        Task RollupUserAsync(int? id);
    }

    #endregion

    public class Rollup : IRollup
    {
        #region Dependency Injection

        private readonly JelloContext _db;

        public Rollup(JelloContext db) { _db = db; }

        #endregion

        #region Global Rollups

        public void Startup()
        {
            Task.Run(RollupAllAsync).GetAwaiter().GetResult();
        }

        public async Task RollupAllAsync()
        {
            // Refresh denormalized columns

            await RollupProjectsAsync();
            await RollupIssuesAsync();

            await RollupUsersAsync();
        }

        #endregion

        #region Table Rollups

        private async Task RollupProjectsAsync()
        {
            string sql =
            @"UPDATE [Project] 
                 SET OwnerAlias = (SELECT Alias FROM [User] WHERE [User].Id = [Project].OwnerId),
                     TotalIssues = (SELECT COUNT(Issue.Id) FROM [Issue] WHERE [Issue].ProjectId = [Project].Id);";

            await _db.Database.ExecuteSqlRawAsync(sql);
        }

        private async Task RollupIssuesAsync()
        {
            string sql =
            @"UPDATE [Issue] 
                 SET OwnerAlias = (SELECT Alias FROM [User] WHERE [User].Id = [Issue].OwnerId),
                     ProjectTitle = (SELECT Title FROM [Project] WHERE [Project].Id = [Issue].ProjectId);";

            await _db.Database.ExecuteSqlRawAsync(sql);
        }

        private async Task RollupUsersAsync()
        {
            string sql =
           @"UPDATE [User] 
            SET TotalThingsA = (SELECT COUNT([ThingA].Id) FROM [ThingA] WHERE [ThingA].OwnerId = [User].Id),
                TotalThingsB = (SELECT COUNT([ThingB].Id) FROM [ThingB] WHERE [ThingB].OwnerId = [User].Id),
                TotalThingsC = (SELECT COUNT([ThingC].Id) FROM [ThingC] WHERE [ThingC].OwnerId = [User].Id),
                TotalThingsD = (SELECT COUNT([ThingD].Id) FROM [ThingD] WHERE [ThingD].OwnerId = [User].Id),
                TotalProjects = (SELECT COUNT([Project].Id) FROM [Project] WHERE [Project].OwnerId = [User].Id),
                TotalIssues = (SELECT COUNT([Issue].Id) FROM [Issue] WHERE [Issue].OwnerId = [User].Id),
                TotalThingsE = (SELECT COUNT([ThingE].Id) FROM [ThingE] WHERE [ThingE].OwnerId = [User].Id);";

            await _db.Database.ExecuteSqlRawAsync(sql);
        }

        #endregion

        #region Record Rollups

        public async Task RollupProjectAsync(int? id)
        {
            if (id == null) return;

            await _db.Database.ExecuteSqlInterpolatedAsync(
                      $@"UPDATE [Project] 
                            SET OwnerAlias = (SELECT Alias FROM [User] WHERE [User].Id = [Project].OwnerId),
                                TotalIssues = (SELECT COUNT(Issue.Id) FROM [Issue] WHERE [Issue].ProjectId = [Project].Id)
                          WHERE Id = {id};");
        }

        public async Task RollupIssueAsync(int? id)
        {
            if (id == null) return;

            await _db.Database.ExecuteSqlInterpolatedAsync(
                    $@"UPDATE [Issue] 
                          SET OwnerAlias = (SELECT Alias FROM [User] WHERE [User].Id = [Issue].OwnerId),
                              ProjectName = (SELECT Name FROM [Project] WHERE [Project].Id = [Issue].ProjectId),
                        WHERE Id = {id};");
        }

        public async Task RollupUserAsync(int? id)
        {
            if (id == null) return;

             await _db.Database.ExecuteSqlInterpolatedAsync(
                       $@"UPDATE [User] 
                             SET TotalThingsA = (SELECT COUNT([ThingA].Id) FROM [ThingA] WHERE [ThingA].OwnerId = [User].Id),
                                 TotalThingsB = (SELECT COUNT([ThingB].Id) FROM [ThingB] WHERE [ThingB].OwnerId = [User].Id),
                                 TotalThingsC = (SELECT COUNT([ThingC].Id) FROM [ThingC] WHERE [ThingC].OwnerId = [User].Id),
                                 TotalThingsD = (SELECT COUNT([ThingD].Id) FROM [ThingD] WHERE [ThingD].OwnerId = [User].Id),
                                 TotalProjects = (SELECT COUNT([Project].Id) FROM [Project] WHERE [Project].OwnerId = [User].Id),
                                 TotalIssues = (SELECT COUNT([Issue].Id) FROM [Issue] WHERE [Issue].OwnerId = [User].Id),
                                 TotalThingsE = (SELECT COUNT([ThingE].Id) FROM [ThingE] WHERE [ThingE].OwnerId = [User].Id)
                           WHERE Id = {id ?? 0};");

        }

        #endregion
    }
}
