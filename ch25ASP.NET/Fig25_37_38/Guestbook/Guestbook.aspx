<%-- Fig. 25.37 Guestbook.aspx --%>
<%-- Guestbook Web application with a form for users to submit --%>
<%-- guestbook entries and a GridView to view existing entries. --%>
<%@ Page Language="VB" AutoEventWireup="false" 
   CodeFile="Guestbook.aspx.vb" Inherits="Guestbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Guestbook</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h2>
          Please leave a message in our guestbook:</h2>
       <table>
          <tr>
             <td style="width: 130px; height: 21px" valign="top">
                Your name:<br />
             </td>
             <td style="width: 300px; height: 21px" valign="top">
                <asp:TextBox ID="nameTextBox" runat="server" 
                   Width="300px"></asp:TextBox>
             </td>
          </tr>
          <tr>
             <td style="width: 130px" valign="top">
                Your e-mail address:<br />
             </td>
             <td style="width: 300px" valign="top">
                <asp:TextBox ID="emailTextBox" runat="server" 
                   Width="300px"></asp:TextBox>
             </td>
          </tr>
          <tr>
             <td style="width: 130px" valign="top">
                Tell the world:<br />
             </td>
             <td style="width: 300px" valign="top">
                <asp:TextBox ID="messageTextBox" runat="server" 
                   Height="100px" Rows="8" Width="300px">
                  </asp:TextBox>
             </td>
          </tr>
          <tr>
             <td style="width: 130px" valign="top">
             </td>
             <td style="width: 300px" valign="top">
                <asp:Button ID="submitButton" runat="server" 
                   Text="Submit" />
                <asp:Button ID="clearButton" runat="server" 
                   Text="Clear" />
             </td>
          </tr>
       </table>
       <br />
       <asp:GridView ID="messagesGridView" runat="server" 
          AutoGenerateColumns="False" CellPadding="4"
          DataKeyNames="MessageID" DataSourceID="messagesSqlDataSource" 
          ForeColor="#333333" GridLines="None" Width="600px">
          <FooterStyle BackColor="#1C5E55" Font-Bold="True" 
             ForeColor="White" />
          <Columns>
             <asp:BoundField DataField="Date" HeaderText="Date" 
                SortExpression="Date" />
             <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
             <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" />
             <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
          </Columns>
          <RowStyle BackColor="#E3EAEB" />
          <EditRowStyle BackColor="#7C6F57" />
          <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" 
             ForeColor="#333333" />
          <PagerStyle BackColor="#666666" ForeColor="White" 
             HorizontalAlign="Center" />
          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" 
             ForeColor="White" />
          <AlternatingRowStyle BackColor="White" />
       </asp:GridView>
       <asp:SqlDataSource ID="messagesSqlDataSource" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          DeleteCommand="DELETE FROM [Messages] WHERE [MessageID] = 
             @MessageID" InsertCommand="INSERT INTO [Messages] 
             ([Date], [Name], [Email], [Message]) 
             VALUES (@Date, @Name, @Email, @Message)"
          SelectCommand="SELECT * FROM [Messages]" UpdateCommand=
             "UPDATE [Messages] SET [Date] = @Date, [Name] = @Name, 
             [Email] = @Email, [Message] = @Message 
             WHERE [MessageID] = @MessageID">
          <DeleteParameters>
             <asp:Parameter Name="MessageID" Type="Int32" />
          </DeleteParameters>
          <UpdateParameters>
             <asp:Parameter Name="Date" Type="String" />
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Message" Type="String" />
             <asp:Parameter Name="MessageID" Type="Int32" />
          </UpdateParameters>
          <InsertParameters>
             <asp:Parameter Name="Date" Type="String" />
             <asp:ControlParameter ControlID="nameTextBox" Name="Name" 
                PropertyName="Text" Type="String" />
             <asp:ControlParameter ControlID="emailTextBox" Name="Email" 
                PropertyName="Text" Type="String" />
             <asp:ControlParameter ControlID="messageTextBox" 
                Name="Message" PropertyName="Text" Type="String" />
          </InsertParameters>
       </asp:SqlDataSource>
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