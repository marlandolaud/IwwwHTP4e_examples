<%-- Fig. 25.13: WebControls.aspx --%>
<%-- Registration form that demonstrates Web controls. --%>
<%@ Page Language="VB" AutoEventWireup="false" 
   CodeFile="WebControls.aspx.vb" Inherits="WebControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Web Controls Demonstration</title>
</head>
<body>
   <form id="form1" runat="server">
   <div>
      <h3>This is a sample registration form.</h3>
      <p>
	     <em>Please fill in all fields and click Register.</em></p>
      <p>
         <asp:Image ID="userInformationImage" runat="server" 
            EnableViewState="False" ImageUrl="~/Images/user.png" /> &nbsp; 
         <span style="color: teal">
            Please fill out the fields below.</span>
      </p>
      <table id="TABLE1">
         <tr>
            <td style="width: 230px; height: 21px" valign="top">
               <asp:Image ID="firstNameImage" runat="server" 
                  EnableViewState="False" ImageUrl="~/Images/fname.png" />
               <asp:TextBox ID="firstNameTextBox" runat="server" 
                  EnableViewState="False"></asp:TextBox>
            </td>
            <td style="width: 231px; height: 21px" valign="top">
               <asp:Image ID="lastNameImage" runat="server" 
                  EnableViewState="False" ImageUrl="~/Images/lname.png" />
               <asp:TextBox ID="lastNameTextBox" runat="server" 
                  EnableViewState="False"></asp:TextBox>
            </td>
         </tr>
         <tr>
            <td style="width: 230px" valign="top">
               <asp:Image ID="emailImage" runat="server" 
                  EnableViewState="False" ImageUrl="~/Images/email.png" />
               <asp:TextBox ID="emailTextBox" runat="server" 
                  EnableViewState="False"></asp:TextBox>
            </td>
            <td style="width: 231px" valign="top">
               <asp:Image ID="phoneImage" runat="server" 
                  EnableViewState="False" ImageUrl="~/Images/phone.png" />
               <asp:TextBox ID="phoneTextBox" runat="server" 
                  EnableViewState="False"></asp:TextBox>
               Must be in the form (555) 555-5555.
            </td>
         </tr>
      </table>
      <p>
         <asp:Image ID="publicationsImage" runat="server" 
            EnableViewState="False" 
            ImageUrl="~/Images/publications.png" /> &nbsp; 
         <span style="color: teal">
            Which book would you like information about?</span>
      </p>
      <p>
         <asp:DropDownList ID="booksDropDownList" runat="server" 
            EnableViewState="False">
            <asp:ListItem>Visual Basic 2005 How to Program 3e
                 </asp:ListItem>
            <asp:ListItem>Visual C# 2005 How to Program 2e
                 </asp:ListItem>
            <asp:ListItem>Java How to Program 6e</asp:ListItem>
            <asp:ListItem>C++ How to Program 5e</asp:ListItem>
            <asp:ListItem>XML How to Program 1e</asp:ListItem>
         </asp:DropDownList>
      </p>
      <p>
         <asp:HyperLink ID="booksHyperLink" runat="server" 
            EnableViewState="False" NavigateUrl="http://www.deitel.com"
            Target="_blank">
            Click here to view more information about our books
         </asp:HyperLink>
      </p>
      <p>
         <asp:Image ID="osImage" runat="server" EnableViewState="False" 
            ImageUrl="~/Images/os.png" /> &nbsp; 
         <span style="color: teal">
            Which operating system are you using?</span>
      </p>
      <p>
         <asp:RadioButtonList ID="operatingSystemRadioButtonList" 
            runat="server" EnableViewState="False">
            <asp:ListItem>Windows XP</asp:ListItem>
            <asp:ListItem>Windows 2000</asp:ListItem>
            <asp:ListItem>Windows NT</asp:ListItem>
            <asp:ListItem>Linux</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
         </asp:RadioButtonList>
      </p>
      <p>
         <asp:Button ID="registerButton" runat="server" 
            EnableViewState="False" Text="Register" />
      </p>
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
