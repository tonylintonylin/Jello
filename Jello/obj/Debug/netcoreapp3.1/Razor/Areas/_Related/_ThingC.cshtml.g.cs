#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5832001bdba9c42b6409772ac5a10dbfa1aeb27b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas__Related__ThingC), @"mvc.1.0.view", @"/Areas/_Related/_ThingC.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5832001bdba9c42b6409772ac5a10dbfa1aeb27b", @"/Areas/_Related/_ThingC.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas__Related__ThingC : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas._Related._ThingsC>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "checkbox", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("disabled"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n<div class=\"d-flex related-header\">\r\n");
            WriteLiteral("    <div class=\" related-text\">Things C (");
#nullable restore
#line 5 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                                    Write(Model.TotalThingsC);

#line default
#line hidden
#nullable disable
            WriteLiteral(")</div>\r\n    <div class=\" related-viewall\">\r\n");
#nullable restore
#line 7 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
         if (Model.TotalThingsC > 4)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <a");
            BeginWriteAttribute("href", " href=\"", 323, "\"", 394, 4);
            WriteAttributeValue("", 330, "/thingsc?AdvancedFilter=True&", 330, 29, true);
#nullable restore
#line 9 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 359, Model.ParentIdName, 359, 19, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 378, "=", 378, 1, true);
#nullable restore
#line 9 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 379, Model.ParentId, 379, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">View All</a>\r\n");
#nullable restore
#line 10 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </div>\r\n\r\n    <div class=\"ml-auto related-new\"><a class=\"btn btn-sm btn-light\"");
            BeginWriteAttribute("href", " href=\"", 503, "\"", 611, 8);
            WriteAttributeValue("", 510, "/thingsc/edit?", 510, 14, true);
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 524, Model.ParentIdName, 524, 21, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 545, "Id=", 545, 3, true);
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 548, Model.ParentId, 548, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 565, "&", 565, 1, true);
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 566, Model.ParentIdName, 566, 21, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 587, "Name=", 587, 5, true);
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 592, Model.ParentName, 592, 19, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("> New </a></div>\r\n</div>\r\n\r\n<div class=\"related-items\">\r\n");
#nullable restore
#line 17 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
     if (Model.ThingsC.Count == 0)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        ");
            WriteLiteral("No related Thing C items\r\n");
#nullable restore
#line 20 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
}
    else
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"row\">\r\n");
#nullable restore
#line 24 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
             foreach (var item in Model.ThingsC)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <div class=\"col-3\">\r\n                    <div class=\"pb-15\"><a class=\"underline\"");
            BeginWriteAttribute("href", " href=\"", 956, "\"", 992, 3);
            WriteAttributeValue("", 963, "/thingsc/", 963, 9, true);
#nullable restore
#line 27 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 972, item.Id, 972, 8, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 980, "?tab=details", 980, 12, true);
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 27 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                                                                                            Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></div>\r\n                    <table class=\"table-related\">\r\n                        <tr>\r\n                            <td class=\"w-30\">Money</td>\r\n                            <td class=\"w-70\">");
#nullable restore
#line 31 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                                        Write(item.Money);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Boolean</td>\r\n                            <td>");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5832001bdba9c42b6409772ac5a10dbfa1aeb27b8730", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
#nullable restore
#line 35 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => item.Boolean);

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
            WriteLiteral("</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Status</td>\r\n                            <td>");
#nullable restore
#line 39 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                           Write(item.Status);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\" class=\"py-15\">\r\n                                <a class=\"btn btn-xs btn-light\"");
            BeginWriteAttribute("href", " href=\"", 1770, "\"", 1799, 2);
            WriteAttributeValue("", 1777, "/thingsc/edit/", 1777, 14, true);
#nullable restore
#line 43 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
WriteAttributeValue("", 1791, item.Id, 1791, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Edit</a>&nbsp;\r\n                                <a class=\"btn btn-xs btn-light js-delete\" href=\"/thingsc/delete\" data-id=\"");
#nullable restore
#line 44 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                                                                                                     Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"\r\n                                   data-dependencies=\"");
#nullable restore
#line 45 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
                                                 Write(item.TotalThingsA);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">Delete</a>&nbsp; &nbsp;\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n");
#nullable restore
#line 50 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("        </div>\r\n");
#nullable restore
#line 52 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\_Related\_ThingC.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas._Related._ThingsC> Html { get; private set; }
    }
}
#pragma warning restore 1591
