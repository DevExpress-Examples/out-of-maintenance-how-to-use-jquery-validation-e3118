<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<JQueryValidation.Models.ValidationData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
$().ready(function() {
    $("#validateForm").validate({
        rules: {            
            Name: {
                required: true,
                maxlength: 50
            },
            Age: {
                range: [18, 100]
            }, 
            Email: {
                required: true,
                email: true
            },
            ArrivalDate: {
                required: true
            }
        },
        messages: {
            Name: {
                required: "Name is required"
            },
            Email: {
                required: "Email is required"
            },
            ArrivalDate: {
                required: "ArrivalDate is required"
            }
        }
    });
});
</script>
<h2>JQueryValidation</h2>

<% Html.BeginForm("JQueryValidation", "Home", FormMethod.Post, new { id = "validateForm", @class="edit_form" }); %>
    <div class="line">
        <% 
            Html.DevExpress().Label(
                settings => {
                    settings.ControlStyle.CssClass = "label";
                    settings.Text = "Name:";
                    settings.AssociatedControlName = "Name";
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().TextBox(
                settings => {
                    settings.Name = "Name";
                    settings.ControlStyle.CssClass = "editor";
                    settings.ShowModelErrors = true;
                    settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
                    
                }
            )
            .Bind(Model.Name)
            .Render();
        %>
    </div>
    <div class="line">
        <% 
            Html.DevExpress().Label(
                settings => {
                    settings.ControlStyle.CssClass = "label";
                    settings.Text = "Age:";
                    settings.AssociatedControlName = "Age";
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().TextBox(
                settings => {
                    settings.Name = "Age";
                    settings.ControlStyle.CssClass = "editor";
                    settings.ShowModelErrors = true;
                    settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
                }
            )
            .Bind(Model.Age)
            .Render();
        %>
    </div>
    <div class="line">
        <% 
            Html.DevExpress().Label(
                settings => {
                    settings.ControlStyle.CssClass = "label";
                    settings.Text = "Email:";
                    settings.AssociatedControlName = "Email";
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().TextBox(
                settings => {
                    settings.Name = "Email";
                    settings.ControlStyle.CssClass = "editor";
                    settings.ShowModelErrors = true;
                    settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
                }
            )
            .Bind(Model.Email)
            .Render();
        %>
    </div>
    <div class="line">
        <% 
            Html.DevExpress().Label(
                settings => {
                    settings.ControlStyle.CssClass = "label";
                    settings.Text = "Arrival Date:";
                    settings.AssociatedControlName = "ArrivalDate";
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().DateEdit(
                settings => {
                    settings.Name = "ArrivalDate";
                    settings.ControlStyle.CssClass = "editor";
                    settings.ShowModelErrors = true;
                    settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
                }
            )
            .Bind(Model.ArrivalDate)
            .Render();
        %>
    </div>
    <div class="line">
        <% 
            Html.DevExpress().Label(
                settings => {
                    settings.ControlStyle.CssClass = "label";
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().Button(
                settings => {
                    settings.Name = "btnUpdate";
                    settings.ControlStyle.CssClass = "button";
                    settings.Text = "Update";
                    settings.UseSubmitBehavior = true;
                }
            )
            .Render();
        %>
        <% 
            Html.DevExpress().Button(
                settings => {
                    settings.Name = "btnClear";
                    settings.ControlStyle.CssClass = "button";
                    settings.Text = "Clear";
                    settings.ClientSideEvents.Click = "function(s, e){ ASPxClientEdit.ClearEditorsInContainer(); }";
                }
            )
            .Render();
        %>
    </div>
<% Html.EndForm(); %>
</asp:Content>
