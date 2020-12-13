using System;
using System.Threading.Tasks;
using Jello;
using Jello.Domain;

namespace Dofactory.CRM.Core
{
    #region Interface

    public interface IIssueService
    {
        Task LogChangeHistoryAsync(Issue issue);
    }

    #endregion

    public class IssueService : IIssueService
    {
        #region Dependency Injection

        private readonly ICache _cache;
        private readonly JelloContext _db;
        private readonly ICurrentUser _currentUser;

        public IssueService(ICache cache, JelloContext db, ICurrentUser currentUser)
        {
            _cache = cache;
            _db = db;
            _currentUser = currentUser;
        }

        #endregion

        #region Handlers

        public async Task LogChangeHistoryAsync(Issue issue)
        {
            var issueHistory = new IssueHistory
            {
                IssueId = issue.Id,
                IssueTitle = issue.Title,
                Type = issue.Type,
                Status = issue.Status,
                Priority = issue.Priority,

                // Person that made the change.
                OwnerId = _currentUser.Id,      
                OwnerAlias = _cache.Users[_currentUser.Id].Alias,
                CreatedDate = DateTime.Now,
                CreatedOn = DateTime.Now,
                CreatedBy = _currentUser.Id,
                ChangedOn = DateTime.Now
            };

            _db.Add(issueHistory);
            await _db.SaveChangesAsync();
        }

        #endregion
    }
}
