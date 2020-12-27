// using API;
using Jello.Domain;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using static Jello.API.Projects.Delete;
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
        public async Task<Output> List([FromQuery] List model) => await model.GetAsync();

        // [HttpGet("{id}", Order = 10)]
        // public async Task<DetailOutput> Detail([FromQuery]Detail model) => await model.GetAsync();

        [HttpGet("{id}")]
        public async Task<DetailOutput> Detail(int id) => await new Detail { Id = id }.GetAsync();

        // [HttpGet("edit/{id?}")]
        // public async Task<IActionResult> Edit(int id) => await new Edit { Id = id }.GetAsync();

        // [HttpPost("edit/{id?}")]
        // public async Task<IActionResult> Edit(Edit model) => await model.PostAsync();

        // [HttpPost("delete/{id?}")]
        // public async Task<IActionResult> Delete(Delete model) => await model.DeleteAsync();

        // [HttpDelete("delete/{id}")]
        // public async Task<ActionResult> Delete(int id) => await new Delete { Id = id }.DeleteAsync();

        // [HttpPost("delete"), AjaxOnly]
        // public async Task<IActionResult> Delete(Delete model) => await model.PostAsync();

        // [HttpDelete("{id}")]
        // public async Task<IActionResult> Delete(int id) => await new Delete { Id = id }.DeleteAsync();

        [HttpDelete("delete/{id}")]
        public async Task<DeletedOutput> Delete(int id) => await new Delete { Id = id }.DeleteAsync();
    }
}

// namespace Jello.API.Projects
// {
//     [ApiController]
//     // [Authorize]
//     [Menu("Projects")]
//     [Route("api/[controller]")]
//     public class ProjectsController : BaseApiController
//     {
//         // [HttpGet]
//         // public async Task<Output> List([FromQuery]List model) => await model.GetAsync();
//         [HttpGet]
//         public async Task<Output> List([FromQuery]List model) => await model.GetAsync();
//         // [HttpGet("{id}", Order = 10)]
//         // public async Task<DetailOutput> Detail([FromQuery]Detail model) => await model.GetAsync();

//         // [HttpGet("{id}")]
//         // public async Task<DetailOutput> Detail(int id) => await new Detail { Id = id }.GetAsync();

//         // [HttpGet("edit/{id?}")]
//         // public async Task<IActionResult> Edit(int id) => await new Edit { Id = id }.GetAsync();

//         // [HttpPost("edit/{id?}")]
//         // public async Task<IActionResult> Edit(Edit model) => await model.PostAsync();

//         // [HttpPost("delete/{id?}")]
//         // public async Task<IActionResult> Delete(Delete model) => await model.DeleteAsync();

//         // [HttpDelete("delete/{id}")]
//         // public async Task<ActionResult> Delete(int id) => await new Delete { Id = id }.DeleteAsync();

//         // [HttpDelete("{id}")]
//         // public async Task<ActionResult<Project>> Delete(int id) => await new Delete { Id = id }.DeleteAsync();
//     }
// }