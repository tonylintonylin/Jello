﻿using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Jello.Application.Auth
{
    public class Error : BaseModel
    {
        #region Handlers

        public override IActionResult Get()
        {
            try 
            { 
                return View(); 
            }
            catch 
            { 
                return LocalRedirect("/error.htm"); 
            }
        }

        #endregion
    }
}
