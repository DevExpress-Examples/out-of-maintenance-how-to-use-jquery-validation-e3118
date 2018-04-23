Imports Microsoft.VisualBasic
Imports System
Imports System.ComponentModel.DataAnnotations

Namespace JQueryValidation.Models
	Public Class ValidationData
		Private privateName As String
		<Required(ErrorMessage := "Name is required"), StringLength(50, ErrorMessage := "Must be under 50 characters")> _
		Public Property Name() As String
			Get
				Return privateName
			End Get
			Set(ByVal value As String)
				privateName = value
			End Set
		End Property

		Private privateAge? As Integer
		<Range(18, 100, ErrorMessage := "Must be between 18 and 100")> _
		Public Property Age() As Integer?
			Get
				Return privateAge
			End Get
			Set(ByVal value? As Integer)
				privateAge = value
			End Set
		End Property

		Private privateEmail As String
		<Required(ErrorMessage := "Email is required"), RegularExpression("\w+([-+.\']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage := "Email is invalid")> _
		Public Property Email() As String
			Get
				Return privateEmail
			End Get
			Set(ByVal value As String)
				privateEmail = value
			End Set
		End Property

		Private privateArrivalDate? As DateTime
		<Required(ErrorMessage := "Arrival date is required")> _
		Public Property ArrivalDate() As DateTime?
			Get
				Return privateArrivalDate
			End Get
			Set(ByVal value? As DateTime)
				privateArrivalDate = value
			End Set
		End Property
	End Class
End Namespace