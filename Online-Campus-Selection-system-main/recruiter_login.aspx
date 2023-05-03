<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recruiter_login.aspx.cs" Inherits="recruiter_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OCSS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header class="w3-container w3-light-grey">
  <h1 class="w3-jumbo">ONLINE CAMPUS SELECTION SYSTEM</h1>
  <p class="w3-xxlarge">This site will grow as we add more ...</p>
</header>
    
    <div class="w3-bar w3-border w3-blue w3-large">
  <a href="homepage.aspx" class="w3-bar-item w3-button w3-border-right">Home</a>
  <a href="#" class="w3-bar-item w3-button w3-border-right">Your Profile</a>
  <a href="#" class="w3-bar-item w3-button w3-border-right">Search Candidates</a>
  <a href="#" class="w3-bar-item w3-button w3-border-right">Post Job</a>
  <a href="#" class="w3-bar-item w3-button w3-border-right">About Us</a>
</div>

    <div class="w3-row-padding">
<div class="w3-quarter">
  <p>This is a paragraph.</p>
</div>
<div class="w3-half">
  <p><B>Login Form</B></p>

  <div class="w3-form w3-card-4">
  
  <h2>Login Form</h2>
  <div class="w3-group">
    <label>Username</label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </div>
  <div class="w3-group">
    <label>Password</label>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </div>
  <div class="w3-group">
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </div>
      <asp:Button ID="Button1" class="w3-btn w3-teal" runat="server" Text="Login" 
          onclick="Button1_Click" />
  
  
  
  
  
  &nbsp;
      <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password?</asp:HyperLink>
  
  
  
  
  
  </div>
  <div class="w3-group">
  
  <label>New User!</label>
      <asp:HyperLink ID="HyperLink2" runat="server" 
          NavigateUrl="~/recruiter_regi.aspx">Registration</asp:HyperLink>
  </div>








</div>
<div class="w3-quarter">
  <p>This is a paragraph.</p>
</div>
</div>

<footer class="w3-container w3-light-grey">

  <p style=" text-align:center">copyright @kingslayer</p>
</footer>




    </div>
    </form>
</body>
</html>
