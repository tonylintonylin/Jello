using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Jello.Application.Admin
{
    public class Rollup : BaseModel
    {
        public override async Task<IActionResult> GetAsync()
        {
            await _rollup.RollupAllAsync();
            Success = "Rollup calculation done";
            
            return LocalRedirect("/admin");
        }
    }
}
