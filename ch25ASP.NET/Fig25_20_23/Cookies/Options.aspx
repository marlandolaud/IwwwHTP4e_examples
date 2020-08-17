<%-- Fig. 25.20 Options.aspx --%>
<%-- Allows client to select programming languages and access --%>
<%-- book recommendations. --%>
<%@ Page Language="VB" AutoEventWireup="false" 
   CodeFile="Options.aspx.vb" Inherits="Options" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Cookies</title>
</head>
<body>
   <form id="form1" runat="server">
   <div>
      <asp:Label ID="promptLabel" runat="server" Font-Bold="True" 
         Font-Size="Large" Text="Select a programming language:">
      </asp:Label>
      <asp:RadioButtonList ID="languageList" runat="server">
         <asp:ListItem>Visual Basic 2005</asp:ListItem>
         <asp:ListItem>Visual C# 2005</asp:ListItem>
         <asp:ListItem>C</asp:ListItem>
         <asp:ListItem>C++</asp:ListItem>
         <asp:ListItem>Java</asp:ListItem>
      </asp:RadioButtonList>
      <asp:Button ID="submitButton" runat="server" Text="Submit" />
      <asp:Label ID="responseLabel" runat="server" Font-Bold="True" 
         Font-Size="Large" Text="Welcome to cookies!" Visible="False">
      </asp:Label><br />
      <br />
      <asp:HyperLink ID="languageLink" runat="server" 
         NavigateUrl="~/Options.aspx" Visible="False">
         Click here to choose another language
      </asp:HyperLink><br />
      <br />
      <asp:HyperLink ID="recommendationsLink" runat="server" 
         NavigateUrl="~/Recommendations.aspx" Visible="False">
         Click here to get book recommendations
      </asp:HyperLink>
   </div>
   </form>
</body>
</html>

<%-- 
 ************************************************************************** 
 * (C) Copyright 1992-2008 by Deitel & Associates, Inc. and               *
 * Pearson Education, Inc. All Rights Reserved.                           *
 *                                                                        *
 * DISCLAIMER: The authors and publisher of this book have used their     *
 * best efforts in preparing the book. These efforts include the          *
 * development, research, and testing of the theories and programs        *
 * to determine their effectiveness. The authors and publisher make       *
 * no warranty of any kind, expressed or implied, with regard to these    *
 * programs or to the documentation contained in these books. The authors *
 * and publisher shall not be liable in any event for incidental or       *
 * consequential damages in connection with, or arising out of, the       *
 * furnishing, performance, or use of these programs.                     *
 **************************************************************************
--%>