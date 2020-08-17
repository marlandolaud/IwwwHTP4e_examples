// Fig. 22.20: Equation.java
// Equation class that contains information about an equation
package com.deitel.iw3htp4.ch28.equationgenerator;

public class Equation
{
   private int leftOperand;
   private int rightOperand;
   private int resultValue;
   private String operationType;
   
   // required no-argument constructor
   public Equation()
   {
      this( 0, 0, "+" ); 
   } // end no-argument constructor
   
   public Equation( int leftValue, int rightValue, String type )
   {
      leftOperand = leftValue;
      rightOperand = rightValue;
      operationType = type;
      
      // determine resultValue
      if ( operationType.equals( "+" ) ) // addition
         resultValue = leftOperand + rightOperand;
      else if ( operationType.equals( "-" ) ) // subtraction
         resultValue = leftOperand - rightOperand;
      else // multiplication
         resultValue = leftOperand * rightOperand;
   } // end three argument constructor
   
   // returns a String representation of an Equation
   public String toString()
   {
      return leftOperand + " " + operationType + " " +
         rightOperand + " = " + resultValue; 
   } // end method toString
   
   // returns the left hand side of the equation as a String
   public String getLeftHandSide()
   {
      return leftOperand + " " + operationType + " " + rightOperand;
   } // end method getLeftHandSide
   
   // returns the right hand side of the equation as a String
   public String getRightHandSide()
   {
      return "" + resultValue;
   } // end method getRightHandSide

   // gets the leftOperand
   public int getLeftOperand()
   {
      return leftOperand;
   } // end method getLeftOperand
   
   // gets the rightOperand
   public int getRightOperand()
   {
      return rightOperand;
   } // end method getRightOperand
   
   // gets the resultValue
   public int getReturnValue()
   {
      return resultValue;
   } // end method getResultValue
   
   // gets the operationType
   public String getOperationType()
   {
      return operationType;
   } // end method getOperationType 
   
   // required setter
   public void setLeftHandSide( String value )
   {
      // empty body
   } // end method setLeftHandSide
   
   // required setter
   public void setRightHandSide( String value )
   {
      // empty body
   } // end method setRightHandSide
   
   // required setter
   public void setLeftOperand( int value )
   {
      // empty body
   } // end method setLeftOperand
   
   // required setter
   public void setRightOperand( int value )
   {
      // empty body
   } // end method setRightOperand
   
   // required setter
   public void setReturnValue( int value )
   {
      // empty body
   } // end method setResultOperand
   
   // required setter
   public void setOperationType( String value )
   {
      // empty body
   } // end method setOperationType
} // end class Equation


/**************************************************************************
 * (C) Copyright 1992-2008 by Deitel & Associates, Inc. and               *
 * Pearson Education, Inc. All Rights Reserved.                           *
 *                                                                        *
 * DISCLAIMER: The authors and publisher of this book have used their     *
 * best efforts in preparing the book. These efforts include the          *
 * development, research, and testing of the theories and programs        *
 * to determine their effectiveness. The authors and publisher make       *
 * no warranty of any kind, expressed or implied, with regard to these    *
 * programs or to the documentation contained in these books. The authors *
 * and publisher shall not be liable in any event for incidental or       *
 * consequential damages in connection with, or arising out of, the       *
 * furnishing, performance, or use of these programs.                     *
 *************************************************************************/


