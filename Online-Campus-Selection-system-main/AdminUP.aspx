<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminUP.aspx.cs" Inherits="AdminUP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





<table>
<tr>
<td>
<h2>Welcome To Admin Page, 
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="Blue"></asp:Label></h2>
    </td>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">Logout</asp:LinkButton> </td>
    </tr>
    </table>


    <div style="Text-align:center;">
    
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                    SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Login] WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" 
            InsertCommand="INSERT INTO [Login] ([username], [password], [role]) VALUES (@username, @password, @role)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Login]" 
            UpdateCommand="UPDATE [Login] SET [password] = @password, [role] = @role WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
    </div>
</asp:Content>

