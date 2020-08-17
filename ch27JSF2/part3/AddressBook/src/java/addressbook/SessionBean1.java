// Fig. 27.7: SessionBean1.java
// Session bean that initializes the data source for the 
// AddressBook database.
package addressbook;

import com.sun.rave.web.ui.appbase.AbstractSessionBean;
import com.sun.sql.rowset.CachedRowSetXImpl;
import javax.faces.FacesException;

public class SessionBean1 extends AbstractSessionBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
      addressesRowSet.setDataSourceName( 
         "java:comp/env/jdbc/dataSource" );
      addressesRowSet.setCommand(
         "SELECT ALL IW3HTP4.ADDRESSES.FIRSTNAME, \n" +
         "IW3HTP4.ADDRESSES.LASTNAME, \n" +
         "IW3HTP4.ADDRESSES.STREET, \n" +
         "IW3HTP4.ADDRESSES.CITY, \n" +
         "IW3HTP4.ADDRESSES.STATE, \n" +
         "IW3HTP4.ADDRESSES.ZIP \n" +
         "FROM IW3HTP4.ADDRESSES\n" +
         "ORDER BY IW3HTP4.ADDRESSES.LASTNAME ASC, \n" +
         "IW3HTP4.ADDRESSES.FIRSTNAME ASC ");
      addressesRowSet.setTableName( "ADDRESSES" );
      addressesSearchRowSet.setDataSourceName("java:comp/env/jdbc/dataSource");
      addressesSearchRowSet.setCommand("SELECT ALL IW3HTP4.ADDRESSES.FIRSTNAME, \n                    IW3HTP4.ADDRESSES.LASTNAME, \n                    IW3HTP4.ADDRESSES.STREET, \n                    IW3HTP4.ADDRESSES.CITY, \n                    IW3HTP4.ADDRESSES.STATE, \n                    IW3HTP4.ADDRESSES.ZIP \nFROM IW3HTP4.ADDRESSES\nWHERE IW3HTP4.ADDRESSES.FIRSTNAME = ?\n          AND IW3HTP4.ADDRESSES.LASTNAME = ? ");
      addressesSearchRowSet.setTableName("ADDRESSES");
   } // end method _init

   private CachedRowSetXImpl addressesRowSet = new CachedRowSetXImpl();

   public CachedRowSetXImpl getAddressesRowSet()
   {
      return addressesRowSet;
   }

   public void setAddressesRowSet(CachedRowSetXImpl crsxi)
   {
      this.addressesRowSet = crsxi;
   }

   private CachedRowSetXImpl addressesSearchRowSet = new CachedRowSetXImpl();

   public CachedRowSetXImpl getAddressesSearchRowSet()
   {
      return addressesSearchRowSet;
   }

   public void setAddressesSearchRowSet(CachedRowSetXImpl crsxi)
   {
      this.addressesSearchRowSet = crsxi;
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
      catch ( Exception e )
      {
         log( "SessionBean1 Initialization Failure", e );
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException( e );
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
      return ( ApplicationBean1 ) getBean( "ApplicationBean1" );
   }
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
