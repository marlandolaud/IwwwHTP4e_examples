<%-- Fig. 25.22 Recommendations.aspx --%>
<%-- Displays book recommendations using cookies. --%>
<%@ Page Language="VB" AutoEventWireup="false" 
   CodeFile="Recommendations.aspx.vb" Inherits="Recommendations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Book Recommendations</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="recommendationsLabel" runat="server" 
          Font-Bold="True" Font-Size="X-Large" Text="Recommendations">
       </asp:Label><br />
       <br />
       <asp:ListBox ID="booksListBox" runat="server" Height="125px" 
          Width="450px"></asp:ListBox><br />
       <br />
       <asp:HyperLink ID="languageLink" runat="server" 
          NavigateUrl="~/Options.aspx">
          Click here to choose another language
       </asp:HyperLink>&nbsp;</div>
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