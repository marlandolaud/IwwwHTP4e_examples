<?xml version="1.0" encoding="UTF-8"?>

<!-- Fig. 28.16 Reserve.jsp -->
<!-- JSP that allows a user to select a seat -->
<jsp:root version="1.2" 
   xmlns:f="http://java.sun.com/jsf/core" 
   xmlns:h="http://java.sun.com/jsf/html" 
   xmlns:jsp="http://java.sun.com/JSP/Page" 
   xmlns:webuijsf="http://www.sun.com/webui/webuijsf">
   <jsp:directive.page contentType="text/html;charset=UTF-8" 
      pageEncoding="UTF-8"/>
   <f:view>
   <webuijsf:page binding="#{Reserve.page1}" id="page1">
      <webuijsf:html binding="#{Reserve.html1}" id="html1">
         <webuijsf:head binding="#{Reserve.head1}" id="head1">
            <webuijsf:link binding="#{Reserve.link1}" id="link1" 
               url="/resources/stylesheet.css"/>
         </webuijsf:head>
         <webuijsf:body binding="#{Reserve.body1}" id="body1"
            style="-rave-layout: grid">
            <webuijsf:form binding="#{Reserve.form1}" id="form1">
               <webuijsf:label binding="#{Reserve.instructionLabel}" 
                  id="instructionLabel" style="left: 24px; top: 24px; 
                  position: absolute" text="Please select the seat type 
                  and class to reserve:"/>
               <webuijsf:dropDown binding="#{Reserve.seatTypeDropDown}" 
                  id="seatTypeDropDown" items=
                  "#{Reserve.seatTypeDropDownDefaultOptions.options}"
                  style="left: 310px; top: 21px; position: absolute" 
                  valueChangeListenerExpression=
                  "#{Reserve.seatTypeDropDown_processValueChange}"/>
               <webuijsf:dropDown binding="#{Reserve.classTypeDropDown}" 
                  id="classTypeDropDown" items=
                  "#{Reserve.classTypeDropDownDefaultOptions.options}" 
                  style="left: 385px; top: 21px; position: absolute" 
                  valueChangeListenerExpression=
                  "#{Reserve.classTypeDropDown_processValueChange}"/>
               <webuijsf:button actionExpression=
                  "#{Reserve.reserveButton_action}" binding=
                  "#{Reserve.reserveButton}" id="reserveButton" style=
                  "height: 20px; left: 460px; top: 21px; position: 
                  absolute; width: 100px" text="Reserve"/>
               <webuijsf:label binding="#{Reserve.errorLabel}" 
                  id="errorLabel" rendered="false" style="color: red;  
                  left: 24px; top: 48px; position: absolute" text="This 
                  type of seat is not available. Please modify your 
                  request and try again."/>
               <webuijsf:label binding="#{Reserve.successLabel}" 
                  id="successLabel" rendered="false" style="left: 24px; 
                  top: 24px; position: absolute" 
                  text="Your reservation has been made. Thank you!"/>
            </webuijsf:form>
         </webuijsf:body>
      </webuijsf:html>
   </webuijsf:page>
   </f:view>
</jsp:root>
