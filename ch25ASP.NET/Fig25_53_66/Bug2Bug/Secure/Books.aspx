<%-- Fig. 25.66 Books.aspx --%>
<%-- Displays information from the Books database. --%>
<%@ Page Language="VB" MasterPageFile="~/Bug2Bug.master" 
   Title="Book Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" 
   Runat="Server">
   Welcome,
   <asp:LoginName ID="LoginName1" runat="server" />!
   <asp:LoginStatus ID="LoginStatus1" runat="server" 
      LogoutAction="RedirectToLoginPage"
      LogoutText="Click here to log out" />
   <br />
   <br />
   Author:
   <asp:DropDownList ID="authorsDropDownList" runat="server" 
      AutoPostBack="True" DataSourceID="authorsObjectDataSource"
      DataTextField="Name" DataValueField="AuthorID">
   </asp:DropDownList>
   <asp:ObjectDataSource ID="authorsObjectDataSource"
      runat="server" OldValuesParameterFormatString="original_{0}" 
      SelectMethod="GetData" 
      TypeName="BooksDataSetTableAdapters.AuthorsTableAdapter">
   </asp:ObjectDataSource>
   <br />
   <br />
   <asp:GridView ID="titlesGridView" runat="server" AllowPaging="True" 
      AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" 
      DataKeyNames="ISBN" DataSourceID="titlesObjectDataSource"
      PageSize="4" Width="600px">
      <Columns>
         <asp:BoundField DataField="ISBN" HeaderText="ISBN" 
            ReadOnly="True" SortExpression="ISBN" />
         <asp:BoundField DataField="Title" HeaderText="Title" 
            SortExpression="Title" />
         <asp:BoundField DataField="EditionNumber" 
            HeaderText="EditionNumber" SortExpression="EditionNumber" />
         <asp:BoundField DataField="Copyright" HeaderText="Copyright" 
            SortExpression="Copyright" />
      </Columns>
      <HeaderStyle BackColor="LightGreen" />
      <AlternatingRowStyle BackColor="LightYellow" />
   </asp:GridView>
   <asp:ObjectDataSource ID="titlesObjectDataSource" runat="server" 
      OldValuesParameterFormatString="original_{0}"
      SelectMethod="GetDataByAuthorID" 
      TypeName="BooksDataSetTableAdapters.TitlesTableAdapter">
      <SelectParameters>
         <asp:ControlParameter ControlID="authorsDropDownList" 
            DefaultValue="1" Name="authorID"
            PropertyName="SelectedValue" Type="Int32" />
      </SelectParameters>
   </asp:ObjectDataSource>
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