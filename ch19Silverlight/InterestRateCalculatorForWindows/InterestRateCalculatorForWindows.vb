' InterestRateCalculatorForWindows.vb
' A Windows app in VB.
Public Class InterestRateCalculatorForWindows

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
End Class ' InterestRateCalculatorForWindows

' **************************************************************************
' * (C) Copyright 1992-2006 by Deitel & Associates, Inc. and               *
' * Pearson Education, Inc. All Rights Reserved.                           *
' *                                                                        *
' * DISCLAIMER: The authors and publisher of this book have used their     *
' * best efforts in preparing the book. These efforts include the          *
' * development, research, and testing of the theories and programs        *
' * to determine their effectiveness. The authors and publisher make       *
' * no warranty of any kind, expressed or implied, with regard to these    *
' * programs or to the documentation contained in these books. The authors *
' * and publisher shall not be liable in any event for incidental or       *
' * consequential damages in connection with, or arising out of, the       *
' * furnishing, performance, or use of these programs.                     *
' **************************************************************************
