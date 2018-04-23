<%@ Page Language="vb" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<JQueryValidation.Models.ValidationData>" %>

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

<%
   Html.EnableClientValidation()
%>
<%
   Html.BeginForm("JQueryValidation", "Home", FormMethod.Post, New With {Key .id = "validateForm", Key .class="edit_form"})
%>
	<div class="line">
		<% 
			Html.DevExpress().Label(Function(settings) AnonymousMethod1(settings)).Render()
		%>
		<% 
			Html.DevExpress().TextBox(Function(settings) AnonymousMethod2(settings)).Bind(Model.Name).Render()
		%>
	</div>
	<div class="line">
		<% 
			Html.DevExpress().Label(Function(settings) AnonymousMethod3(settings)).Render()
		%>
		<% 
			Html.DevExpress().TextBox(Function(settings) AnonymousMethod4(settings)).Bind(Model.Age).Render()
		%>
	</div>
	<div class="line">
		<% 
			Html.DevExpress().Label(Function(settings) AnonymousMethod5(settings)).Render()
		%>
		<% 
			Html.DevExpress().TextBox(Function(settings) AnonymousMethod6(settings)).Bind(Model.Email).Render()
		%>
	</div>
	<div class="line">
		<% 
			Html.DevExpress().Label(Function(settings) AnonymousMethod7(settings)).Render()
		%>
		<% 
			Html.DevExpress().DateEdit(Function(settings) AnonymousMethod8(settings)).Bind(Model.ArrivalDate).Render()
		%>
	</div>
	<div class="line">
		<% 
			Html.DevExpress().Label(Function(settings) AnonymousMethod9(settings)).Render()
		%>
		<% 
			Html.DevExpress().Button(Function(settings) AnonymousMethod10(settings)).Render()
		%>
		<% 
			Html.DevExpress().Button(Function(settings) AnonymousMethod11(settings)).Render()
		%>
	</div>
<%
   Html.EndForm()
%>
</asp:Content>


private bool AnonymousMethod1(object settings)
{
	settings.ControlStyle.CssClass = "label";
	settings.Text = "Name:";
	settings.AssociatedControlName = "Name";
	Return True;
}

private bool AnonymousMethod2(object settings)
{
	settings.Name = "Name";
	settings.ControlStyle.CssClass = "editor";
	settings.ShowModelErrors = True;
	settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
	Return True;
}

private bool AnonymousMethod3(object settings)
{
	settings.ControlStyle.CssClass = "label";
	settings.Text = "Age:";
	settings.AssociatedControlName = "Age";
	Return True;
}

private bool AnonymousMethod4(object settings)
{
	settings.Name = "Age";
	settings.ControlStyle.CssClass = "editor";
	settings.ShowModelErrors = True;
	settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
	Return True;
}

private bool AnonymousMethod5(object settings)
{
	settings.ControlStyle.CssClass = "label";
	settings.Text = "Email:";
	settings.AssociatedControlName = "Email";
	Return True;
}

private bool AnonymousMethod6(object settings)
{
	settings.Name = "Email";
	settings.ControlStyle.CssClass = "editor";
	settings.ShowModelErrors = True;
	settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
	Return True;
}

private bool AnonymousMethod7(object settings)
{
	settings.ControlStyle.CssClass = "label";
	settings.Text = "Arrival Date:";
	settings.AssociatedControlName = "ArrivalDate";
	Return True;
}

private bool AnonymousMethod8(object settings)
{
	settings.Name = "ArrivalDate";
	settings.ControlStyle.CssClass = "editor";
	settings.ShowModelErrors = True;
	settings.Properties.ValidationSettings.ErrorDisplayMode = ErrorDisplayMode.ImageWithText;
	Return True;
}

private bool AnonymousMethod9(object settings)
{
	settings.ControlStyle.CssClass = "label";
	Return True;
}

private bool AnonymousMethod10(object settings)
{
	settings.Name = "btnUpdate";
	settings.ControlStyle.CssClass = "button";
	settings.Text = "Update";
	settings.UseSubmitBehavior = True;
	Return True;
}

private bool AnonymousMethod11(object settings)
{
	settings.Name = "btnClear";
	settings.ControlStyle.CssClass = "button";
	settings.Text = "Clear";
	settings.ClientSideEvents.Click = "function(s, e){ ASPxClientEdit.ClearEditorsInContainer(); }";
	Return True;
}