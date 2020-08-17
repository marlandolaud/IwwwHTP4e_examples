' Fig. 25.21: Options.aspx.vb
' Processes user's selection of a programming language
' by displaying links and writing a cookie to the user's machine.
Partial Class Options
   Inherits System.Web.UI.Page
   ' stores values to represent books as cookies
   Private books As New System.Collections.Hashtable()

   ' initializes the Hashtable of values to be stored as cookies 
   Protected Sub Page_Init(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Init
      books.Add("Visual Basic 2005", "0-13-186900-0")
      books.Add("Visual C# 2005", "0-13-152523-9")
      books.Add("C", "0-13-142644-3")
      books.Add("C++", "0-13-185757-6")
      books.Add("Java", "0-13-148398-6")
   End Sub ' Page_Init

   ' if postback, hide form and display links to make additional
   ' selections or view recommendations
   Protected Sub Page_Load(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Load

      If IsPostBack Then
         ' user has submitted information, so display message
         ' and appropriate hyperlinks
         responseLabel.Visible = True
         languageLink.Visible = True
         recommendationsLink.Visible = True

         ' hide other controls used to make language selection
         promptLabel.Visible = False
         languageList.Visible = False
         submitButton.Visible = False

         ' if the user made a selection, display it in responseLabel
         If languageList.SelectedItem IsNot Nothing Then
            responseLabel.Text &= " You selected " & _
               languageList.SelectedItem.Text.ToString()
         Else
            responseLabel.Text &= " You did not select a language."
         End If
      End If
   End Sub ' Page_Load

   ' write a cookie to record the user's selection 
   Protected Sub submitButton_Click(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles submitButton.Click
      ' if the user made a selection
      If languageList.SelectedItem IsNot Nothing Then
         Dim language As String = languageList.SelectedItem.ToString()

         ' get ISBN number of book for the given language
         Dim ISBN As String = books(language).ToString()

         ' create cookie using language-ISBN name-value pair
         Dim cookie As New HttpCookie(language, ISBN)

         ' add cookie to response to place it on the user's machine
         Response.Cookies.Add(cookie)
      End If
   End Sub ' submitButton_Click
End Class ' Options


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

