' Fig. 25.23: Recommendations.aspx.vb
' Creates book recommendations based on cookies.
Partial Class Recommendations
   Inherits System.Web.UI.Page

   ' read cookies and populate ListBox with any book recommendations
   Protected Sub Page_Init(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Init
      ' retrieve client's cookies
      Dim cookies As HttpCookieCollection = Request.Cookies

      ' if there are cookies, list the appropriate books and ISBN numbers
      If cookies.Count <> 0 Then
         For i As Integer = 0 To cookies.Count - 1
            booksListBox.Items.Add(cookies(i).Name & _
               " How to Program. ISBN#: " & cookies(i).Value)
         Next
      Else
         ' if there are no cookies, then no language was chosen, so 
         ' display appropriate message and clear and hide booksListBox
         recommendationsLabel.Text = "No Recommendations"
         booksListBox.Items.Clear()
         booksListBox.Visible = False

         ' modify languageLink because no language was selected
         languageLink.Text = "Click here to choose a language"
      End If
   End Sub ' Page_Init
End Class ' Recommendations

'**************************************************************************
'* (C) Copyright 1992-2008 by Deitel & Associates, Inc. and               *
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

