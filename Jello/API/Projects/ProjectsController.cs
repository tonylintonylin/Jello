using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using static Jello.API.Projects.List;

namespace Jello.API.Projects
{
    [ApiController]
    [Authorize]
    [Menu("Projects")]
    [Route("api/[controller]")]
    public class ProjectsController : Controller
    {
        [HttpGet]
        public async Task<Output> List([FromQuery]List model) => await model.GetAsync();

        // [HttpGet("{id}", Order = 10)]
        // public async Task<IActionResult> Detail(Detail model) => await model.GetAsync();

        // [HttpGet("edit/{id?}")]
        // public async Task<IActionResult> Edit(int id) => await new Edit { Id = id }.GetAsync();

        // [HttpPost("edit/{id?}")]
        // public async Task<IActionResult> Edit(Edit model) => await model.PostAsync();

        // [HttpPost("delete"), AjaxOnly]
        // public async Task<IActionResult> Delete(Delete model) => await model.PostAsync();
    }
}