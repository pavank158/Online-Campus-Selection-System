<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiter_profile.aspx.cs" Inherits="recruiter_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />

<table>
<tr>
<td>
<h2>Welcome To Recruiter Page, 
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="Blue"></asp:Label></h2>
    </td>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">Logout</asp:LinkButton> </td>
    </tr>
    </table>
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="281px" 
            AutoGenerateRows="false">

        <Fields>
        <asp:BoundField DataField="Company_name" HeaderText="Company Name" />
        <asp:BoundField DataField="Contact_person" HeaderText="Contact Person" />
        <asp:BoundField DataField="Company_contact" HeaderText="Company Contact" />
        <asp:BoundField DataField="Company_addrs" HeaderText="Company Address" />
        <asp:BoundField DataField="Company_email" HeaderText="Company Email" />
        <asp:BoundField DataField="Company_details" HeaderText="Company Details" />
        </Fields>


        </asp:DetailsView>
    
    
    </div>
</asp:Content>

