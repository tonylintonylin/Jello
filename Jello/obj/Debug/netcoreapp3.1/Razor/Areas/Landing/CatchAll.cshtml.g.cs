#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Landing\CatchAll.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "0769802bdf5d78ea10d9ca5caa1931c1df33640d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Landing_CatchAll), @"mvc.1.0.view", @"/Areas/Landing/CatchAll.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_ViewImports.cshtml"
using Jello;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0769802bdf5d78ea10d9ca5caa1931c1df33640d", @"/Areas/Landing/CatchAll.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_Landing_CatchAll : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Landing\CatchAll.cshtml"
  
    ViewBag.Title = "Page Not Found";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""width-400 m-auto mt-140 p-30 bg-light border rounded"">

    <h3>404 Page not found</h3>
    <p class=""pt-10"">
        Sorry, it seems that the requested page is not available. 
        The good news is that we have many others to choose from. <br /><br />

        You could start by navigating to our <br />
");
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Landing\CatchAll.cshtml"
         if (CurrentUser.IsAuthenticated)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <a class=\"underline\" href=\"/home\">Home page</a>\r\n");
#nullable restore
#line 16 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Landing\CatchAll.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <a class=\"underline\" href=\"/\">Landing page</a>\r\n");
#nullable restore
#line 20 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Landing\CatchAll.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </p>\r\n\r\n</div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ITypeahead Typeahead { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IFilter Filter { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ILookup Lookup { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ICache Cache { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ICurrentUser CurrentUser { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
