<?xml version="1.0" encoding="UTF-8"?>
<!-- Fig. 26.14: WebComponents.jsp -->
<!-- Registration form that demonstrates JSF components -->
<jsp:root version="1.2" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:webuijsf="http://www.sun.com/webui/webuijsf">
    <jsp:directive.page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <f:view>
        <webuijsf:page binding="#{WebComponents.page1}" id="page1">
            <webuijsf:html binding="#{WebComponents.html1}" id="html1">
                <webuijsf:head binding="#{WebComponents.head1}" id="head1" title="Sample Registration Form">
                    <webuijsf:link binding="#{WebComponents.link1}" id="link1" url="/resources/stylesheet.css"/>
                </webuijsf:head>
                <webuijsf:body binding="#{WebComponents.body1}" id="body1" style="-rave-layout: grid">
                    <webuijsf:form binding="#{WebComponents.form1}" id="form1">
                        <webuijsf:staticText binding="#{WebComponents.header}" id="header"
                            style="font-size: 18px; left: 24px;                     top: 24px; position: absolute; width: 264px" text="This is a sample registration form"/>
                        <webuijsf:staticText binding="#{WebComponents.instructions}" id="instructions"
                            style="font-size: 12px;                     font-style: italic; left: 24px; top: 48px;                     position: absolute" text="Please fill in all fields and click Register"/>
                        <webuijsf:image binding="#{WebComponents.userImage}" id="userImage"
                            style="left: 24px; top: 72px;                     position: absolute" url="/resources/user.JPG"/>
                        <h:panelGrid binding="#{WebComponents.gridPanel}" columns="4" id="gridPanel"
                            style="height: 96px;                     left: 24px; top: 96px; position: absolute" width="576">
                            <webuijsf:image binding="#{WebComponents.image1}" id="image1" url="/resources/fname.JPG"/>
                            <webuijsf:textField binding="#{WebComponents.firstNameTextField}" id="firstNameTextField"/>
                            <webuijsf:image binding="#{WebComponents.image2}" id="image2" url="/resources/lname.JPG"/>
                            <webuijsf:textField binding="#{WebComponents.lastNameTextField}" id="lastNameTextField"/>
                            <webuijsf:image binding="#{WebComponents.image4}" id="image4" url="/resources/email.JPG"/>
                            <webuijsf:textField binding="#{WebComponents.emailTextField}" id="emailTextField"/>
                            <webuijsf:image binding="#{WebComponents.image3}" id="image3" url="/resources/phone.JPG"/>
                            <webuijsf:textField binding="#{WebComponents.phontTextField}" id="phontTextField"/>
                        </h:panelGrid>
                        <webuijsf:image binding="#{WebComponents.image5}" id="image5" style="left: 24px; top: 216px;                     position: absolute" url="/resources/publications.JPG"/>
                        <webuijsf:staticText binding="#{WebComponents.publicationLabel}" id="publicationLabel"
                            style="font-size: 12px;                     left: 216px; top: 216px; position: absolute" text="Which book would you like information about?"/>
                        <webuijsf:dropDown binding="#{WebComponents.booksDropDown}" id="booksDropDown"
                            items="#{WebComponents.booksDropDownDefaultOptions.options}"
                            selected="#{WebComponents.booksDropDownDefaultOptions.                    selectedValue}" style="left: 24px; top: 240px;                     position: absolute"/>
                        <webuijsf:radioButtonGroup binding="#{WebComponents.osRadioGroup}" id="osRadioGroup"
                            items="#{WebComponents.osRadioGroupDefaultOptions.options}"
                            selected="#{WebComponents.osRadioGroupDefaultOptions.                    selectedValue}" style="left: 24px; top: 336px;                     position: absolute"/>
                        <webuijsf:button binding="#{WebComponents.registerButton}" id="registerButton"
                            style="left: 23px; top: 480px; position: absolute;                     width: 100px" text="Register"/>
                        <webuijsf:image binding="#{WebComponents.image6}" id="image6" style="left: 24px; top: 312px;                     position: absolute" url="/resources/os.JPG"/>
                        <webuijsf:staticText binding="#{WebComponents.osLabel}" id="osLabel"
                            style="font-size: 12px; left: 216px;                     top: 312px; position: absolute" text="What operating system are you using?"/>
                        <webuijsf:hyperlink binding="#{WebComponents.deitelHyperlink}" id="deitelHyperlink"
                            style="left: 24px; top: 264px;                    position: absolute" target="_blank"
                            text="Click here to learn more about our books" url="http://www.deitel.com"/>
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
