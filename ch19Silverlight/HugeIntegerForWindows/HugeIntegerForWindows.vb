' Fig. 22.17: HugeIntegerForWindows.vb
' Using the HugeInteger Web Service.
Imports System.Web.Services.Protocols

Public Class HugeIntegerForWindows
   ' declare a reference to Web service
   Private remoteInteger As com.deitel.test.HugeInteger

   ' character to trim from strings
   Private zeros As Char() = New Char() {"0"c}

   ' instantiates object to interact with Web service
   Private Sub HugeIntegerForWindows_Load(ByVal sender As Object, _
      ByVal e As System.EventArgs) Handles Me.Load
      ' instantiate remoteInteger
      remoteInteger = New com.deitel.test.HugeInteger()
   End Sub ' HugeIntegerForWindows_Load

   ' adds two numbers input by user
   Private Sub btnAdd_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnAdd.Click
      ' make sure numbers do not exceed 100 digits and that both
      ' are not 100 digits long, which would result in overflow
      If txtFirst.Text.Length > 100 Or txtSecond.Text.Length > 100 _
         Or (txtFirst.Text.Length = 100 And _
            txtSecond.Text.Length = 100) Then
         MessageBox.Show( _
            "HugeIntegers must not be more than 100 digits" & _
            vbCrLf & "Both integers cannot be of length 100: " & _
            " this causes an overflow", "Error", _
            MessageBoxButtons.OK, MessageBoxIcon.Information)
      Else
         ' perform addition
         lblResult.Text = remoteInteger.Add( _
            txtFirst.Text, txtSecond.Text).TrimStart(zeros)
      End If
   End Sub ' btnAdd_Click

   ' subtracts two numbers input by user
   Private Sub btnSubtract_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnSubtract.Click
      ' ensure that HugeIntegers do not exceed 100 digits
      If Not NumbersTooBig(txtFirst.Text, txtSecond.Text) Then
         ' perform subtraction
         Try
            Dim result As String = remoteInteger.Subtract( _
               txtFirst.Text, txtSecond.Text).TrimStart(zeros)

            If result = "" Then
               lblResult.Text = "0"
            Else
               lblResult.Text = result
            End If
         Catch exception As SoapException
            ' if WebMethod throws an exception,
            ' then first argument was smaller than second
            MessageBox.Show( _
               "First argument was smaller than the second")
         End Try
      End If
   End Sub ' btnSubtract_Click

   ' determines whether first number input is larger than the second
   Private Sub btnLarger_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnLarger.Click
      ' ensure that HugeIntegers do not exceed 100 digits
      If Not NumbersTooBig(txtFirst.Text, txtSecond.Text) Then
         ' call Web-service method to determine whether
         ' first integer is larger than the second
         If remoteInteger.Bigger(txtFirst.Text, txtSecond.Text) Then
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is larger than " & txtSecond.Text.TrimStart(zeros)
         Else
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is not larger than " + txtSecond.Text.TrimStart(zeros)
         End If
      End If
   End Sub ' btnLarger_Click

   ' determines whether first number input is smaller than the second
   Private Sub btnSmaller_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnSmaller.Click
      ' make sure HugeIntegers do not exceed 100 digits
      If Not NumbersTooBig(txtFirst.Text, txtSecond.Text) Then
         ' call Web-service method to determine if
         ' first integer is smaller than second
         If remoteInteger.Smaller(txtFirst.Text, txtSecond.Text) Then
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is smaller than " + txtSecond.Text.TrimStart(zeros)
         Else
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is not smaller than " & txtSecond.Text.TrimStart(zeros)
         End If
      End If
   End Sub ' btnSmaller_Click

   ' determines whether the two numbers input are equal
   Private Sub btnEqual_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnEqual.Click
      ' ensure that HugeIntegers do not exceed 100 digits
      If Not NumbersTooBig(txtFirst.Text, txtSecond.Text) Then
         ' call Web-service method to determine if integers are equal
         If remoteInteger.EqualTo(txtFirst.Text, txtSecond.Text) Then
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is equal to " & txtSecond.Text.TrimStart(zeros)
         Else
            lblResult.Text = txtFirst.Text.TrimStart(zeros) & _
               " is not equal to " & txtSecond.Text.TrimStart(zeros)
         End If
      End If
   End Sub ' btnEqual_Click

   ' determines whether numbers input by user are too big
   Private Function NumbersTooBig(ByVal first As String, _
      ByVal second As String) As Boolean
      ' display an error message if either number has too many digits
      If (first.Length > 100) Or (second.Length > 100) Then
         MessageBox.Show("HugeIntegers must be less than 100 digits", _
            "Error", MessageBoxButtons.OK, MessageBoxIcon.Information)
         Return True
      End If

      Return False
   End Function ' SizeCheck
End Class ' HugeIntegerForWindows

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
