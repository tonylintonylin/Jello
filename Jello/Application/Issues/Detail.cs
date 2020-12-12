using Jello.Application._Related;
using Jello.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace Jello.Application.Issues
{
    public class Detail : BaseModel
    {
        #region Data

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string Priority { get; set; }
        public string Status { get; set; }

        public int? AssigneeId { get; set; }
        public string AssigneeName { get; set; }

        public int? ProjectId { get; set; }
        public string ProjectTitle { get; set; }

        public int? OwnerId { get; set; }
        public string OwnerAlias { get; set; }
        public string OwnerName { get; set; }
        
        public DateTime CreatedDate { get; set; }
        public DateTime CreatedOn { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime ChangedOn { get; set; }
        public int? ChangedBy { get; set; }

        // Related Lists (none)
        public string Tab { get; set; } = "details";

        #endregion

        #region Handlers

        public override async Task<IActionResult> GetAsync()
        {
            var Issue = await _db.Issue.SingleOrDefaultAsync(c => c.Id == Id);
            _mapper.Map(Issue, this);
            
            await _viewedService.Log(Id, "Issue", Issue.Title);

            return View(this);
        }

        #endregion

        #region Mapping

        public class MapperProfile : BaseProfile
        {
            public MapperProfile()
            {
                CreateMap<Issue, Detail>()
                  .Map(dest => dest.OwnerName, opt => opt.MapFrom(src => _cache.Users[src.OwnerId].Name));
            }
        }

        #endregion
    }
}
