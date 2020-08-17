// Fig. 26.16: Validation.java
// Validating user input.
package validation;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Button;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Label;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.Message;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.component.StaticText;
import com.sun.webui.jsf.component.TextField;
import javax.faces.FacesException;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.validator.LengthValidator;
import javax.faces.validator.ValidatorException;

public class Validation extends AbstractPageBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
      nameLengthValidator.setMaximum( 30 );
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

   private StaticText headerText = new StaticText();

   public StaticText getHeaderText()
   {
      return headerText;
   }

   public void setHeaderText(StaticText st)
   {
      this.headerText = st;
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

   private Label nameLabel = new Label();

   public Label getNameLabel()
   {
      return nameLabel;
   }

   public void setNameLabel(Label l)
   {
      this.nameLabel = l;
   }

   private TextField nameTextField = new TextField();

   public TextField getNameTextField()
   {
      return nameTextField;
   }

   public void setNameTextField(TextField tf)
   {
      this.nameTextField = tf;
   }

   private Message nameMessage = new Message();

   public Message getNameMessage()
   {
      return nameMessage;
   }

   public void setNameMessage(Message m)
   {
      this.nameMessage = m;
   }
   
   private Label emailLabel = new Label();

   public Label getEmailLabel()
   {
      return emailLabel;
   }

   public void setEmailLabel(Label l)
   {
      this.emailLabel = l;
   }

   private TextField emailTextField = new TextField();

   public TextField getEmailTextField()
   {
      return emailTextField;
   }

   public void setEmailTextField(TextField tf)
   {
      this.emailTextField = tf;
   }

   private Message emailMessage = new Message();

   public Message getEmailMessage()
   {
      return emailMessage;
   }

   public void setEmailMessage(Message m)
   {
      this.nameMessage = m;
   }

   private Label phoneLabel = new Label();

   public Label getPhoneLabel()
   {
      return phoneLabel;
   }

   public void setPhoneLabel(Label l)
   {
      this.phoneLabel = l;
   }

   private TextField phoneTextField = new TextField();

   public TextField getPhoneTextField()
   {
      return phoneTextField;
   }

   public void setPhoneTextField(TextField tf)
   {
      this.phoneTextField = tf;
   }

   private Message phoneMessage = new Message();

   public Message getPhoneMessage()
   {
      return phoneMessage;
   }

   public void setPhoneMessage(Message m)
   {
      this.phoneMessage = m;
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

   private StaticText resultText = new StaticText();

   public StaticText getResultText()
   {
      return resultText;
   }

   public void setResultText(StaticText st)
   {
      this.resultText = st;
   }

   private HtmlPanelGrid resultGridPanel = new HtmlPanelGrid();

   public HtmlPanelGrid getResultGridPanel()
   {
      return resultGridPanel;
   }

   public void setResultGridPanel(HtmlPanelGrid hpg)
   {
      this.resultGridPanel = hpg;
   }

   private StaticText nameResultLabel = new StaticText();

   public StaticText getNameResultLabel()
   {
      return nameResultLabel;
   }

   public void setNameResultLabel(StaticText st)
   {
      this.nameResultLabel = st;
   }

   private StaticText nameResult = new StaticText();

   public StaticText getNameResult()
   {
      return nameResult;
   }

   public void setNameResult(StaticText st)
   {
      this.nameResult = st;
   }

   private StaticText emailResultLabel = new StaticText();

   public StaticText getEmailResultLabel()
   {
      return emailResultLabel;
   }

   public void setEmailResultLabel(StaticText st)
   {
      this.emailResultLabel = st;
   }

   private StaticText emailResult = new StaticText();

   public StaticText getEmailResult()
   {
      return emailResult;
   }

   public void setEmailResult(StaticText st)
   {
      this.emailResult = st;
   }

   private StaticText phoneResultLabel = new StaticText();

   public StaticText getPhoneResultLabel()
   {
      return phoneResultLabel;
   }

   public void setPhoneResultLabel(StaticText st)
   {
      this.phoneResultLabel = st;
   }

   private StaticText phoneResult = new StaticText();

   public StaticText getPhoneResult()
   {
      return phoneResult;
   }

   public void setPhoneResult(StaticText st)
   {
      this.phoneResult = st;
   }

   private LengthValidator nameLengthValidator = new LengthValidator();

   public LengthValidator getNameLengthValidator()
   {
      return nameLengthValidator;
   }

   public void setNameLengthValidator(LengthValidator lv)
   {
      this.nameLengthValidator = lv;
   }

   public Validation()
   {
   }
   
   public void init()
   {
      // Perform initializations inherited from our superclass
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

   protected RequestBean1 getRequestBean1()
   {
      return (RequestBean1)getBean("RequestBean1");
   }

   protected ApplicationBean1 getApplicationBean1()
   {
      return (ApplicationBean1)getBean("ApplicationBean1");
   }

   // validates entered email address against the regular expression
   // that represents the form of a valid email address.
   public void emailTextField_validate( FacesContext context, 
      UIComponent component, Object value )
   {
      String email = String.valueOf( value );
      
      // if entered email address is not in a valid format
      if ( !email.matches(
         "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*" ) )
      {
         throw new ValidatorException( new FacesMessage( 
            "Enter a valid email address, e.g. user@domain.com" ) );
      } // end if
   } // end method emailTextField_validate

   // validates entered phone number against the regular expression
   // that represents the form of a valid phone number.
   public void phoneTextField_validate( FacesContext context, 
      UIComponent component, Object value )
   {
      String phone = String.valueOf( value );
      
      // if entered phone number is not in a valid format
      if ( !phone.matches( 
         "((\\(\\d{3}\\) ?)|(\\d{3}-))?\\d{3}-\\d{4}" ) )
      {
         throw new ValidatorException( new FacesMessage( 
            "Enter a valid phone number, e.g. (555) 555-1234" ) );
      } // end if
   } // end method phoneTextField_validate

   // displays the values the user entered
   public String submitButton_action()
   {
      String name = String.valueOf( nameTextField.getValue() );
      String email = String.valueOf( emailTextField.getValue() );
      String phone = String.valueOf( phoneTextField.getValue() );
      nameResult.setValue( name );
      emailResult.setValue( email );
      phoneResult.setValue( phone );
      resultGridPanel.setRendered( true );
      resultText.setRendered( true );
      return null;
   } // end method submitButton_action
} // end class Validation

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
