/*
 * WebComponents.java
 *
 * Created on June 28, 2007, 1:32 PM
 * Copyright paul
 */
package webcomponents;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Button;
import com.sun.webui.jsf.component.DropDown;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Hyperlink;
import com.sun.webui.jsf.component.ImageComponent;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.component.RadioButtonGroup;
import com.sun.webui.jsf.component.StaticText;
import com.sun.webui.jsf.component.TextField;
import com.sun.webui.jsf.model.SingleSelectOptionsList;
import javax.faces.FacesException;
import javax.faces.component.html.HtmlPanelGrid;

/**
 * <p>Page bean that corresponds to a similarly named JSP page.  This
 * class contains component definitions (and initialization code) for
 * all components that you have defined on this page, as well as
 * lifecycle methods and event handlers where you may add behavior
 * to respond to incoming events.</p>
 */
public class WebComponents extends AbstractPageBean
{
   // <editor-fold defaultstate="collapsed" desc="Managed Component Definition">
   private int __placeholder;
   
   /**
    * <p>Automatically managed component initialization.  <strong>WARNING:</strong>
    * This method is automatically generated, so any user-specified code inserted
    * here is subject to being replaced.</p>
    */
   private void _init() throws Exception
   {
      booksDropDownDefaultOptions.setOptions(new com.sun.webui.jsf.model.Option[] {new com.sun.webui.jsf.model.Option("Internet &amp; World Wide Web How to Program", "Internet &amp; World Wide Web How to Program"), new com.sun.webui.jsf.model.Option("Java How to Program", "Java How to Program"), new com.sun.webui.jsf.model.Option("C++ How to Program", "C++ How to Program"), new com.sun.webui.jsf.model.Option("Visual Basic 2005 How to Program", "Visual Basic 2005 How to Program"), new com.sun.webui.jsf.model.Option("Visual C# 2005 How to Program", "Visual C# 2005 How to Program")});
      osRadioGroupDefaultOptions.setOptions(new com.sun.webui.jsf.model.Option[] {new com.sun.webui.jsf.model.Option("Windows Vista", "Windows Vista"), new com.sun.webui.jsf.model.Option("Windows XP", "Windows XP"), new com.sun.webui.jsf.model.Option("Mac OS X", "Mac OS X"), new com.sun.webui.jsf.model.Option("Linux", "Linux"), new com.sun.webui.jsf.model.Option("Other", "Other")});
      osRadioGroupDefaultOptions.setSelectedValue("Windows Vista");
      booksDropDownDefaultOptions.setSelectedValue("Internet &amp; World Wide Web How to Program");
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

   private StaticText header = new StaticText();

   public StaticText getHeader()
   {
      return header;
   }

   public void setHeader(StaticText st)
   {
      this.header = st;
   }

   private StaticText instructions = new StaticText();

   public StaticText getInstructions()
   {
      return instructions;
   }

   public void setInstructions(StaticText st)
   {
      this.instructions = st;
   }

   private ImageComponent userImage = new ImageComponent();

   public ImageComponent getUserImage()
   {
      return userImage;
   }

   public void setUserImage(ImageComponent ic)
   {
      this.userImage = ic;
   }

   private HtmlPanelGrid gridPanel = new HtmlPanelGrid();

   public HtmlPanelGrid getGridPanel()
   {
      return gridPanel;
   }

   public void setGridPanel(HtmlPanelGrid hpg)
   {
      this.gridPanel = hpg;
   }

   private ImageComponent image1 = new ImageComponent();

   public ImageComponent getImage1()
   {
      return image1;
   }

   public void setImage1(ImageComponent ic)
   {
      this.image1 = ic;
   }

   private TextField firstNameTextField = new TextField();

   public TextField getFirstNameTextField()
   {
      return firstNameTextField;
   }

   public void setFirstNameTextField(TextField tf)
   {
      this.firstNameTextField = tf;
   }

   private ImageComponent image2 = new ImageComponent();

   public ImageComponent getImage2()
   {
      return image2;
   }

   public void setImage2(ImageComponent ic)
   {
      this.image2 = ic;
   }

   private TextField lastNameTextField = new TextField();

   public TextField getLastNameTextField()
   {
      return lastNameTextField;
   }

   public void setLastNameTextField(TextField tf)
   {
      this.lastNameTextField = tf;
   }

   private ImageComponent image3 = new ImageComponent();

   public ImageComponent getImage3()
   {
      return image3;
   }

   public void setImage3(ImageComponent ic)
   {
      this.image3 = ic;
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

   private ImageComponent image4 = new ImageComponent();

   public ImageComponent getImage4()
   {
      return image4;
   }

   public void setImage4(ImageComponent ic)
   {
      this.image4 = ic;
   }

   private TextField phontTextField = new TextField();

   public TextField getPhontTextField()
   {
      return phontTextField;
   }

   public void setPhontTextField(TextField tf)
   {
      this.phontTextField = tf;
   }

   private ImageComponent image5 = new ImageComponent();

   public ImageComponent getImage5()
   {
      return image5;
   }

   public void setImage5(ImageComponent ic)
   {
      this.image5 = ic;
   }

   private StaticText publicationLabel = new StaticText();

   public StaticText getPublicationLabel()
   {
      return publicationLabel;
   }

   public void setPublicationLabel(StaticText st)
   {
      this.publicationLabel = st;
   }

   private DropDown booksDropDown = new DropDown();

   public DropDown getBooksDropDown()
   {
      return booksDropDown;
   }

   public void setBooksDropDown(DropDown dd)
   {
      this.booksDropDown = dd;
   }

   private SingleSelectOptionsList booksDropDownDefaultOptions = new SingleSelectOptionsList();

   public SingleSelectOptionsList getBooksDropDownDefaultOptions()
   {
      return booksDropDownDefaultOptions;
   }

   public void setBooksDropDownDefaultOptions(SingleSelectOptionsList ssol)
   {
      this.booksDropDownDefaultOptions = ssol;
   }

   private RadioButtonGroup osRadioGroup = new RadioButtonGroup();

   public RadioButtonGroup getOsRadioGroup()
   {
      return osRadioGroup;
   }

   public void setOsRadioGroup(RadioButtonGroup rbg)
   {
      this.osRadioGroup = rbg;
   }

   private SingleSelectOptionsList osRadioGroupDefaultOptions = new SingleSelectOptionsList();

   public SingleSelectOptionsList getOsRadioGroupDefaultOptions()
   {
      return osRadioGroupDefaultOptions;
   }

   public void setOsRadioGroupDefaultOptions(SingleSelectOptionsList ssol)
   {
      this.osRadioGroupDefaultOptions = ssol;
   }

   private Button registerButton = new Button();

   public Button getRegisterButton()
   {
      return registerButton;
   }

   public void setRegisterButton(Button b)
   {
      this.registerButton = b;
   }

   private ImageComponent image6 = new ImageComponent();

   public ImageComponent getImage6()
   {
      return image6;
   }

   public void setImage6(ImageComponent ic)
   {
      this.image6 = ic;
   }

   private StaticText osLabel = new StaticText();

   public StaticText getOsLabel()
   {
      return osLabel;
   }

   public void setOsLabel(StaticText st)
   {
      this.osLabel = st;
   }

   private Hyperlink deitelHyperlink = new Hyperlink();

   public Hyperlink getDeitelHyperlink()
   {
      return deitelHyperlink;
   }

   public void setDeitelHyperlink(Hyperlink h)
   {
      this.deitelHyperlink = h;
   }
   
   // </editor-fold>
   
   /**
    * <p>Construct a new Page bean instance.</p>
    */
   public WebComponents()
   {
   }
   
   /**
    * <p>Callback method that is called whenever a page is navigated to,
    * either directly via a URL, or indirectly via page navigation.
    * Customize this method to acquire resources that will be needed
    * for event handlers and lifecycle methods, whether or not this
    * page is performing post back processing.</p>
    *
    * <p>Note that, if the current request is a postback, the property
    * values of the components do <strong>not</strong> represent any
    * values submitted with this request.  Instead, they represent the
    * property values that were saved for this view when it was rendered.</p>
    */
   public void init()
   {
      // Perform initializations inherited from our superclass
      super.init();
      // Perform application initialization that must complete
      // *before* managed components are initialized
      // TODO - add your own initialiation code here
      
      // <editor-fold defaultstate="collapsed" desc="Managed Component Initialization">
      // Initialize automatically managed components
      // *Note* - this logic should NOT be modified
      try
      {
         _init();
      }
      catch (Exception e)
      {
         log("Page1 Initialization Failure", e);
         throw e instanceof FacesException ? (FacesException) e: new FacesException(e);
      }
      
      // </editor-fold>
      // Perform application initialization that must complete
      // *after* managed components are initialized
      // TODO - add your own initialization code here
   }
   
   /**
    * <p>Callback method that is called after the component tree has been
    * restored, but before any event processing takes place.  This method
    * will <strong>only</strong> be called on a postback request that
    * is processing a form submit.  Customize this method to allocate
    * resources that will be required in your event handlers.</p>
    */
   public void preprocess()
   {
   }
   
   /**
    * <p>Callback method that is called just before rendering takes place.
    * This method will <strong>only</strong> be called for the page that
    * will actually be rendered (and not, for example, on a page that
    * handled a postback and then navigated to a different page).  Customize
    * this method to allocate resources that will be required for rendering
    * this page.</p>
    */
   public void prerender()
   {
   }
   
   /**
    * <p>Callback method that is called after rendering is completed for
    * this request, if <code>init()</code> was called (regardless of whether
    * or not this was the page that was actually rendered).  Customize this
    * method to release resources acquired in the <code>init()</code>,
    * <code>preprocess()</code>, or <code>prerender()</code> methods (or
    * acquired during execution of an event handler).</p>
    */
   public void destroy()
   {
   }

   /**
    * <p>Return a reference to the scoped data bean.</p>
    */
   protected SessionBean1 getSessionBean1()
   {
      return (SessionBean1)getBean("SessionBean1");
   }

   /**
    * <p>Return a reference to the scoped data bean.</p>
    */
   protected RequestBean1 getRequestBean1()
   {
      return (RequestBean1)getBean("RequestBean1");
   }

   /**
    * <p>Return a reference to the scoped data bean.</p>
    */
   protected ApplicationBean1 getApplicationBean1()
   {
      return (ApplicationBean1)getBean("ApplicationBean1");
   }
}

