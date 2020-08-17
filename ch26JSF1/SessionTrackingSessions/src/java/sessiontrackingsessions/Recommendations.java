// Fig. 26.29: Recommendations.java
// Page bean that displays book recommendations based on a SessionBean
// property.
package sessiontrackingsessions;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Hyperlink;
import com.sun.webui.jsf.component.Label;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.Listbox;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.model.DefaultOptionsList;
import com.sun.webui.jsf.model.Option;
import java.util.Enumeration;
import java.util.Properties;
import javax.faces.FacesException;

public class Recommendations extends AbstractPageBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
      recommendationsListboxDefaultOptions.setOptions(
         new com.sun.webui.jsf.model.Option[] {} );
   }
   
   private Page page1 = new Page();
   
   public Page getPage1()
   {
      return page1;
   }
   
   public void setPage1(Page p)
   {
      this.page1 = p;
   }
   
   private Html html1 = new Html();
   
   public Html getHtml1()
   {
      return html1;
   }
   
   public void setHtml1(Html h)
   {
      this.html1 = h;
   }
   
   private Head head1 = new Head();
   
   public Head getHead1()
   {
      return head1;
   }
   
   public void setHead1(Head h)
   {
      this.head1 = h;
   }
   
   private Link link1 = new Link();
   
   public Link getLink1()
   {
      return link1;
   }
   
   public void setLink1(Link l)
   {
      this.link1 = l;
   }
   
   private Body body1 = new Body();
   
   public Body getBody1()
   {
      return body1;
   }
   
   public void setBody1(Body b)
   {
      this.body1 = b;
   }
   
   private Form form1 = new Form();
   
   public Form getForm1()
   {
      return form1;
   }
   
   public void setForm1(Form f)
   {
      this.form1 = f;
   }

   private Label recommendationsLabel = new Label();

   public Label getRecommendationsLabel()
   {
      return recommendationsLabel;
   }

   public void setRecommendationsLabel(Label l)
   {
      this.recommendationsLabel = l;
   }

   private Listbox recommendationsListbox = new Listbox();

   public Listbox getRecommendationsListbox()
   {
      return recommendationsListbox;
   }

   public void setRecommendationsListbox(Listbox l)
   {
      this.recommendationsListbox = l;
   }

   private DefaultOptionsList recommendationsListboxDefaultOptions = 
      new DefaultOptionsList();

   public DefaultOptionsList getRecommendationsListboxDefaultOptions()
   {
      return recommendationsListboxDefaultOptions;
   }

   public void setRecommendationsListboxDefaultOptions(
      DefaultOptionsList dol )
   {
      this.recommendationsListboxDefaultOptions = dol;
   }

   private Hyperlink optionsLink = new Hyperlink();

   public Hyperlink getOptionsLink()
   {
      return optionsLink;
   }

   public void setOptionsLink(Hyperlink h)
   {
      this.optionsLink = h;
   }
   
   public Recommendations()
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
         log( "Recommendations Initialization Failure", e );
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException( e );
      }
   }
   
   public void preprocess()
   {
   }
   
   // displays the book recommendations in the Listbox
   public void prerender()
   {
      // retrieve user's selections and number of selections made
      Properties languages = getSessionBean1().getSelectedLanguages();
      Enumeration selectionsEnum = languages.propertyNames();
      int numSelected = getSessionBean1().getNumSelections();
         
      Option [] recommendations;
      
      // if at least one selection was made
      if ( numSelected > 0 )
      {
         recommendations = new Option[ numSelected ];

         for( int i = 0; i < numSelected; i++ )
         {
            String language = (String) selectionsEnum.nextElement() ;
            recommendations[ i ] = new Option( language + 
               " How to Program.  ISBN#: " + 
               languages.getProperty( language ) );
         } // end for
      } // end if
      else
      {
         recommendations = new Option[ 1 ];
         recommendations[ 0 ] = new Option( 
            "No recommendations. Please select a language." );
      } // end else

      recommendationsListbox.setItems( recommendations );
   } // end method prerender
   
   public void destroy()
   {
   }

   protected SessionBean1 getSessionBean1()
   {
      return (SessionBean1)getBean("SessionBean1");
   }

   protected ApplicationBean1 getApplicationBean1()
   {
      return (ApplicationBean1)getBean("ApplicationBean1");
   }

   protected RequestBean1 getRequestBean1()
   {
      return (RequestBean1)getBean("RequestBean1");
   } 

   // redirects user to Options.jsp
   public String optionsLink_action()
   {
      return "case1"; // returns to Options.jsp
   } // end method optionsLink_action
} // end class Recommendations

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
