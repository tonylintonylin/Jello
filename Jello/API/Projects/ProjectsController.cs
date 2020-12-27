using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using static Jello.API.Projects.Detail;
using static Jello.API.Projects.List;

namespace Jello.API.Projects
{
    [ApiController]
    // [Authorize]
    [Menu("Projects")]
    [Route("api/[controller]")]
    public class ProjectsController : Controller
    {
        [HttpGet]
        public async Task<Output> List([FromQuery]List model) => await model.GetAsync();

        // [HttpGet("{id}", Order = 10)]
        // public async Task<DetailOutput> Detail([FromQuery]Detail model) => await model.GetAsync();

        [HttpGet("{id}")]
        public async Task<DetailOutput> Detail(int id) => await new Detail { Id = id }.GetAsync();

        // [HttpGet("edit/{id?}")]
        // public async Task<IActionResult> Edit(int id) => await new Edit { Id = id }.GetAsync();

        // [HttpPost("edit/{id?}")]
        // public async Task<IActionResult> Edit(Edit model) => await model.PostAsync();

        // [HttpPost("delete/{id?}")]
        // public async Task<IActionResult> Delete(Delete model) => await model.PostAsync();

        [HttpPost("delete/{id?}")]
        public async Task<IActionResult> Delete(int id) => await new Delete { Id = id }.PostAsync();
    }
}