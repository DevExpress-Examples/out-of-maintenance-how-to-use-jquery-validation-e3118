Imports Microsoft.VisualBasic
Imports System
Imports System.Web
Imports System.Web.Mvc
Imports JQueryValidation.Models
Imports DevExpress.Web.Mvc

Namespace JQueryValidation.Controllers
	Public Class HomeController
		Inherits Controller
		Public Function Index() As ActionResult
			Return JQueryValidation()
		End Function
		<AcceptVerbs(HttpVerbs.Get)> _
		Public Function JQueryValidation() As ActionResult
			Return View("JQueryValidation", New ValidationData())
		End Function
		<AcceptVerbs(HttpVerbs.Post)> _
		Public Function JQueryValidation(<ModelBinder(GetType(DevExpressEditorsBinder))> ByVal validationData As ValidationData) As ActionResult
			If ModelState.IsValid Then
				Return View("JQueryValidationSuccess")
			End If
			Return View("JQueryValidation", validationData)
		End Function
		Public Function JQueryValidationSuccess() As ActionResult
			Return View("JQueryValidationSuccess")
		End Function
	End Class
End Namespace
