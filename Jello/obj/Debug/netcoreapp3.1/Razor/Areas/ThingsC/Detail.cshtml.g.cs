#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c40c9c02d288611c77ecee4abb5f9ba0a796a0f8"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_ThingsC_Detail), @"mvc.1.0.view", @"/Areas/ThingsC/Detail.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c40c9c02d288611c77ecee4abb5f9ba0a796a0f8", @"/Areas/ThingsC/Detail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_ThingsC_Detail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas.ThingsC.Detail>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "Owner", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Thing C Owner", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Date Time", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Money", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "_ThingA", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Jello.TagHelpers.OutputLinkTagHelper __Jello_TagHelpers_OutputLinkTagHelper;
        private global::Jello.TagHelpers.OutputFieldTagHelper __Jello_TagHelpers_OutputFieldTagHelper;
        private global::Jello.TagHelpers.OutputCheckBoxTagHelper __Jello_TagHelpers_OutputCheckBoxTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
   
    ViewBag.Title = "Thing C Detail";
    string thingsa = $"<span class='tab-badge'>{Model.TotalThingsA}</span>";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"page-box d-flex\">\r\n\r\n    <div>\r\n        <div class=\"page-box-icon\"><a href=\"/thingsc\"><i");
            BeginWriteAttribute("class", " class=\"", 262, "\"", 287, 1);
#nullable restore
#line 10 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue("", 270, Cache.ThingCIcon, 270, 17, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("></i></a> Thing C</div>\r\n        <div class=\"page-box-name\">");
#nullable restore
#line 11 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                              Write(Model.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n    </div>\r\n\r\n    <div class=\"d-flex\">\r\n        <div class=\"page-box-data-first\">Text<br />");
#nullable restore
#line 15 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                              Write(Model.Text);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n        <div class=\"page-box-data\">Status<br />");
#nullable restore
#line 16 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                          Write(Model.Status);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n        <div class=\"page-box-data\">Lookup<br />");
#nullable restore
#line 17 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                          Write(Model.Lookup);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n        <div class=\"page-box-data-last\">Integer<br />");
#nullable restore
#line 18 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                                Write(Model.Integer);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n    </div>\r\n    <div class=\"ml-auto\">\r\n        <div class=\"page-box-buttons\">\r\n            <a class=\"btn btn-sm btn-light js-edit\"");
            BeginWriteAttribute("href", " href=\"", 818, "\"", 848, 2);
            WriteAttributeValue("", 825, "/thingsc/edit/", 825, 14, true);
#nullable restore
#line 22 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue("", 839, Model.Id, 839, 9, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Edit</a>\r\n            <a class=\"btn btn-sm btn-light js-delete\" href=\"/thingsc/delete\" data-return-url=\"/thingsc\" data-id=\"");
#nullable restore
#line 23 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                                                                                            Write(Model.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" \r\n               data-dependencies=\"");
#nullable restore
#line 24 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                             Write(Model.TotalThingsA);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">Delete</a>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"tabs\">\r\n    <ul class=\"nav nav-tabs nav-tabs-related\">\r\n        <li class=\'nav-item\'><a");
            BeginWriteAttribute("class", " class=\'", 1190, "\'", 1248, 2);
            WriteAttributeValue("", 1198, "nav-link", 1198, 8, true);
#nullable restore
#line 31 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue(" ", 1206, Model.Tab == "details" ? "active" : "", 1207, 41, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" data-toggle=\"tab\" href=\"#details\">Details</a></li>\r\n        <li class=\'nav-item\'><a");
            BeginWriteAttribute("class", " class=\'", 1333, "\'", 1391, 2);
            WriteAttributeValue("", 1341, "nav-link", 1341, 8, true);
#nullable restore
#line 32 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue(" ", 1349, Model.Tab == "thingsa" ? "active" : "", 1350, 41, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" data-toggle=\"tab\" href=\"#thingsa\">Things A");
#nullable restore
#line 32 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
                                                                                                                                 Write(Html.Raw(thingsa));

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n    </ul>\r\n</div>\r\n\r\n<div class=\"tab-content\">\r\n\r\n    <div");
            BeginWriteAttribute("class", " class=\'", 1524, "\'", 1582, 2);
            WriteAttributeValue("", 1532, "tab-pane", 1532, 8, true);
#nullable restore
#line 38 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue(" ", 1540, Model.Tab == "details" ? "active" : "", 1541, 41, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" id=\"details\">\r\n        <div class=\"tab-pane-row row\">\r\n\r\n            <div class=\"col-12 col-md-6\">\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputLink", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f810421", async() => {
            }
            );
            __Jello_TagHelpers_OutputLinkTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputLinkTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputLinkTagHelper);
#nullable restore
#line 42 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputLinkTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.OwnerId);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputLinkTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 42 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputLinkTagHelper.Name = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.OwnerName);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("name", __Jello_TagHelpers_OutputLinkTagHelper.Name, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputLinkTagHelper.Type = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Jello_TagHelpers_OutputLinkTagHelper.Label = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f812644", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 43 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Name);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputCheckBox", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f814020", async() => {
            }
            );
            __Jello_TagHelpers_OutputCheckBoxTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputCheckBoxTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputCheckBoxTagHelper);
#nullable restore
#line 44 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputCheckBoxTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Boolean);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputCheckBoxTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f815417", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 45 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Lookup);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f816795", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 46 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Status);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n            </div>\r\n\r\n            <div class=\"col-12 col-md-6\">\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f818250", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 51 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.DateTime);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f819817", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 52 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Text);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f821193", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 53 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.LongText);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f822573", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 54 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Money);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f824137", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 55 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Integer);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div");
            BeginWriteAttribute("class", " class=\"", 2501, "\"", 2559, 2);
            WriteAttributeValue("", 2509, "tab-pane", 2509, 8, true);
#nullable restore
#line 61 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
WriteAttributeValue(" ", 2517, Model.Tab == "thingsa" ? "active" : "", 2518, 41, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" id=\"thingsa\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "c40c9c02d288611c77ecee4abb5f9ba0a796a0f826045", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
#nullable restore
#line 62 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\ThingsC\Detail.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model = Model.ThingsA;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("model", __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n</div>\r\n\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    <script>\r\n        $(function () {\r\n\r\n        });\r\n    </script>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas.ThingsC.Detail> Html { get; private set; }
    }
}
#pragma warning restore 1591
