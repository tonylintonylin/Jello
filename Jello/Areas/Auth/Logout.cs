﻿using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Jello.Areas.Auth
{
    public class Logout : BaseModel
    {
        #region Handlers

        public override async Task<IActionResult> GetAsync()
        {
             await _identityService.SignOutAsync();

             return RedirectToAction("Login");
        }

        #endregion
    }
}
