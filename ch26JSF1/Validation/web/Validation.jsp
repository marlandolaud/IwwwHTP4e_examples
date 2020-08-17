<?xml version = "1.0" encoding = "UTF-8"?>

<!-- Fig. 26.15: Validation.jsp -->
<!-- JSP that demonstrates validation of user input. -->
<jsp:root version = "1.2" 
   xmlns:f = "http://java.sun.com/jsf/core" 
   xmlns:h = "http://java.sun.com/jsf/html" 
   xmlns:jsp = "http://java.sun.com/JSP/Page" 
   xmlns:webuijsf = "http://www.sun.com/webui/webuijsf">
   <jsp:directive.page contentType = "text/html;charset=UTF-8" 
      pageEncoding = "UTF-8"/>
   <f:view>
   <webuijsf:page binding = "#{Validation.page1}" id = "page1">
      <webuijsf:html binding = "#{Validation.html1}" id = "html1">
         <webuijsf:head binding = "#{Validation.head1}" id = "head1">
            <webuijsf:link binding = "#{Validation.link1}" id = "link1" 
               url = "/resources/stylesheet.css"/>
         </webuijsf:head>
         <webuijsf:body binding = "#{Validation.body1}" id = "body1" 
            style = "-rave-layout: grid">
            <webuijsf:form binding = "#{Validation.form1}" id = "form1">
               <webuijsf:staticText binding = "#{Validation.headerText}" 
                  id = "headerText" style = "font-size: 14px; font-weight:
                  bold; left: 24px; top: 24px; position: absolute" 
                  text = "Please fill out the following form:"/>
               <webuijsf:staticText binding = 
                  "#{Validation.instructionText}" id = "instructionText"
                  style = "font-size: 12px; font-style: italic; left: 
                  24px; top: 48px; position: absolute" text = "All fields 
                  are required and must contain valid information."/>
               <webuijsf:label binding = "#{Validation.nameLabel}" for = 
                  "nameTextField" id = "nameLabel" style = "left: 24px; 
                  top: 75px; position: absolute" text = "Name:"/>
               <webuijsf:textField binding = "#{Validation.nameTextField}"
                  id = "nameTextField" required = "true" style = "left: 
                  96px; top: 72px; position: absolute; width: 216px" 
                  validatorExpression = 
                  "#{Validation.nameLengthValidator.validate}" 
                  valueChangeListenerExpression = 
                  "#{Validation.nameTextField_processValueChange}"/>
               <webuijsf:message binding = "#{Validation.nameMessage}" 
                  for = "nameTextField" id = "nameMessage" showDetail = 
                  "false" showSummary = "true" 
                  style = "left: 336px; top: 74px; position: absolute"/>
               <webuijsf:label binding = "#{Validation.emailLabel}" for = 
                  "emailTextField" id = "emailLabel" style = "left: 24px; 
                  top: 109px; position: absolute" text = "E-Mail:"/>
               <webuijsf:textField binding = 
                  "#{Validation.emailTextField}" id = "emailTextField" 
                  required = "true" style = "left: 96px; top: 106px; 
                  position: absolute; width: 216px" validatorExpression = 
                  "#{Validation.emailTextField_validate}"/>
               <webuijsf:message binding = "#{Validation.emailMessage}" 
                  for = "emailTextField" id = "emailMessage" showDetail = 
                  "false" showSummary = "true" style = "left: 336px; top: 
                  108px; position: absolute"/>
               <webuijsf:label binding = "#{Validation.phoneLabel}" for = 
                  "phoneTextField" id = "phoneLabel" style = "left: 24px;
                  top: 143px; position: absolute" text = "Phone:"/>
               <webuijsf:textField binding = 
                  "#{Validation.phoneTextField}" id = "phoneTextField" 
                  required = "true" style = "left: 96px; top: 140px; 
                  position: absolute; width: 216px" validatorExpression = 
                  "#{Validation.phoneTextField_validate}"/>
               <webuijsf:message binding = "#{Validation.phoneMessage}" 
                  for = "phoneTextField" id = "phoneMessage" showDetail = 
                  "false" showSummary = "true" style = "left: 336px; top: 
                  142px; position: absolute"/>
               <webuijsf:button actionExpression = 
                  "#{Validation.submitButton_action}" binding = 
                  "#{Validation.submitButton}" id = "submitButton" style = 
                  "left: 23px; top: 192px; position: absolute; width: 
                  100px" text = "Submit"/>
               <webuijsf:staticText binding = "#{Validation.resultText}" 
                  escape = "false" id = "resultText" rendered = "false"
                  style = "left: 24px; top: 216px; position: absolute" 
                  text = "Thank you for your submission.&lt;br/&gt;We 
                  received the following information:"/>
               <h:panelGrid binding = "#{Validation.resultGridPanel}" 
                  columns = "2" id = "resultGridPanel" rendered = "false"
                  style = "border-width: 1px; border-style: solid; 
                  background-color: #ffff99; height: 96px; left: 24px; 
                  top: 264px; position: absolute" width = "288">
                  <webuijsf:staticText binding = 
                     "#{Validation.nameResultLabel}" 
                     id = "nameResultLabel" text = "Name:"/>
                  <webuijsf:staticText binding = 
                     "#{Validation.nameResult}" id = "nameResult"/>
                  <webuijsf:staticText binding = 
                     "#{Validation.emailResultLabel}" 
                     id = "emailResultLabel" text = "E-Mail:"/>
                  <webuijsf:staticText binding = 
                     "#{Validation.emailResult}" id = "emailResult"/>
                  <webuijsf:staticText binding = 
                     "#{Validation.phoneResultLabel}" 
                     id = "phoneResultLabel" text = "Phone:"/>
                  <webuijsf:staticText binding = 
                     "#{Validation.phoneResult}" id = "phoneResult"/>
               </h:panelGrid>
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
