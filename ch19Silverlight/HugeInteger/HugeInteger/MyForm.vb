' Fig. 19.29: MyForm.vb
' Consuming the HugeInteger web service in Silverlight 1.1 Alpha Refresh
Public Class MyForm
   Inherits System.Windows.Forms.Form

   Public Sub New()
      MyBase.New()
      InitializeComponent()
   End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

   Private components As System.ComponentModel.IContainer

   Private Sub InitializeComponent()
      Me.lblResult = New System.Windows.Forms.Label
      Me.btnEqual = New System.Windows.Forms.Button
      Me.btnSmaller = New System.Windows.Forms.Button
      Me.btnLarger = New System.Windows.Forms.Button
      Me.btnSubtract = New System.Windows.Forms.Button
      Me.btnAdd = New System.Windows.Forms.Button
      Me.txtSecond = New System.Windows.Forms.TextBox
      Me.txtFirst = New System.Windows.Forms.TextBox
      Me.lblPrompt = New System.Windows.Forms.Label
      Me.SuspendLayout()

      ' lblResult
      ' the following four lines were commented out because they 
      ' accessed properties that are not supported in GOA WinForms
      ' Me.lblResult.BorderStyle = System.Windows.Forms.BorderStyle.
         ' FixedSingle()
      ' Me.lblResult.Font = New System.Drawing.Font(
         ' "Microsoft Sans Serif", 9.75!)
      Me.lblResult.Location = New System.Drawing.Point(13, 122)
      Me.lblResult.Name = "lblResult"
      Me.lblResult.Size = New System.Drawing.Size(714, 37)
      Me.lblResult.TabIndex = 17

      ' btnEqual
      Me.btnEqual.Location = New System.Drawing.Point(562, 91)
      Me.btnEqual.Name = "btnEqual"
      Me.btnEqual.Size = New System.Drawing.Size(85, 23)
      Me.btnEqual.TabIndex = 16
      Me.btnEqual.Text = "Equal"

      ' btnSmaller
      Me.btnSmaller.Location = New System.Drawing.Point(445, 91)
      Me.btnSmaller.Name = "btnSmaller"
      Me.btnSmaller.Size = New System.Drawing.Size(85, 23)
      Me.btnSmaller.TabIndex = 15
      Me.btnSmaller.Text = "Smaller Than"

      ' btnLarger
      Me.btnLarger.Location = New System.Drawing.Point(328, 91)
      Me.btnLarger.Name = "btnLarger"
      Me.btnLarger.Size = New System.Drawing.Size(85, 23)
      Me.btnLarger.TabIndex = 14
      Me.btnLarger.Text = "Larger Than"

      ' btnSubtract
      Me.btnSubtract.Location = New System.Drawing.Point(211, 91)
      Me.btnSubtract.Name = "btnSubtract"
      Me.btnSubtract.Size = New System.Drawing.Size(85, 23)
      Me.btnSubtract.TabIndex = 13
      Me.btnSubtract.Text = "Subtract"

      ' btnAdd
      Me.btnAdd.Location = New System.Drawing.Point(94, 91)
      Me.btnAdd.Name = "btnAdd"
      Me.btnAdd.Size = New System.Drawing.Size(85, 23)
      Me.btnAdd.TabIndex = 12
      Me.btnAdd.Text = "Add"

      ' txtSecond
      ' the following two lines were commented out because they
      ' accessed a property that is not supported in GOA WinForms
      ' Me.txtSecond.Font = New System.Drawing.Font(
         ' "Microsoft Sans Serif", 9.75!)
      Me.txtSecond.Location = New System.Drawing.Point(13, 63)
      Me.txtSecond.Name = "txtSecond"
      Me.txtSecond.Size = New System.Drawing.Size(714, 22)
      Me.txtSecond.TabIndex = 11

      ' txtFirst
      ' the following two lines were commented out because they 
      ' accessed a property that is not supported in GOA WinForms
      ' Me.txtFirst.Font = New System.Drawing.Font(
         ' "Microsoft Sans Serif", 9.75!)
      Me.txtFirst.Location = New System.Drawing.Point(13, 35)
      Me.txtFirst.Name = "txtFirst"
      Me.txtFirst.Size = New System.Drawing.Size(714, 22)
      Me.txtFirst.TabIndex = 10

      ' lblPrompt
      ' the following three lines were commented out because they 
      ' accessed properties that are not supported in GOA WinForms
      ' Me.lblPrompt.AutoSize = True
      ' Me.lblPrompt.Font = New System.Drawing.Font(
         ' "Microsoft Sans Serif", 9.75!)
      Me.lblPrompt.Location = New System.Drawing.Point(13, 16)
      Me.lblPrompt.Name = "lblPrompt"
      Me.lblPrompt.Size = New System.Drawing.Size(339, 16)
      Me.lblPrompt.TabIndex = 9
      Me.lblPrompt.Text = "Please enter two positive numbers" & _
         "up to 100 digits each."

      ' UsingHugeIntegerWebService
      ' the following two lines were commented out because they 
      ' accessed properties that are not supported in GOA WinForms
      ' Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
      ' Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
      Me.ClientSize = New System.Drawing.Size(740, 175)
      Me.Controls.Add(Me.lblResult)
      Me.Controls.Add(Me.btnEqual)
      Me.Controls.Add(Me.btnSmaller)
      Me.Controls.Add(Me.btnLarger)
      Me.Controls.Add(Me.btnSubtract)
      Me.Controls.Add(Me.btnAdd)
      Me.Controls.Add(Me.txtSecond)
      Me.Controls.Add(Me.txtFirst)
      Me.Controls.Add(Me.lblPrompt)
      Me.Name = "UsingHugeIntegerWebService"
      Me.Text = "Using Huge Integer Web Service"
      Me.ResumeLayout(False)
      Me.PerformLayout()
   End Sub

   Private WithEvents lblResult As System.Windows.Forms.Label
   Private WithEvents btnEqual As System.Windows.Forms.Button
   Private WithEvents btnSmaller As System.Windows.Forms.Button
   Private WithEvents btnLarger As System.Windows.Forms.Button
   Private WithEvents btnSubtract As System.Windows.Forms.Button
   Private WithEvents btnAdd As System.Windows.Forms.Button
   Private WithEvents txtSecond As System.Windows.Forms.TextBox
   Private WithEvents txtFirst As System.Windows.Forms.TextBox
   Private WithEvents lblPrompt As System.Windows.Forms.Label

   Public Shared Sub Main()
      Application.Run(New MyForm)
   End Sub

   ' declare a reference to Web service
   Private remoteInteger As New com.deitel.test.HugeInteger

   ' character to trim from strings
   Private zeros As Char() = New Char() {"0"c}

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
         Catch exception As Exception
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
   End Function ' NumbersTooBig

End Class