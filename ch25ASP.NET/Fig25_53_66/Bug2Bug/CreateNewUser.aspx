<%-- Fig. 25.56 CreateNewUser.aspx --%>
<%-- Content page using a CreateUserWizard control to register users. --%>
<%@ Page Language="VB" MasterPageFile="~/Bug2Bug.master" 
   Title="Create a New User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" 
   Runat="Server">
   <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
      BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" 
      BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
	  ContinueDestinationPageUrl="~/Secure/Books.aspx">
      <WizardSteps>
         <asp:CreateUserWizardStep runat="server">
         </asp:CreateUserWizardStep>
         <asp:CompleteWizardStep runat="server">
         </asp:CompleteWizardStep>
      </WizardSteps>
      <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" 
         Font-Size="0.9em" VerticalAlign="Top" />
      <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" 
         ForeColor="White" />
      <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" 
         ForeColor="White" />
      <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
         BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
         ForeColor="#284775" />
      <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" 
         Font-Bold="True" Font-Size="0.9em"
         ForeColor="White" HorizontalAlign="Center" />
      <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        ForeColor="#284775" />
      <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
         BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
         ForeColor="#284775" />
      <StepStyle BorderWidth="0px" />
   </asp:CreateUserWizard>
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