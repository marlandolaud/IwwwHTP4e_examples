<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class HugeIntegerForWindows
   Inherits System.Windows.Forms.Form

   Protected Overrides Sub Dispose(ByVal disposing As Boolean)
      If disposing AndAlso components IsNot Nothing Then
         components.Dispose()
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

      'lblResult
      Me.lblResult.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
      Me.lblResult.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!)
      Me.lblResult.Location = New System.Drawing.Point(13, 122)
      Me.lblResult.Name = "lblResult"
      Me.lblResult.Size = New System.Drawing.Size(714, 37)
      Me.lblResult.TabIndex = 17

      'btnEqual
      Me.btnEqual.Location = New System.Drawing.Point(562, 91)
      Me.btnEqual.Name = "btnEqual"
      Me.btnEqual.Size = New System.Drawing.Size(85, 23)
      Me.btnEqual.TabIndex = 16
      Me.btnEqual.Text = "Equal"

      'btnSmaller
      Me.btnSmaller.Location = New System.Drawing.Point(445, 91)
      Me.btnSmaller.Name = "btnSmaller"
      Me.btnSmaller.Size = New System.Drawing.Size(85, 23)
      Me.btnSmaller.TabIndex = 15
      Me.btnSmaller.Text = "Smaller Than"

      'btnLarger
      Me.btnLarger.Location = New System.Drawing.Point(328, 91)
      Me.btnLarger.Name = "btnLarger"
      Me.btnLarger.Size = New System.Drawing.Size(85, 23)
      Me.btnLarger.TabIndex = 14
      Me.btnLarger.Text = "Larger Than"

      'btnSubtract
      Me.btnSubtract.Location = New System.Drawing.Point(211, 91)
      Me.btnSubtract.Name = "btnSubtract"
      Me.btnSubtract.Size = New System.Drawing.Size(85, 23)
      Me.btnSubtract.TabIndex = 13
      Me.btnSubtract.Text = "Subtract"

      'btnAdd
      Me.btnAdd.Location = New System.Drawing.Point(94, 91)
      Me.btnAdd.Name = "btnAdd"
      Me.btnAdd.Size = New System.Drawing.Size(85, 23)
      Me.btnAdd.TabIndex = 12
      Me.btnAdd.Text = "Add"

      'txtSecond
      Me.txtSecond.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!)
      Me.txtSecond.Location = New System.Drawing.Point(13, 63)
      Me.txtSecond.Name = "txtSecond"
      Me.txtSecond.Size = New System.Drawing.Size(714, 22)
      Me.txtSecond.TabIndex = 11

      'txtFirst
      Me.txtFirst.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!)
      Me.txtFirst.Location = New System.Drawing.Point(13, 35)
      Me.txtFirst.Name = "txtFirst"
      Me.txtFirst.Size = New System.Drawing.Size(714, 22)
      Me.txtFirst.TabIndex = 10

      'lblPrompt
      Me.lblPrompt.AutoSize = True
      Me.lblPrompt.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!)
      Me.lblPrompt.Location = New System.Drawing.Point(13, 16)
      Me.lblPrompt.Name = "lblPrompt"
      Me.lblPrompt.Size = New System.Drawing.Size(339, 16)
      Me.lblPrompt.TabIndex = 9
      Me.lblPrompt.Text = "Please enter two positive numbers up to 100 digits each."

      'HugeIntegerForWindows
      Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
      Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
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
      Me.Name = "HugeIntegerForWindows"
      Me.Text = "Using Huge Integer Web Service"
      Me.ResumeLayout(False)
      Me.PerformLayout()
   End Sub ' InitializeComponent

   Private WithEvents lblResult As System.Windows.Forms.Label
   Private WithEvents btnEqual As System.Windows.Forms.Button
   Private WithEvents btnSmaller As System.Windows.Forms.Button
   Private WithEvents btnLarger As System.Windows.Forms.Button
   Private WithEvents btnSubtract As System.Windows.Forms.Button
   Private WithEvents btnAdd As System.Windows.Forms.Button
   Private WithEvents txtSecond As System.Windows.Forms.TextBox
   Private WithEvents txtFirst As System.Windows.Forms.TextBox
   Private WithEvents lblPrompt As System.Windows.Forms.Label

End Class
