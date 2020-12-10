using Jello.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;

namespace Jello.Areas.Issues
{
    public class Edit : BaseModel
    {
        #region Data

        public int Id { get; set; }

        [Required(ErrorMessage = "Title is required")]
        public string Title { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string Priority { get; set; }
        public string Status { get; set; }
        public DateTime CreatedDate { get; set; }

        public int? ProjectId { get; set; }
        public string ProjectTitle { get; set; }

        public int? OwnerId { get; set; }
        public string OwnerAlias { get; set; }
        public string OwnerName { get; set; }

        #endregion

        #region Handlers

        public override async Task<IActionResult> GetAsync()
        {
            if (Id == 0)
            {
                OwnerId = _currentUser.Id;
                OwnerName = _currentUser.Name;
                ProjectId = HttpContext.Request.Query["ProjectId"].GetId();
                ProjectTitle = HttpContext.Request.Query["ProjectTitle"];
            }
            else
            {
                _mapper.Map(await _db.Issue.SingleOrDefaultAsync(c => c.Id == Id), this);
            }

            return View(this);
        }

        public override async Task<IActionResult> PostAsync()
        {
            if (!ModelState.IsValid) return View(this);

            if (Id == 0) // new item
            {
                var issue = _mapper.Map<Issue>(this);
                issue.CreatedDate = DateTime.Now;

                _db.Issue.Add(issue);
                await _db.SaveChangesAsync();

                await SettleInsertAsync(issue);
            }
            else
            {
                var issue = await _db.Issue.SingleOrDefaultAsync(c => c.Id == Id);
                var originalIssue = new OriginalIssue(issue);

                _mapper.Map(this, issue);

                _db.Issue.Update(issue);
                await _db.SaveChangesAsync();

                await SettleUpdateAsync(originalIssue, issue);
            }

            return LocalRedirect(Referer ?? "/issues");
        }

        #endregion

        #region Helpers

        private async Task SettleInsertAsync(Issue issue)
        {
            _cache.MergeIssue(issue);

            await _rollup.RollupThingAAsync(issue.ProjectId);
            await _rollup.RollupUserAsync(issue.OwnerId);
        }

        private async Task SettleUpdateAsync(OriginalIssue original, Issue issue)
        {
            _cache.MergeIssue(issue);
            
            if (original.ProjectId != issue.ProjectId)
            {
                await _rollup.RollupProjectAsync(original.ProjectId);
                await _rollup.RollupProjectAsync(issue.ProjectId);
            }
            if (original.OwnerId != issue.OwnerId)
            {
                await _rollup.RollupUserAsync(original.OwnerId);
                await _rollup.RollupUserAsync(issue.OwnerId);
            }
        }

        private class OriginalIssue
        {
            // Used to temporarily hold a copy of the relevant fields
            public int? ProjectId { get; set; }
            public int OwnerId { get; set; }

            public OriginalIssue(Issue issue)
            {
                ProjectId = issue.ProjectId;
                OwnerId = issue.OwnerId;
            }
        }

        #endregion

        #region Mapping

        public class MapperProfile : BaseProfile
        {
            public MapperProfile()
            {
                CreateMap<Issue, Edit>()
                   .Map(dest => dest.OwnerName, opt => opt.MapFrom(src => src.OwnerId == 0 ? "" : _cache.Users[src.OwnerId].Name));

                CreateMap<Edit, Issue>()
                    .Map(dest => dest.ProjectTitle, opt => opt.MapFrom(src => src.ProjectId == null ? "" : _cache.Projects[src.ProjectId.Value].Title))
                   .Map(dest => dest.OwnerAlias, opt => opt.MapFrom(src => _cache.Users[src.OwnerId.Value].Alias));
            }
        }

        #endregion
    }
}
