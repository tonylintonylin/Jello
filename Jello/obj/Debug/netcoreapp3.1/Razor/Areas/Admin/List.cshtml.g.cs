<<<<<<< HEAD
#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "9baba331a541223a022fa13bd9567321cbfb6929"
=======
#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "93c4d26a7651d22c94ec7a40fd5290851b18e98e"
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_List), @"mvc.1.0.view", @"/Areas/Admin/List.cshtml")]
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
<<<<<<< HEAD
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9baba331a541223a022fa13bd9567321cbfb6929", @"/Areas/Admin/List.cshtml")]
=======
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"93c4d26a7651d22c94ec7a40fd5290851b18e98e", @"/Areas/Admin/List.cshtml")]
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_Admin_List : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas.Admin.List>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "_AdminMenu", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
  
    ViewBag.Title = "Admin";

#line default
#line hidden
#nullable disable
            WriteLiteral("<div class=\"page-box\">\r\n    <div class=\"d-flex\">\r\n        <div class=\"page-box-icon\">\r\n            <a href=\"/admin\"><i");
            BeginWriteAttribute("class", " class=\"", 186, "\"", 210, 1);
#nullable restore
#line 8 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 194, Cache.AdminIcon, 194, 16, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("></i></a> Admin\r\n        </div>\r\n        <div class=\"page-box-admin-menu\">\r\n            ");
<<<<<<< HEAD
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "9baba331a541223a022fa13bd9567321cbfb69293888", async() => {
=======
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "93c4d26a7651d22c94ec7a40fd5290851b18e98e3897", async() => {
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
        </div>
    </div>
</div>

<div class=""row"">
    <div class=""col-12 col-sm-6"">
        <div class=""pl-40"">
            <div class=""py-20"">Database Tables &amp; counts</div>
            
            <table class=""table table-hover table-sm"">
");
#nullable restore
#line 22 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
                 foreach (var item in @Model.Items)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <tr>\r\n                        <td class=\"width-70\"><a");
<<<<<<< HEAD
            BeginWriteAttribute("href", " href=\"", 733, "\"", 749, 1);
#nullable restore
#line 25 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 740, item.Url, 740, 9, false);
=======
            BeginWriteAttribute("href", " href=\"", 743, "\"", 759, 1);
#nullable restore
#line 30 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 750, item.Url, 750, 9, false);
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("><i");
<<<<<<< HEAD
            BeginWriteAttribute("class", " class=\'", 753, "\'", 771, 1);
#nullable restore
#line 25 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 761, item.Icon, 761, 10, false);
=======
            BeginWriteAttribute("class", " class=\'", 763, "\'", 781, 1);
#nullable restore
#line 30 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 771, item.Icon, 771, 10, false);
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("></i></a></td>\r\n                        <td class=\"pt-13\"><a class=\"table-list-link\"");
<<<<<<< HEAD
            BeginWriteAttribute("href", " href=\"", 856, "\"", 872, 1);
#nullable restore
#line 26 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 863, item.Url, 863, 9, false);
=======
            BeginWriteAttribute("href", " href=\"", 866, "\"", 882, 1);
#nullable restore
#line 31 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
WriteAttributeValue("", 873, item.Url, 873, 9, false);
>>>>>>> f0b2511430fd30ca65d8edcd405f7d946f29351b

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 26 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
                                                                                 Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></td>\r\n                        <td class=\"pt-13\">");
#nullable restore
#line 27 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
                                     Write(item.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    </tr>\r\n");
#nullable restore
#line 29 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Admin\List.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"            </table>
        </div>
    </div>
    <div class=""col-12 col-sm-6"">

        <div class=""p-20 bg-light my-15 my-30 height-300"">
            <div class=""pt-10"">
                <a class=""btn btn-light btn-sm width-70"" href=""/admin/rollup"">Start</a> &nbsp;&nbsp;&nbsp;Rollup All Fields
            </div>
            <div class=""pt-15"">
                <a class=""btn btn-light btn-sm width-70"" href=""/admin/clearcache"" >Clear</a> &nbsp;&nbsp;&nbsp;Clear all Caches
            </div>
        </div>
    </div>
</div>
<div class=""height-60""></div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas.Admin.List> Html { get; private set; }
    }
}
#pragma warning restore 1591
