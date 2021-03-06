﻿' Fig. 19.25: MyForm.vb
' Using third-party controls in Silverlight 1.1 Alpha Refresh.
Public Class MyForm
   Inherits System.Windows.Forms.Form

   Public Sub New()
      MyBase.New()
      InitializeComponent()
    End Sub ' New

   Protected Overloads Overrides Sub Dispose( _
      ByVal disposing As Boolean)
      If disposing Then
         If Not (components Is Nothing) Then
            components.Dispose()
         End If
      End If
      MyBase.Dispose(disposing)
   End Sub ' Dispose

   Private components As System.ComponentModel.IContainer

   Private Sub InitializeComponent()
      Me.btnCalculate = New System.Windows.Forms.Button
      Me.txtDisplay = New System.Windows.Forms.TextBox
      Me.lblBalance = New System.Windows.Forms.Label
      Me.updYear = New System.Windows.Forms.NumericUpDown
      Me.lblYears = New System.Windows.Forms.Label
      Me.txtInterest = New System.Windows.Forms.TextBox
      Me.lblInterest = New System.Windows.Forms.Label
      Me.txtPrincipal = New System.Windows.Forms.TextBox
      Me.lblPrincipal = New System.Windows.Forms.Label
      CType(Me.updYear,  _
         System.ComponentModel.ISupportInitialize).BeginInit()
      Me.SuspendLayout()

      ' btnCalculate
      Me.btnCalculate.Location = New System.Drawing.Point(197, 14)
      Me.btnCalculate.Name = "btnCalculate"
      Me.btnCalculate.Size = New System.Drawing.Size(75, 23)
      Me.btnCalculate.TabIndex = 17
      Me.btnCalculate.Text = "Calculate"

      ' txtDisplay
      ' the following line was commented out because it accessed 
      ' a property that is not supported in GOA WinForms      
      ' Me.txtDisplay.BackColor = System.Drawing.SystemColors.Control
      Me.txtDisplay.Location = New System.Drawing.Point(18, 170)
      Me.txtDisplay.Multiline = True
      Me.txtDisplay.Name = "txtDisplay"
      Me.txtDisplay.ReadOnly = True
      Me.txtDisplay.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
      Me.txtDisplay.Size = New System.Drawing.Size(254, 104)
      Me.txtDisplay.TabIndex = 16
      Me.txtDisplay.Font = New Font("Courier New", 10)

      ' lblBalance
      ' the following line was commented out because it accessed 
      ' a property that is not supported in GOA WinForms
      ' Me.lblBalance.AutoSize = True
      Me.lblBalance.Location = New System.Drawing.Point(17, 143)
      Me.lblBalance.Name = "lblBalance"
      Me.lblBalance.Size = New System.Drawing.Size(122, 13)
      Me.lblBalance.TabIndex = 15
      Me.lblBalance.Text = "Yearly account balance:"

      ' updYear
      Me.updYear.Location = New System.Drawing.Point(85, 95)
      Me.updYear.Maximum = New Decimal(New Integer() {10, 0, 0, 0})
      Me.updYear.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
      Me.updYear.Name = "updYear"
      Me.updYear.ReadOnly = True
      Me.updYear.Size = New System.Drawing.Size(100, 20)
      Me.updYear.TabIndex = 14
      Me.updYear.TextAlign = _
         System.Windows.Forms.HorizontalAlignment.Right
      Me.updYear.Value = New Decimal(New Integer() {1, 0, 0, 0})

      ' lblYears
      ' the following line was commented out because it accessed 
      ' a property that is not supported in GOA WinForms
      ' Me.lblYears.AutoSize = True
      Me.lblYears.Location = New System.Drawing.Point(17, 102)
      Me.lblYears.Name = "lblYears"
      Me.lblYears.Size = New System.Drawing.Size(37, 13)
      Me.lblYears.TabIndex = 13
      Me.lblYears.Text = "Years:"

      ' txtInterest
      Me.txtInterest.Location = New System.Drawing.Point(85, 58)
      Me.txtInterest.Name = "txtInterest"
      Me.txtInterest.Size = New System.Drawing.Size(100, 20)
      Me.txtInterest.TabIndex = 12
      Me.txtInterest.TextAlign = _
         System.Windows.Forms.HorizontalAlignment.Right

      ' lblInterest
      ' the following line was commented out because it accessed 
      ' a property that is not supported in GOA WinForms
      ' Me.lblInterest.AutoSize = True
      Me.lblInterest.Location = New System.Drawing.Point(17, 61)
      Me.lblInterest.Name = "lblInterest"
      Me.lblInterest.Size = New System.Drawing.Size(71, 13)
      Me.lblInterest.TabIndex = 11
      Me.lblInterest.Text = "Interest Rate:"

      ' txtPrincipal
      Me.txtPrincipal.Location = New System.Drawing.Point(85, 17)
      Me.txtPrincipal.Name = "txtPrincipal"
      Me.txtPrincipal.Size = New System.Drawing.Size(100, 20)
      Me.txtPrincipal.TabIndex = 10
      Me.txtPrincipal.TextAlign = _
         System.Windows.Forms.HorizontalAlignment.Right

      ' lblPrincipal
      ' the following line was commented out because it accessed 
      ' a property that is not supported in GOA WinForms
      ' Me.lblPrincipal.AutoSize = True
      Me.lblPrincipal.Location = New System.Drawing.Point(17, 20)
      Me.lblPrincipal.Name = "lblPrincipal"
      Me.lblPrincipal.Size = New System.Drawing.Size(50, 13)
      Me.lblPrincipal.TabIndex = 9
      Me.lblPrincipal.Text = "Principal:"

      ' FrmInterestCalculator
      ' the following two lines were commented out because they 
      ' accessed properties that are not supported in GOA WinForms
      ' Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
      ' Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
      Me.ClientSize = New System.Drawing.Size(289, 288)
      Me.Controls.Add(Me.btnCalculate)
      Me.Controls.Add(Me.txtDisplay)
      Me.Controls.Add(Me.lblBalance)
      Me.Controls.Add(Me.updYear)
      Me.Controls.Add(Me.lblYears)
      Me.Controls.Add(Me.txtInterest)
      Me.Controls.Add(Me.lblInterest)
      Me.Controls.Add(Me.txtPrincipal)
      Me.Controls.Add(Me.lblPrincipal)
      Me.Name = "FrmInterestCalculator"
      Me.Text = "Interest Calculator"
      CType(Me.updYear,  _
         System.ComponentModel.ISupportInitialize).EndInit()
      Me.ResumeLayout(False)
      Me.PerformLayout()
   End Sub ' InitializeComponent

   Friend WithEvents btnCalculate As System.Windows.Forms.Button
   Friend WithEvents txtDisplay As System.Windows.Forms.TextBox
   Friend WithEvents lblBalance As System.Windows.Forms.Label
   Friend WithEvents updYear As System.Windows.Forms.NumericUpDown
   Friend WithEvents lblYears As System.Windows.Forms.Label
   Friend WithEvents txtInterest As System.Windows.Forms.TextBox
   Friend WithEvents lblInterest As System.Windows.Forms.Label
   Friend WithEvents txtPrincipal As System.Windows.Forms.TextBox
   Friend WithEvents lblPrincipal As System.Windows.Forms.Label

   Public Shared Sub Main()
      Application.Run(New MyForm)
   End Sub ' Main

   Private Sub btnCalculate_Click(ByVal sender As System.Object, _
      ByVal e As System.EventArgs) Handles btnCalculate.Click

      Dim principal As Decimal
      Dim rate As Double
      Dim year As Integer
      Dim amount As Decimal

      principal = Convert.ToDecimal(Me.txtPrincipal.Text)
      rate = Convert.ToDouble(Me.txtInterest.Text)
      year = Convert.ToInt32(Me.updYear.Value)

      txtDisplay.Text = String.Format("{0,-6}{1}" & vbCrLf, "Year", _
         "Amount on Deposit")

      For yearCounter As Integer = 1 To year
         amount = principal * Convert.ToDecimal( _
            Math.Pow(1 + rate / 100, yearCounter))
         txtDisplay.Text &= String.Format("{0,-6:D}{1:C}" & vbCrLf, _
            yearCounter, amount)
      Next
   End Sub ' btnCalculate_Click
End Class ' MyForm