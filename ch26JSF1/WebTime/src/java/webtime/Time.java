// Fig 26.3: Time.java
// Page bean file that sets clockText to the time on the Web server.
package webtime;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.Meta;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.component.StaticText;
import java.text.DateFormat;
import java.util.Date;
import javax.faces.FacesException;

public class Time extends AbstractPageBean
{
   private int __placeholder;
   
   // auto-generated component initialization method.
   private void _init() throws Exception
   {
   } // end method _init
   
   private Page page1 = new Page();
   
   public Page getPage1()
   {
      return page1;
   } // end method getPage1
   
   public void setPage1( Page p )
   {
      this.page1 = p;
   } // end method setPage1
   
   private Html html1 = new Html();
   
   public Html getHtml1()
   {
      return html1;
   } // end method getHtml1
   
   public void setHtml1( Html h )
   {
      this.html1 = h;
   } // end method setHtml1
   
   private Head head1 = new Head();
   
   public Head getHead1()
   {
      return head1;
   } // end method getHead1
   
   public void setHead1( Head h )
   {
      this.head1 = h;
   } // end method setHead1
   
   private Link link1 = new Link();
   
   public Link getLink1()
   {
      return link1;
   } // end method getLink1
   
   public void setLink1( Link l )
   {
      this.link1 = l;
   } // end method setLink1
   
   private Body body1 = new Body();
   
   public Body getBody1()
   {
      return body1;
   } // end method getBody1
   
   public void setBody1( Body b )
   {
      this.body1 = b;
   } // end method setBody1
   
   private Form form1 = new Form();
   
   public Form getForm1()
   {
      return form1;
   } // end method getForm1
   
   public void setForm1( Form f )
   {
      this.form1 = f;
   } // end method setForm1

   private StaticText timeHeader = new StaticText();

   public StaticText getTimeHeader()
   {
      return timeHeader;
   } // end method getTimeHeader

   public void setTimeHeader( StaticText st )
   {
      this.timeHeader = st;
   } // end method setTimeHeader

   private StaticText clockText = new StaticText();

   public StaticText getClockText()
   {
      return clockText;
   } // end method getClockText

   public void setClockText( StaticText st )
   {
      this.clockText = st;
   } // end method setClockText

   private Meta meta1 = new Meta();

   public Meta getMeta1()
   {
      return meta1;
   } // end method getMeta1

   public void setMeta1( Meta m )
   {
      this.meta1 = m;
   } // end method setMeta1
   
   public Time()
   {
   } // end Time constructor
   
   // initializes page content
   public void init()
   {
      super.init();
      
      try
      {
         _init();
      } // end try
      catch ( Exception e )
      {
         log( "Time Initialization Failure", e );
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException( e );
      } // end catch
   } // end method init
   
   // method called when postback occurs
   public void preprocess()
   {
   } // end method preprocess
   
   // method called before the page is rendered
   public void prerender()
   {
      clockText.setValue( DateFormat.getTimeInstance(
         DateFormat.LONG ).format( new Date() ) );
   } // end method prerender
   
   // method called after rendering completes, if init was called
   public void destroy()
   {
   } // end method destroy

   // Return a reference to the scoped data bean.
   protected SessionBean1 getSessionBean1()
   {
      return ( SessionBean1 ) getBean( "SessionBean1" );
   } // end method getSessionBean1

   // Return a reference to the scoped data bean.
   protected ApplicationBean1 getApplicationBean1()
   {
      return ( ApplicationBean1 ) getBean( "ApplicationBean1" );
   } // end method getApplicationBean1

   // Return a reference to the scoped data bean.
   protected RequestBean1 getRequestBean1()
   {
      return ( RequestBean1 ) getBean( "RequestBean1" );
   } // end method getRequestBean1
} // end class Time

/*************************************************************************
 * (C) Copyright 1992-2007 by Deitel & Associates, Inc. and              *
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