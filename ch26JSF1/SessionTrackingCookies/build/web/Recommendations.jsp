<?xml version = "1.0" encoding = "UTF-8"?>

<!-- Fig. 27.23: Recommendations.jsp -->
<!-- Displays book recommendations using cookies -->
<jsp:root version = "1.2" 
   xmlns:f = "http://java.sun.com/jsf/core" 
   xmlns:h = "http://java.sun.com/jsf/html" 
   xmlns:jsp = "http://java.sun.com/JSP/Page" 
   xmlns:webuijsf = "http://www.sun.com/webui/webuijsf">
   <jsp:directive.page contentType = "text/html;charset=UTF-8" 
      pageEncoding = "UTF-8"/>
   <f:view>
   <webuijsf:page binding = "#{Recommendations.page1}" id = "page1">
      <webuijsf:html binding = "#{Recommendations.html1}" id = "html1">
         <webuijsf:head binding = "#{Recommendations.head1}" id = "head1">
            <webuijsf:link binding = "#{Recommendations.link1}" 
               id = "link1" url = "/resources/stylesheet.css"/>
            </webuijsf:head>
            <webuijsf:body binding = "#{Recommendations.body1}" 
               id = "body1" style = "-rave-layout: grid">
               <webuijsf:form binding = "#{Recommendations.form1}" 
                  id = "form1">
                  <webuijsf:label binding = 
                     "#{Recommendations.recommendationsLabel}" for = 
                     "recommendationsListbox" id = "recommendationsLabel"
                     style = "font-size: 18px; left: 24px; top: 24px; 
                     position: absolute" text = "Recommendations"/>
                  <webuijsf:listbox binding = 
                     "#{Recommendations.recommendationsListbox}" id = 
                     "recommendationsListbox" items = "#{Recommendations.
                     recommendationsListboxDefaultOptions.options}" 
                     style = "height: 96px; left: 24px; top: 48px; 
                     position: absolute; width: 360px"/>
                  <webuijsf:hyperlink actionExpression = 
                     "#{Recommendations.optionsLink_action}" binding = 
                     "#{Recommendations.optionsLink}" id = "optionsLink"
                     style = "left: 24px; top: 168px; position: absolute" 
                     text = "Click here to choose another language."/>
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
