// Fig. 26.27: Options.java
// Page bean that stores language selections in a SessionBean property.
package sessiontrackingsessions;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Button;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Hyperlink;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.component.RadioButtonGroup;
import com.sun.webui.jsf.component.StaticText;
import com.sun.webui.jsf.model.SingleSelectOptionsList;
import java.util.Properties;
import javax.faces.FacesException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

public class Options extends AbstractPageBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
      languageRadioGroupDefaultOptions.setOptions(
         new com.sun.webui.jsf.model.Option[] {
            new com.sun.webui.jsf.model.Option( "Java", "Java" ), 
            new com.sun.webui.jsf.model.Option( "C++", "C++" ), 
            new com.sun.webui.jsf.model.Option( "Visual Basic 2005", 
               "Visual Basic 2005" ), 
            new com.sun.webui.jsf.model.Option( "Visual C# 2005", 
               "Visual C# 2005" ), 
            new com.sun.webui.jsf.model.Option( "Internet & Web", 
               "Internet & Web")
         } // end array initializer
      ); // end call to setOptions
   } // end method _init
   
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

   private StaticText instructionText = new StaticText();

   public StaticText getInstructionText()
   {
      return instructionText;
   }

   public void setInstructionText(StaticText st)
   {
      this.instructionText = st;
   }

   private RadioButtonGroup languageRadioGroup = new RadioButtonGroup();

   public RadioButtonGroup getLanguageRadioGroup()
   {
      return languageRadioGroup;
   }

   public void setLanguageRadioGroup(RadioButtonGroup rbg)
   {
      this.languageRadioGroup = rbg;
   }

   private SingleSelectOptionsList languageRadioGroupDefaultOptions = 
      new SingleSelectOptionsList();

   public SingleSelectOptionsList getLanguageRadioGroupDefaultOptions()
   {
      return languageRadioGroupDefaultOptions;
   }

   public void setLanguageRadioGroupDefaultOptions(
      SingleSelectOptionsList ssol )
   {
      this.languageRadioGroupDefaultOptions = ssol;
   }

   private Button submitButton = new Button();

   public Button getSubmitButton()
   {
      return submitButton;
   }

   public void setSubmitButton(Button b)
   {
      this.submitButton = b;
   }

   private StaticText responseText = new StaticText();

   public StaticText getResponseText()
   {
      return responseText;
   }

   public void setResponseText(StaticText st)
   {
      this.responseText = st;
   }

   private Hyperlink languagesLink = new Hyperlink();

   public Hyperlink getLanguagesLink()
   {
      return languagesLink;
   }

   public void setLanguagesLink(Hyperlink h)
   {
      this.languagesLink = h;
   }

   private Hyperlink recommendationsLink = new Hyperlink();

   public Hyperlink getRecommendationsLink()
   {
      return recommendationsLink;
   }

   public void setRecommendationsLink(Hyperlink h)
   {
      this.recommendationsLink = h;
   }
   
   private Properties books = new Properties();

   private StaticText selectionsText = new StaticText();

   public StaticText getSelectionsText()
   {
      return selectionsText;
   }

   public void setSelectionsText(StaticText st)
   {
      this.selectionsText = st;
   }

   private StaticText selectionsValueText = new StaticText();

   public StaticText getSelectionsValueText()
   {
      return selectionsValueText;
   }

   public void setSelectionsValueText(StaticText st)
   {
      this.selectionsValueText = st;
   }
   
   // Construct a new page bean instance and initialize the properties
   // that map languages to ISBN numbers of recommended books.
   public Options()
   {
      // initialze the Properties object of values to be stored as
      // in the session
      books.setProperty( "Java", "0132222205" );
      books.setProperty( "C++", "0136152503" );
      books.setProperty( "Visual Basic 2005", "0131869000" );
      books.setProperty( "Visual C# 2005", "0131525239" );
      books.setProperty( "Internet & Web", "0131752421" );
   } // end Options constructor

   public void init()
   {
      super.init();
      
      try
      {
         _init();
      }
      catch (Exception e)
      {
         log("Page1 Initialization Failure", e);
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException(e);
      }
   }
   
   public void preprocess()
   {
   }
   
   public void prerender()
   {
   }
   
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

   // Action handler for the Submit button. Checks whether a language
   // was selected and, if so, registers a cookie for that language and
   // sets the responseText to indicate the chosen language.
   public String submitButton_action()
   {
      String msg = "Welcome to sessions!  You ";
      
      // if the user made a selection
      if ( getLanguageRadioGroup().getSelected() != null )
      {
         String language = languageRadioGroup.getSelected().toString();
         msg += "selected " + language + ".";
         
         // get ISBN number of book for the given language.
         String ISBN = books.getProperty( language );
         
         // add the selection to the SessionBean's Properties object
         Properties selections = getSessionBean1().getSelectedLanguages();
         Object result = selections.setProperty( language, ISBN );
         
         // increment numSelections in the SessionBean and update
         // selectedLanguages if user has not made this selection before
         if ( result == null )
         {
            int numSelected = getSessionBean1().getNumSelections();
            getSessionBean1().setNumSelections( ++numSelected );
         } // end if
      } // end if    
      else
         msg += "did not select a language.";
      
      responseText.setValue( msg );
      languageRadioGroup.setRendered( false );
      instructionText.setRendered( false );
      submitButton.setRendered( false );
      responseText.setRendered( true );
      selectionsText.setRendered( true );
      selectionsValueText.setRendered( true );
      languagesLink.setRendered( true );
      recommendationsLink.setRendered( true );
      return null; // reloads the page
   } // end method submitButton_action

   // redisplay the components for selecting a language
   public String languagesLink_action()
   {
      responseText.setRendered( false );
      selectionsText.setRendered( false );
      selectionsValueText.setRendered( false );
      languagesLink.setRendered( false );
      recommendationsLink.setRendered( false );
      languageRadioGroup.setRendered( true );
      instructionText.setRendered( true );
      submitButton.setRendered( true );
      return null;
   } // end method languagesLink_action

   // forwards user to Recommendations.jsp
   public String recommendationsLink_action()
   {    
      return "case1";
   } // end method recommendationsLink_action
} // end class Options

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
