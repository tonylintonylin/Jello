@model Jello.Areas.ThingsD.Edit
@{
    var name = Model.Id == 0 ? "New Thing D" : "Edit: " + Model.Name;
    ViewBag.Title = name;
}

<form method="post" asp-antiforgery="true">

    <input type="hidden" asp-for="Id" />
    <input type="hidden" asp-for="Referer" />

    <div class="page-box">
        <div class="page-box-icon"><a href="/thingsd"><i class="@Cache.ThingDIcon"></i></a> Thing D</div>
        <div class="page-box-name">@name</div>
    </div>

    <div class="edit-pane">
        <div class="row edit-pane-row ">

            <div class="col-12 col-md-6">
                @if (Model.Id == 0)
                {
                    <outputField value="OwnerName" label="Owner"></outputField>
                    <input type="hidden" asp-for="OwnerId" />
                }
                else
                {
                    <inputSearch value="OwnerId" label="Owner" placeholder="Search People.."></inputSearch>
                }

                <inputTextBox value="Name" label="Thing D Name"></inputTextBox>
                <inputTextBox value="Text"></inputTextBox>
                <inputTextArea value="LongText"></inputTextArea>
                <inputCheckBox value="Boolean"></inputCheckBox>
            </div>

            <div class="col-12 col-md-6">
                <inputDateBox value="DateTime" label="Date"></inputDateBox>
                <inputTextBox value="Money" label="Money $"></inputTextBox>
                <inputTextBox value="Integer"></inputTextBox>
                <inputDropDown value="Lookup" items="@Lookup.ThingDLookups"></inputDropDown>
                <inputDropDown value="Status" items="@Lookup.ThingDStatuses"></inputDropDown>
            </div>

        </div>
    </div>

    <div class="button-bar">
        <input type="submit" class="btn btn-sm btn-light" value=' Save ' />&nbsp;&nbsp;
        <a class="btn btn-sm btn-light" href="@Model.Referer">Cancel</a>
    </div>

</form>

<br />
<br />
<br />
<br />

@section Scripts
    {
    <script>

        $(function () {

            Dofactory.Utils.Typeahead.init("OwnerId", @Html.Raw(Typeahead.Owners));

        });

    </script>
}










