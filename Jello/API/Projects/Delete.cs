using Jello.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace Jello.API.Projects
{
    public class Delete : BaseModel
    {
        #region Data

        public int Id { get; set; }

        #endregion

        #region Handlers

        public async Task<DeletedOutput> DeleteAsync()
        {
            var project = await _db.Project.SingleOrDefaultAsync(c => c.Id == Id);

            var output = new DeletedOutput { deleted = project.Title};

            _db.Project.Remove(project);
            await _db.SaveChangesAsync();

            // await SettleDeleteAsync(project);


            return output;
            // return Json(true);
        }

        public class DeletedOutput
        {
            public string deleted { get; set; }
        }

        // public async Task<IActionResult> DeleteAsync()
        // {
        //     var project = await _db.Project.SingleOrDefaultAsync(c => c.Id == Id);
        //     _db.Project.Remove(project);
        //     await _db.SaveChangesAsync();

        //     await SettleDeleteAsync(project);

        //     return Json(true);
        // }

        // public async Task<ActionResult<Project>> DeleteAsync()
        // {
        //     try
        //     {
        //         var project = await _db.Project.SingleOrDefaultAsync(c => c.Id == Id);

        //         if (project == null)
        //         {
        //             // return NotFound($"Employee with Id = {id} not found");
        //     return Json(false);

        //         }

        //         _db.Project.Remove(project);
        //         await _db.SaveChangesAsync();

        //         await SettleDeleteAsync(project);
        //     }
        //     catch (Exception)
        //     {
        //         // return StatusCode(StatusCodes.Status500InternalServerError,
        //         //     "Error deleting data");
        //     return Json(false);

        //     }
        //                 return Json(true);
        // }

        #endregion

        #region Helpers

        // private async Task SettleDeleteAsync(Project project)
        // {
        //     _cache.DeleteProject(project);
        //     await _db.Database.ExecuteSqlInterpolatedAsync(
        //              $"DELETE FROM Viewed WHERE WhatId = {project.Id} AND WhatType = 'Project';");

        //     await _rollup.RollupUserAsync(project.OwnerId);
        // }

        #endregion
    }
}
