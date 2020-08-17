' Fig. 26.21: Validation.aspx.vb
' Code-behind file for the form demonstrating validation controls.
Partial Class Validation
   Inherits System.Web.UI.Page

   ' Page_Load event handler executes when the page is loaded
   Protected Sub Page_Load(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Load
      ' if this is not the first time the page is loading
      ' (i.e., the user has already submitted form data)
      If IsPostBack Then
         ' retrieve the values submitted by the user
         Dim name As String = Request.Form("nameTextBox")
         Dim email As String = Request.Form("emailTextBox")
         Dim phone As String = Request.Form("phoneTextBox")

         ' create a table indicating the submitted values
         outputLabel.Text &= _
            "<br />We received the following information:" & _
            "<table style=""background-color: yellow"">" & _
            "<tr><td>Name: </td><td>" & name & "</td></tr>" & _
            "<tr><td>E-mail address: </td><td>" & email & "</td></tr>" & _
            "<tr><td>Phone number: </td><td>" & phone & "</td></tr>" & _
            "<table>"
         outputLabel.Visible = True ' display the output message
      End If
   End Sub ' Page_Load
End Class ' Validation


'**************************************************************************
'* (C) Copyright 1992-2006 by Deitel & Associates, Inc. and               *
'* Pearson Education, Inc. All Rights Reserved.                           *
'*                                                                        *
'* DISCLAIMER: The authors and publisher of this book have used their     *
'* best efforts in preparing the book. These efforts include the          *
'* development, research, and testing of the theories and programs        *
'* to determine their effectiveness. The authors and publisher make       *
'* no warranty of any kind, expressed or implied, with regard to these    *
'* programs or to the documentation contained in these books. The authors *
'* and publisher shall not be liable in any event for incidental or       *
'* consequential damages in connection with, or arising out of, the       *
'* furnishing, performance, or use of these programs.                     *
'**************************************************************************

