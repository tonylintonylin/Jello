#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "ca1b43bb295f706ffb496c174064a6d872e46d7b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_ThingsC_Import), @"mvc.1.0.view", @"/Areas/ThingsC/Import.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ca1b43bb295f706ffb496c174064a6d872e46d7b", @"/Areas/ThingsC/Import.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_ThingsC_Import : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas.ThingsC.Import>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("enctype", new global::Microsoft.AspNetCore.Html.HtmlString("multipart/form-data"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "hidden", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("action", new global::Microsoft.AspNetCore.Html.HtmlString("/thingsc/import/go"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
  
    ViewBag.Title = "Import Things C";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            WriteLiteral(@"
<div class=""row stepped-progress"">

    <div class='col stepped-progress-step complete'>
        <div class=""text-center stepped-progress-stepnum"">Step 1</div>
        <div class=""progress""><div class=""progress-bar""></div></div>
        <a href=""javascript:void(0);"" class=""stepped-progress-dot""></a>
        <div class=""stepped-progress-info text-center"">Upload Excel File</div>
    </div>

    <div");
            BeginWriteAttribute("class", " class=\'", 644, "\'", 741, 3);
            WriteAttributeValue("", 652, "col", 652, 3, true);
            WriteAttributeValue(" ", 655, "stepped-progress-step", 656, 22, true);
#nullable restore
#line 19 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
WriteAttributeValue(" ", 677, Model.Step == 2 || Model.Step == 3 ? "complete" : "disabled", 678, 63, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@">
        <div class=""text-center stepped-progress-stepnum"">Step 2</div>
        <div class=""progress""><div class=""progress-bar""></div></div>
        <a href=""javascript:void(0);"" class=""stepped-progress-dot""></a>
        <div class=""stepped-progress-info text-center"">Preview and Accept</div>
    </div>

    <div");
            BeginWriteAttribute("class", " class=\'", 1063, "\'", 1141, 3);
            WriteAttributeValue("", 1071, "col", 1071, 3, true);
            WriteAttributeValue(" ", 1074, "stepped-progress-step", 1075, 22, true);
#nullable restore
#line 26 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
WriteAttributeValue(" ", 1096, Model.Step == 3 ? "complete" : "disabled", 1097, 44, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@">
        <div class=""text-center stepped-progress-stepnum"">Step 3</div>
        <div class=""progress""><div class=""progress-bar""></div></div>
        <a href=""javascript:void(0);"" class=""stepped-progress-dot""></a>
        <div class=""stepped-progress-info text-center"">Import Complete</div>
    </div>

</div>

");
#nullable restore
#line 35 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
 if (Model.Step == 1)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"pt-23 pl-110 pb-180\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "ca1b43bb295f706ffb496c174064a6d872e46d7b7097", async() => {
                WriteLiteral(@"
            <span class=""btn btn-dark position-relative mt-0 fileinput-button"" style=""overflow: hidden;"">
                <span> Select Excel File </span>
                <input id=""itemupload"" type=""file"" name=""file"">
            </span>
            &nbsp;&nbsp;&nbsp;<img id=""image-loader"" style=""display:none;"" src=""/images/ajax-loader.gif"" />
        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
#nullable restore
#line 38 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Antiforgery = true;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-antiforgery", __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Antiforgery, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n");
#nullable restore
#line 46 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 48 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
 if (Model.Step == 2)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"px-40 pb-180\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "ca1b43bb295f706ffb496c174064a6d872e46d7b9876", async() => {
                WriteLiteral("\r\n\r\n            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "ca1b43bb295f706ffb496c174064a6d872e46d7b10150", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_2.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
#nullable restore
#line 53 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.FileName);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n\r\n            <div class=\"text-center pb-25\">\r\n                <input type=\"submit\" class=\"btn btn-dark\" value=\'Accept\' />&nbsp;&nbsp;\r\n                <a class=\"btn btn-light\" href=\"/thingsc/import\">Cancel</a>\r\n            </div>\r\n        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
#nullable restore
#line 51 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Antiforgery = true;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-antiforgery", __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Antiforgery, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n");
#nullable restore
#line 61 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
         if (Model.Grid.Rows.Count == 0)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <div class=\"height-20 bg-light mt-22\">\r\n                No records found\r\n            </div>\r\n");
#nullable restore
#line 66 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
        }
        else
        {


#line default
#line hidden
#nullable disable
            WriteLiteral("            <table class=\"table table-list table-sm table-hover\">\r\n                <tr>\r\n");
#nullable restore
#line 72 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                     foreach (var header in Model.Grid.Headers)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <th>\r\n                            ");
#nullable restore
#line 75 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                       Write(header);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n");
#nullable restore
#line 77 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </tr>\r\n\r\n");
#nullable restore
#line 80 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                 foreach (var row in Model.Grid.Rows)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <tr>\r\n");
#nullable restore
#line 83 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                         foreach (var header in Model.Grid.Headers)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <td>");
#nullable restore
#line 85 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                            Write(row.ContainsKey(header) ? row[header] : "");

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n");
#nullable restore
#line 86 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </tr>\r\n");
#nullable restore
#line 88 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("            </table>\r\n");
#nullable restore
#line 90 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    </div>\r\n");
#nullable restore
#line 93 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 95 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
 if (Model.Step == 3)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"text-center pt-20 pb-180\">\r\n        ");
#nullable restore
#line 98 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
   Write(Model.Result);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <div class=\"py-20\">\r\n            <a href=\"/thingsc\">View imported records</a>\r\n        </div>\r\n    </div>\r\n");
#nullable restore
#line 103 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Import.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    <script>\r\n\r\n        $(function () {\r\n\r\n            Dofactory.Utils.Import.start();\r\n\r\n        });\r\n    </script>\r\n");
            }
            );
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas.ThingsC.Import> Html { get; private set; }
    }
}
#pragma warning restore 1591
