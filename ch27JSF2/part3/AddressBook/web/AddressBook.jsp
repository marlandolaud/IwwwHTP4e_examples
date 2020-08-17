<?xml version="1.0" encoding="UTF-8"?>
<!-- Fig. 27.14: AddressBook.jsp -->
<!-- AddressBook JSP with an add form and a Table JSF component. -->

<jsp:root version="1.2" 
   xmlns:bp="http://java.sun.com/blueprints/ui/14" 
   xmlns:f="http://java.sun.com/jsf/core" 
   xmlns:h="http://java.sun.com/jsf/html"
   xmlns:jsp="http://java.sun.com/JSP/Page"
   xmlns:webuijsf="http://www.sun.com/webui/webuijsf">
   <jsp:directive.page contentType="text/html;charset=UTF-8"
      pageEncoding="UTF-8"/>
   <f:view>
   <webuijsf:page binding="#{AddressBook.page1}" id="page1">
      <webuijsf:html binding="#{AddressBook.html1}" id="html1">
         <webuijsf:head binding="#{AddressBook.head1}" id="head1">
           <webuijsf:link binding="#{AddressBook.link1}" id="link1" 
              url="/resources/stylesheet.css"/>
         </webuijsf:head>
         <webuijsf:body binding="#{AddressBook.body1}" id="body1" 
            style="-rave-layout: grid">
            <webuijsf:form binding="#{AddressBook.form1}" id="form1"
               virtualFormsConfig="addForm | zipTextField lnameTextField 
               fnameTextField streetTextField cityTextField stateTextField
               | submitButton , searchForm | nameAutoComplete | 
               lookUpButton">
               <webuijsf:staticText binding=
                  "#{AddressBook.staticText1}" id="staticText1" style=
                  "font-size: 18px; left: 24px; top: 24px; position: 
                  absolute" text="Add a contact to the address book:"/>
               <webuijsf:label binding="#{AddressBook.fnameLabel}" 
                  for="fnameTextField" id="fnameLabel" style="position:
                  absolute; left: 24px; top: 72px" text="First name:"/>
               <webuijsf:textField binding="#{AddressBook.fnameTextField}"
                  id="fnameTextField" maxLength="30" required="true" 
                  style="left: 100px; top: 72px; position: absolute; 
                  width: 192px"/>
               <webuijsf:label binding="#{AddressBook.lnameLabel}" 
                  for="lnameTextField" id="lnameLabel" style="left: 312px;
                  top: 72px; position: absolute" text="Last name:"/>
               <webuijsf:textField binding="#{AddressBook.lnameTextField}"
                  id="lnameTextField" maxLength="30" required="true" 
                  style="left: 390px; top: 72px; position: absolute;
                  width: 214px"/>
               <webuijsf:label binding="#{AddressBook.streetLabel}" 
                  for="streetTextField" id="streetLabel" style="position:
                  absolute; left: 24px; top: 96px" text="Street:"/>
               <webuijsf:textField binding=
                  "#{AddressBook.streetTextField}" id="streetTextField" 
                  maxLength="150" required="true" style="left: 100px;
                  top: 96px; position: absolute; width: 504px"/>
               <webuijsf:label binding="#{AddressBook.cityLabel}" 
                  for="cityTextField" id="cityLabel" style="left: 24px;
                  top: 120px; position: absolute" text="City:"/>
               <webuijsf:textField binding="#{AddressBook.cityTextField}" 
                  id="cityTextField" maxLength="30" required="true" 
                  style="left: 100px; top: 120px; position: absolute;
                  width: 240px"/>
               <webuijsf:label binding="#{AddressBook.stateLabel}" 
                  for="stateTextField" id="stateLabel"
                  style="left: 360px; top: 120px; position: absolute" 
                  text="State:"/>
               <webuijsf:textField binding="#{AddressBook.stateTextField}"
                  id="stateTextField" maxLength="2" required="true" 
                  style="left: 412px; top: 120px; position: absolute;
                  width: 48px"/>
               <webuijsf:label binding="#{AddressBook.zipLabel}" 
                  for="zipTextField" id="zipLabel" style="left: 490px;
                  top: 120px; position: absolute" text="Zip:"/>
               <webuijsf:textField binding="#{AddressBook.zipTextField}"
                  id="zipTextField" maxLength="5" required="true" 
                  style="left: 534px; top: 120px; position: absolute;
                  width: 70px"/>
               <webuijsf:button actionExpression=
                  "#{AddressBook.submitButton_action}" binding=
                  "#{AddressBook.submitButton}" id="submitButton"
                  primary="true" style="left: 100px; top: 168px; position:
                  absolute; width: 100px" text="Submit"/>
               <webuijsf:button binding="#{AddressBook.clearButton}" 
                  id="clearButton" reset="true" style="left: 215px; top:
                  168px; position: absolute; width: 100px" text="Clear"/>
               <webuijsf:messageGroup binding=
                  "#{AddressBook.messageGroup1}" id="messageGroup1" 
                  showGlobalOnly="true" style="left: 624px; top: 72px;
                  position: absolute"/>
               <webuijsf:table augmentTitle="false" binding=
                  "#{AddressBook.addressesTable}" id="addressesTable" 
                  paginateButton="true" paginationControls="true" 
                  style="left: 24px; top: 216px; position: absolute" 
                  title="Contacts" width="816">
                  <webuijsf:tableRowGroup binding=
                     "#{AddressBook.tableRowGroup1}" id="tableRowGroup1" 
                     rows="5" sourceData=
                     "#{AddressBook.addressesDataProvider}" 
                     sourceVar="currentRow">
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.fnameColumn}" 
                        headerText="First Name" id="fnameColumn" 
                        sort="ADDRESSES.FIRSTNAME">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText2}" id="staticText2" 
                           text="#{currentRow.value[
                           'ADDRESSES.FIRSTNAME']}"/>
                     </webuijsf:tableColumn>
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.lnameColumn}" 
                        headerText="Last Name" id="lnameColumn" 
                        sort="ADDRESSES.LASTNAME">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText3}" id="staticText3" 
                           text="#{currentRow.value[
                           'ADDRESSES.LASTNAME']}"/>
                     </webuijsf:tableColumn>
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.streetColumn}" headerText="Street"
                        id="streetColumn" sort="ADDRESSES.STREET">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText4}" id="staticText4" 
                           text="#{currentRow.value[
                           'ADDRESSES.STREET']}"/>
                     </webuijsf:tableColumn>
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.cityColumn}" headerText="City" 
                        id="cityColumn" sort="ADDRESSES.CITY">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText5}" id="staticText5" 
                           text="#{currentRow.value['ADDRESSES.CITY']}"/>
                     </webuijsf:tableColumn>
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.stateColumn}" headerText="State" 
                        id="stateColumn" sort="ADDRESSES.STATE">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText6}" id="staticText6" 
                           text="#{currentRow.value['ADDRESSES.STATE']}"/>
                     </webuijsf:tableColumn>
                     <webuijsf:tableColumn binding=
                        "#{AddressBook.zipColumn}" headerText="Zip" 
                        id="zipColumn" sort="ADDRESSES.ZIP" width="106">
                        <webuijsf:staticText binding=
                           "#{AddressBook.staticText7}" id="staticText7" 
                           text="#{currentRow.value['ADDRESSES.ZIP']}"/>
                     </webuijsf:tableColumn>
                  </webuijsf:tableRowGroup>
               </webuijsf:table>
               <webuijsf:staticText binding="#{AddressBook.searchHeader}" 
                  id="searchHeader" style="font-size: 18px; left: 24px;
                  top: 420px; position: absolute" 
                  text="Search the address book by last name:"/>
               <bp:autoComplete binding=
                  "#{AddressBook.nameAutoComplete}" completionMethod=
                  "#{AddressBook.nameAutoComplete_complete}" 
                  id="nameAutoComplete" 
                  style="left: 96px; top: 444px; position: absolute"/>
               <webuijsf:label binding="#{AddressBook.label1}" 
                  for="nameAutoComplete" id="label1" style="left: 24px;
                  top: 447px; position: absolute" text="Last name:"/>
               <webuijsf:button actionExpression=
                  "#{AddressBook.lookUpButton_action}" 
                  binding="#{AddressBook.lookUpButton}" id="lookUpButton"
                  style="left: 288px; top: 446px; position: absolute; 
                  width: 100px" text="Look Up"/>
               <bp:mapViewer binding="#{AddressBook.mapViewer}" 
                  center="#{AddressBook.mapViewer_center}" 
                  id="mapViewer" info="#{AddressBook.mapMarker}"
                  key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
                  style="height: 550px; left: 24px; top: 480px; 
                  position: absolute; width: 814px" zoomLevel="4"/>
            </webuijsf:form>
         </webuijsf:body>
      </webuijsf:html>
   </webuijsf:page>
   </f:view>
</jsp:root>
<!-- (C) Copyright 1992-2008 by Deitel & Associates, Inc. and          -->
<!-- Pearson Education, Inc. All Rights Reserved.                      -->
<!--                                                                   -->
<!-- DISCLAIMER: The authors and publisher of this book have used their-->
<!-- best efforts in preparing the book. These efforts include the     -->
<!-- development, research, and testing of the theories and programs   -->
<!-- to determine their effectiveness. The authors and publisher make  -->
<!-- no warranty of any kind, expressed or implied, with regard to     -->
<!-- these programs or to the documentation contained in these books.  -->
<!-- The authors and publisher shall not be liable in any event for    -->
<!-- incidental or consequential damages in connection with, or        -->
<!-- arising out of, the furnishing, performance, or use of these      -->
<!-- programs.                                                         -->
