// Fig. 27.13: AddressBook.java
// Page bean for AddressBook.jsp.
package addressbook;

import com.sun.data.provider.RowKey;
import com.sun.data.provider.impl.CachedRowSetDataProvider;
import com.sun.j2ee.blueprints.ui.autocomplete.AutoCompleteComponent;
import com.sun.j2ee.blueprints.ui.autocomplete.CompletionResult;
import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.webui.jsf.component.Body;
import com.sun.webui.jsf.component.Button;
import com.sun.webui.jsf.component.Form;
import com.sun.webui.jsf.component.Head;
import com.sun.webui.jsf.component.Html;
import com.sun.webui.jsf.component.Label;
import com.sun.webui.jsf.component.Link;
import com.sun.webui.jsf.component.MessageGroup;
import com.sun.webui.jsf.component.Page;
import com.sun.webui.jsf.component.StaticText;
import com.sun.webui.jsf.component.Table;
import com.sun.webui.jsf.component.TableColumn;
import com.sun.webui.jsf.component.TableRowGroup;
import com.sun.webui.jsf.component.TextField;
import com.sun.webui.jsf.model.DefaultTableDataProvider;
import javax.faces.FacesException;
import javax.faces.context.FacesContext;

public class AddressBook extends AbstractPageBean
{
   private int __placeholder;
   
   private void _init() throws Exception
   {
      addressesDataProvider.setCachedRowSet(
         ( javax.sql.rowset.CachedRowSet ) getValue(
            "#{SessionBean1.addressesRowSet}" ) );
      addressesTable.setInternalVirtualForm( true );
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

   private StaticText staticText1 = new StaticText();

   public StaticText getStaticText1()
   {
      return staticText1;
   }

   public void setStaticText1(StaticText st)
   {
      this.staticText1 = st;
   }

   private Label fnameLabel = new Label();

   public Label getFnameLabel()
   {
      return fnameLabel;
   }

   public void setFnameLabel(Label l)
   {
      this.fnameLabel = l;
   }

   private TextField fnameTextField = new TextField();

   public TextField getFnameTextField()
   {
      return fnameTextField;
   }

   public void setFnameTextField(TextField tf)
   {
      this.fnameTextField = tf;
   }

   private Label lnameLabel = new Label();

   public Label getLnameLabel()
   {
      return lnameLabel;
   }

   public void setLnameLabel(Label l)
   {
      this.lnameLabel = l;
   }

   private TextField lnameTextField = new TextField();

   public TextField getLnameTextField()
   {
      return lnameTextField;
   }

   public void setLnameTextField(TextField tf)
   {
      this.lnameTextField = tf;
   }

   private Label streetLabel = new Label();

   public Label getStreetLabel()
   {
      return streetLabel;
   }

   public void setStreetLabel(Label l)
   {
      this.streetLabel = l;
   }

   private TextField streetTextField = new TextField();

   public TextField getStreetTextField()
   {
      return streetTextField;
   }

   public void setStreetTextField(TextField tf)
   {
      this.streetTextField = tf;
   }

   private Label cityLabel = new Label();

   public Label getCityLabel()
   {
      return cityLabel;
   }

   public void setCityLabel(Label l)
   {
      this.cityLabel = l;
   }

   private TextField cityTextField = new TextField();

   public TextField getCityTextField()
   {
      return cityTextField;
   }

   public void setCityTextField(TextField tf)
   {
      this.cityTextField = tf;
   }

   private Label stateLabel = new Label();

   public Label getStateLabel()
   {
      return stateLabel;
   }

   public void setStateLabel(Label l)
   {
      this.stateLabel = l;
   }

   private TextField stateTextField = new TextField();

   public TextField getStateTextField()
   {
      return stateTextField;
   }

   public void setStateTextField(TextField tf)
   {
      this.stateTextField = tf;
   }

   private Label zipLabel = new Label();

   public Label getZipLabel()
   {
      return zipLabel;
   }

   public void setZipLabel(Label l)
   {
      this.zipLabel = l;
   }

   private TextField zipTextField = new TextField();

   public TextField getZipTextField()
   {
      return zipTextField;
   }

   public void setZipTextField(TextField tf)
   {
      this.zipTextField = tf;
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

   private Button clearButton = new Button();

   public Button getClearButton()
   {
      return clearButton;
   }

   public void setClearButton(Button b)
   {
      this.clearButton = b;
   }

   private MessageGroup messageGroup1 = new MessageGroup();

   public MessageGroup getMessageGroup1()
   {
      return messageGroup1;
   }

   public void setMessageGroup1(MessageGroup mg)
   {
      this.messageGroup1 = mg;
   }

   private Table addressesTable = new Table();

   public Table getAddressesTable()
   {
      return addressesTable;
   }

   public void setAddressesTable(Table t)
   {
      this.addressesTable = t;
   }

   private TableRowGroup tableRowGroup1 = new TableRowGroup();

   public TableRowGroup getTableRowGroup1()
   {
      return tableRowGroup1;
   }

   public void setTableRowGroup1(TableRowGroup trg)
   {
      this.tableRowGroup1 = trg;
   }

   private CachedRowSetDataProvider addressesDataProvider = 
      new CachedRowSetDataProvider();

   public CachedRowSetDataProvider getAddressesDataProvider()
   {
      return addressesDataProvider;
   }

   public void setAddressesDataProvider( CachedRowSetDataProvider crsdp )
   {
      this.addressesDataProvider = crsdp;
   }

   private TableColumn fnameColumn = new TableColumn();

   public TableColumn getFnameColumn()
   {
      return fnameColumn;
   }

   public void setFnameColumn(TableColumn tc)
   {
      this.fnameColumn = tc;
   }

   private StaticText staticText2 = new StaticText();

   public StaticText getStaticText2()
   {
      return staticText2;
   }

   public void setStaticText2(StaticText st)
   {
      this.staticText2 = st;
   }

   private TableColumn lnameColumn = new TableColumn();

   public TableColumn getLnameColumn()
   {
      return lnameColumn;
   }

   public void setLnameColumn(TableColumn tc)
   {
      this.lnameColumn = tc;
   }

   private StaticText staticText3 = new StaticText();

   public StaticText getStaticText3()
   {
      return staticText3;
   }

   public void setStaticText3(StaticText st)
   {
      this.staticText3 = st;
   }

   private TableColumn streetColumn = new TableColumn();

   public TableColumn getStreetColumn()
   {
      return streetColumn;
   }

   public void setStreetColumn(TableColumn tc)
   {
      this.streetColumn = tc;
   }

   private StaticText staticText4 = new StaticText();

   public StaticText getStaticText4()
   {
      return staticText4;
   }

   public void setStaticText4(StaticText st)
   {
      this.staticText4 = st;
   }

   private TableColumn cityColumn = new TableColumn();

   public TableColumn getCityColumn()
   {
      return cityColumn;
   }

   public void setCityColumn(TableColumn tc)
   {
      this.cityColumn = tc;
   }

   private StaticText staticText5 = new StaticText();

   public StaticText getStaticText5()
   {
      return staticText5;
   }

   public void setStaticText5(StaticText st)
   {
      this.staticText5 = st;
   }

   private TableColumn stateColumn = new TableColumn();

   public TableColumn getStateColumn()
   {
      return stateColumn;
   }

   public void setStateColumn(TableColumn tc)
   {
      this.stateColumn = tc;
   }

   private StaticText staticText6 = new StaticText();

   public StaticText getStaticText6()
   {
      return staticText6;
   }

   public void setStaticText6(StaticText st)
   {
      this.staticText6 = st;
   }

   private TableColumn zipColumn = new TableColumn();

   public TableColumn getZipColumn()
   {
      return zipColumn;
   }

   public void setZipColumn(TableColumn tc)
   {
      this.zipColumn = tc;
   }

   private StaticText staticText7 = new StaticText();

   public StaticText getStaticText7()
   {
      return staticText7;
   }

   public void setStaticText7(StaticText st)
   {
      this.staticText7 = st;
   }

   private StaticText searchHeader = new StaticText();

   public StaticText getSearchHeader()
   {
      return searchHeader;
   }

   public void setSearchHeader(StaticText st)
   {
      this.searchHeader = st;
   }

   private AutoCompleteComponent nameAutoComplete =
      new AutoCompleteComponent();

   public AutoCompleteComponent getNameAutoComplete()
   {
      return nameAutoComplete;
   }

   public void setNameAutoComplete(AutoCompleteComponent acc)
   {
      this.nameAutoComplete = acc;
   }

   private Label label1 = new Label();

   public Label getLabel1()
   {
      return label1;
   }

   public void setLabel1(Label l)
   {
      this.label1 = l;
   }

   private Button lookUpButton = new Button();

   public Button getLookUpButton()
   {
      return lookUpButton;
   }

   public void setLookUpButton(Button b)
   {
      this.lookUpButton = b;
   }
   
   public AddressBook()
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
         log( "Page1 Initialization Failure", e );
         throw e instanceof FacesException ? ( FacesException ) e : 
            new FacesException( e );
      }
   }
   
   public void preprocess()
   {
   }
   
   public void prerender()
   {
      addressesDataProvider.refresh();
   } // end method prerender
   
   public void destroy()
   {
      addressesDataProvider.close();
   } // end method destroy

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

   // action handler that adds a contact to the AddressBook database
   // when the user clicks submit
   public String submitButton_action() 
   {
      if ( addressesDataProvider.canAppendRow() ) 
      {
         try 
         {
            RowKey rk = addressesDataProvider.appendRow();
            addressesDataProvider.setCursorRow( rk );
            
            addressesDataProvider.setValue( "ADDRESSES.FIRSTNAME",
               fnameTextField.getValue() );
            addressesDataProvider.setValue( "ADDRESSES.LASTNAME",
               lnameTextField.getValue() );
            addressesDataProvider.setValue( "ADDRESSES.STREET",
               streetTextField.getValue() );
            addressesDataProvider.setValue( "ADDRESSES.CITY",
               cityTextField.getValue() );
            addressesDataProvider.setValue( "ADDRESSES.STATE",
               stateTextField.getValue() );
            addressesDataProvider.setValue( "ADDRESSES.ZIP",
               zipTextField.getValue() );
            addressesDataProvider.commitChanges();
                        
            // reset text fields
            lnameTextField.setValue( "" );
            fnameTextField.setValue( "" );
            streetTextField.setValue( "" );
            cityTextField.setValue( "" );
            stateTextField.setValue( "" );
            zipTextField.setValue( "" );
         } // end try
         catch ( Exception ex ) 
         {
            error( "The address book was not updated.  " +
               ex.getMessage() );
         } // end catch
      } // end if

      return null;
   } // end method submitButton_action

   // action handler for the autocomplete box that fetches names
   // from the address book whose prefixes match the letters typed so far
   // and displays them in a suggestion list.
   public void nameAutoComplete_complete(
      FacesContext context, String prefix, CompletionResult result )
   {
      try
      {
         boolean hasNext = addressesDataProvider.cursorFirst();

         while ( hasNext )
         {
            // get a name from the database
            String name =
               (String) addressesDataProvider.getValue( 
               "ADDRESSES.LASTNAME" ) + ", " +
               (String) addressesDataProvider.getValue(
               "ADDRESSES.FIRSTNAME" ) ;
            
            // if the name in the database starts with the prefix, 
            // add it to the list of suggestions
            if ( name.toLowerCase().startsWith( prefix.toLowerCase() ) )
            {
               result.addItem( name );
            } // end if
            else
            {
               // terminate the loop if the rest of the names are 
               // alphabetically less than the prefix
               if ( prefix.compareTo( name ) < 0 )
               {
                  break;
               } // end if
            } // end else
            
            // move cursor to next row of database
            hasNext = addressesDataProvider.cursorNext();
         } // end while
      } // end try
      catch ( Exception ex )
      {
         result.addItem( "Exception getting matching names." );
      } // end catch
   } // end method nameAutoComplete_complete
} // end class AddressBook


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

