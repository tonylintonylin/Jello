#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "77c2f721cc408133dcd563254034c7786f4feb26"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_People_Detail), @"mvc.1.0.view", @"/Areas/People/Detail.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"77c2f721cc408133dcd563254034c7786f4feb26", @"/Areas/People/Detail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_People_Detail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas.People.Detail>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Person Name", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Employee #", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Last Login", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Things A", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Things B", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Things C", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Things D", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Things E", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Projects Managing", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_9 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "# Issues Managing", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Jello.TagHelpers.OutputFieldTagHelper __Jello_TagHelpers_OutputFieldTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
  
    ViewBag.Title = "Details on " + Model.Name;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"page-box\">\r\n\r\n    <div class=\"d-flex\">\r\n        <div class=\"page-box-icon\">\r\n            <a href=\"/people\"><i");
            BeginWriteAttribute("class", " class=\"", 213, "\"", 238, 1);
#nullable restore
#line 10 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
WriteAttributeValue("", 221, Cache.PeopleIcon, 221, 17, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("></i></a> ");
#nullable restore
#line 10 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
                                                               Write(Model.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </div>\r\n\r\n        <div class=\"ml-auto page-box-new-button-top\">\r\n            <a class=\"btn btn-sm btn-light\"");
            BeginWriteAttribute("href", " href=\"", 378, "\"", 406, 2);
            WriteAttributeValue("", 385, "mailto:", 385, 7, true);
#nullable restore
#line 14 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
WriteAttributeValue("", 392, Model.Email, 392, 14, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Send Email</a>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row p-40 pl-80\">\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb267490", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 22 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Name);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb269043", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 23 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Alias);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2610410", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 24 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Email);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2611778", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 25 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.EmployeeNumber);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2613342", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 26 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Department);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2614715", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 27 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.City);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2616082", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 28 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Country);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2617452", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 29 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Role);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2618819", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 30 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.LastLoginDate);

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
            WriteLiteral("\r\n    </div>\r\n\r\n    <div class=\"col-12 col-sm-6\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2620439", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 34 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalThingsA);

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
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2622001", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 35 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalThingsB);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2623563", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 36 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalThingsC);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_5.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2625125", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 37 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalThingsD);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_6.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2626687", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 38 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalThingsE);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_7.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2628249", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 39 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalProjects);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_8.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_8);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "77c2f721cc408133dcd563254034c7786f4feb2629812", async() => {
            }
            );
            __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
            __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 40 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\People\Detail.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.TotalIssues);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_OutputFieldTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __Jello_TagHelpers_OutputFieldTagHelper.Label = (string)__tagHelperAttribute_9.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_9);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n</div>\r\n\r\n\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    <script>\r\n\r\n        $(function () {\r\n\r\n        });\r\n\r\n    </script>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas.People.Detail> Html { get; private set; }
    }
}
#pragma warning restore 1591
