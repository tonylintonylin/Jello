#pragma checksum "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "231babe07156f0246a51c4e2373725400ba68832"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Issues_Edit), @"mvc.1.0.view", @"/Areas/Issues/Edit.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"231babe07156f0246a51c4e2373725400ba68832", @"/Areas/Issues/Edit.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c87250e95e38a2e9e4517aac9892d5d8fd855244", @"/Areas/_ViewImports.cshtml")]
    public class Areas_Issues_Edit : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Jello.Areas.Issues.Edit>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "hidden", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Issue Title", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Assigner", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("placeholder", "Search People..", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Assign to", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("label", "Project Name", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("placeholder", "Search Projects..", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Jello.InputTextBoxTagHelper __Jello_InputTextBoxTagHelper;
        private global::Jello.TagHelpers.InputTextAreaTagHelper __Jello_TagHelpers_InputTextAreaTagHelper;
        private global::Jello.TagHelpers.OutputFieldTagHelper __Jello_TagHelpers_OutputFieldTagHelper;
        private global::Jello.InputSearchTagHelper __Jello_InputSearchTagHelper;
        private global::Jello.TagHelpers.InputDropDownTagHelper __Jello_TagHelpers_InputDropDownTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
  
    var title = Model.Id == 0 ? "New Thing D" : "Edit: " + Model.Title;
    ViewBag.Title = title;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba688326278", async() => {
                WriteLiteral("\r\n\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "231babe07156f0246a51c4e2373725400ba688326544", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 9 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Id);

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
                WriteLiteral("\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "231babe07156f0246a51c4e2373725400ba688328224", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 10 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Referer);

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
                WriteLiteral("\r\n\r\n    <div class=\"page-box\">\r\n        <div class=\"page-box-icon\"><a href=\"/issues\"><i");
                BeginWriteAttribute("class", " class=\"", 363, "\"", 388, 1);
#nullable restore
#line 13 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
WriteAttributeValue("", 371, Cache.ThingDIcon, 371, 17, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral("></i></a> Issue</div>\r\n        <div class=\"page-box-name\">");
#nullable restore
#line 14 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                              Write(title);

#line default
#line hidden
#nullable disable
                WriteLiteral("</div>\r\n    </div>\r\n\r\n    <div class=\"edit-pane\">\r\n        <div class=\"row edit-pane-row \">\r\n\r\n            <div class=\"col-12 col-md-6\">\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputTextBox", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883210816", async() => {
                }
                );
                __Jello_InputTextBoxTagHelper = CreateTagHelper<global::Jello.InputTextBoxTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_InputTextBoxTagHelper);
#nullable restore
#line 21 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_InputTextBoxTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Title);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_InputTextBoxTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __Jello_InputTextBoxTagHelper.Label = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputTextArea", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883212382", async() => {
                }
                );
                __Jello_TagHelpers_InputTextAreaTagHelper = CreateTagHelper<global::Jello.TagHelpers.InputTextAreaTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_TagHelpers_InputTextAreaTagHelper);
#nullable restore
#line 22 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputTextAreaTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Description);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_InputTextAreaTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n            </div>\r\n\r\n            <div class=\"col-12 col-md-6\">\r\n");
#nullable restore
#line 26 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                 if (Model.Id == 0)
                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("outputField", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883214139", async() => {
                }
                );
                __Jello_TagHelpers_OutputFieldTagHelper = CreateTagHelper<global::Jello.TagHelpers.OutputFieldTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_TagHelpers_OutputFieldTagHelper);
#nullable restore
#line 28 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_OutputFieldTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.OwnerName);

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
                WriteLiteral("\r\n                    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "231babe07156f0246a51c4e2373725400ba6883215772", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 29 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.OwnerId);

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
                WriteLiteral("\r\n");
#nullable restore
#line 30 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputSearch", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883217711", async() => {
                }
                );
                __Jello_InputSearchTagHelper = CreateTagHelper<global::Jello.InputSearchTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_InputSearchTagHelper);
#nullable restore
#line 33 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_InputSearchTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.OwnerId);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_InputSearchTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __Jello_InputSearchTagHelper.Label = (string)__tagHelperAttribute_2.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
                __Jello_InputSearchTagHelper.Placeholder = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n");
#nullable restore
#line 34 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                }

#line default
#line hidden
#nullable disable
                WriteLiteral("                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputSearch", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883219657", async() => {
                }
                );
                __Jello_InputSearchTagHelper = CreateTagHelper<global::Jello.InputSearchTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_InputSearchTagHelper);
#nullable restore
#line 35 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_InputSearchTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.AssigneeId);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_InputSearchTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __Jello_InputSearchTagHelper.Label = (string)__tagHelperAttribute_4.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
                __Jello_InputSearchTagHelper.Placeholder = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputSearch", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883221411", async() => {
                }
                );
                __Jello_InputSearchTagHelper = CreateTagHelper<global::Jello.InputSearchTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_InputSearchTagHelper);
#nullable restore
#line 36 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_InputSearchTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.ProjectId);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_InputSearchTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __Jello_InputSearchTagHelper.Label = (string)__tagHelperAttribute_5.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
                __Jello_InputSearchTagHelper.Placeholder = (string)__tagHelperAttribute_6.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputDropDown", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883223164", async() => {
                }
                );
                __Jello_TagHelpers_InputDropDownTagHelper = CreateTagHelper<global::Jello.TagHelpers.InputDropDownTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_TagHelpers_InputDropDownTagHelper);
#nullable restore
#line 37 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Type);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_InputDropDownTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 37 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Items = Lookup.IssueTypes;

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("items", __Jello_TagHelpers_InputDropDownTagHelper.Items, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputDropDown", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883225026", async() => {
                }
                );
                __Jello_TagHelpers_InputDropDownTagHelper = CreateTagHelper<global::Jello.TagHelpers.InputDropDownTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_TagHelpers_InputDropDownTagHelper);
#nullable restore
#line 38 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Priority);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_InputDropDownTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 38 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Items = Lookup.IssuePriorities;

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("items", __Jello_TagHelpers_InputDropDownTagHelper.Items, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("inputDropDown", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "231babe07156f0246a51c4e2373725400ba6883226897", async() => {
                }
                );
                __Jello_TagHelpers_InputDropDownTagHelper = CreateTagHelper<global::Jello.TagHelpers.InputDropDownTagHelper>();
                __tagHelperExecutionContext.Add(__Jello_TagHelpers_InputDropDownTagHelper);
#nullable restore
#line 39 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Value = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Status);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("value", __Jello_TagHelpers_InputDropDownTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 39 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
__Jello_TagHelpers_InputDropDownTagHelper.Items = Lookup.IssueStatuses;

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("items", __Jello_TagHelpers_InputDropDownTagHelper.Items, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"button-bar\">\r\n        <input type=\"submit\" class=\"btn btn-sm btn-light\" value=\' Save \' />&nbsp;&nbsp;\r\n        <a class=\"btn btn-sm btn-light\"");
                BeginWriteAttribute("href", " href=\"", 1919, "\"", 1940, 1);
#nullable restore
#line 47 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
WriteAttributeValue("", 1926, Model.Referer, 1926, 14, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">Cancel</a>\r\n    </div>\r\n\r\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_7.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
#nullable restore
#line 7 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
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
            WriteLiteral("\r\n\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    <script>\r\n\r\n        $(function () {\r\n\r\n            Dofactory.Utils.Typeahead.init(\"ProjectId\", ");
#nullable restore
#line 63 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                                                   Write(Html.Raw(Typeahead.Projects));

#line default
#line hidden
#nullable disable
                WriteLiteral(");\r\n            Dofactory.Utils.Typeahead.init(\"OwnerId\", ");
#nullable restore
#line 64 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                                                 Write(Html.Raw(Typeahead.Owners));

#line default
#line hidden
#nullable disable
                WriteLiteral(");\r\n            Dofactory.Utils.Typeahead.init(\"AssigneeId\", ");
#nullable restore
#line 65 "C:\Users\tonyl\Desktop\Jello\Jello\Areas\Issues\Edit.cshtml"
                                                    Write(Html.Raw(Typeahead.Owners));

#line default
#line hidden
#nullable disable
                WriteLiteral(");\r\n\r\n        });\r\n\r\n    </script>\r\n");
            }
            );
            WriteLiteral("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Jello.Areas.Issues.Edit> Html { get; private set; }
    }
}
#pragma warning restore 1591
