<%-- Fig. 25.57 Login.aspx --%>
<%-- Content page using a Login control that authenticates users. --%>
<%@ Page Language="VB" MasterPageFile="~/Bug2Bug.master" Title="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" 
   Runat="Server">
   <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" 
      BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" 
      BorderWidth="1px" CreateUserText="Click here to create a new user"
      CreateUserUrl="~/CreateNewUser.aspx" DisplayRememberMe="False" 
      Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
	  DestinationPageUrl="~/Secure/Books.aspx">
      <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" 
         Font-Size="0.9em" ForeColor="White" />
      <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
      <TextBoxStyle Font-Size="0.8em" />
      <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
         BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
         Font-Size="0.8em" ForeColor="#284775" />
   </asp:Login>
</asp:Content>

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