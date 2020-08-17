// Fig. 26.26: SessionBean.java
// SessionBean file for storing language selections.
package sessiontrackingsessions;

import com.sun.rave.web.ui.appbase.AbstractSessionBean;
import javax.faces.FacesException;

public class SessionBean1 extends AbstractSessionBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
   }

   public SessionBean1()
   {
   }
   
   public void init()
   {
      super.init();
      
      try
      {
         _init();
      }
      catch (Exception e)
      {
         log("SessionBean1 Initialization Failure", e);
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException(e);
      }
   }
   
   public void passivate()
   {
   }
   
   public void activate()
   {
   }
   
   public void destroy()
   {
   }

   protected ApplicationBean1 getApplicationBean1()
   {
      return (ApplicationBean1)getBean("ApplicationBean1");
   }

   // holds value of property numSelections
   private int numSelections;

   // returns value of numSelections
   public int getNumSelections()
   {
      return this.numSelections;
   } // end method getNumSelections

   // sets new value of numSelections
   public void setNumSelections(int numSelections)
   {
      this.numSelections = numSelections;
   } // end method setNumSelections

   // holds value of property selectedLanguages
   private java.util.Properties selectedLanguages = 
      new java.util.Properties();

   // returns selectedLanguages
   public java.util.Properties getSelectedLanguages()
   {
      return this.selectedLanguages;
   } // end method getSelectedLanguages
   
   // sets new value of property selectedLanguages
   public void setSelectedLanguages(
      java.util.Properties selectedLanguages )
   {
      this.selectedLanguages = selectedLanguages;
   } // end method setSelectedLanguages
} // end class SessionBean1

/*************************************************************************
 * (C) Copyright 1992-2008 by Deitel & Associates, Inc. and              *
 * Pearson Education, Inc. All Rights Reserved.                          *
 *                                                                       *
 * DISCLAIMER: The authors and publisher of this book have used their    *
 * best efforts in preparing the book. These efforts include the         *
 * development, research, and testing of the theories and programs       *
 * to determine their effectiveness. The authors and publisher make      *
 * no warranty of any kind, expressed or implied, with regard to these   *
 * programs or to the documentation contained in these books. The authors*
 * and publisher shall not be liable in any event for incidental or      *
 * consequential damages in connection with, or arising out of, the      *
 * furnishing, performance, or use of these programs.                    *
 ************************************************************************/


