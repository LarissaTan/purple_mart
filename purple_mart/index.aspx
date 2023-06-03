<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="purple_mart.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/index.css" rel="stylesheet" type="text/css" />
</head>


<body>
    <div class="box">
        <h1 class="title">Purple Mart</h1>
        <h3 class="heading">Login</h3>

        <form id="login" runat="server">
            <div class="login_form">
                <p class="email">
                    <asp:Label runat="server" Text="Email" CssClass="subtitle"></asp:Label>
                    <asp:TextBox runat="server" ID="textbox_email" CssClass="input" ValidateRequestMode="Enabled"></asp:TextBox>

                    <span class="validation error"> Please enter a valid email</span>
                    <span class="validation req"> This field is required</span>
                </p>
                
                <p class="pwd">
                    <asp:Label runat="server" Text="Password" CssClass="subtitle"></asp:Label>
                    <asp:TextBox runat="server" ID="text_pwd" CssClass="input"></asp:TextBox>
                    <span class="validation req"> This field is required</span>
                </p>
 
    
                <p><asp:Button runat="server" Text="Submit" ID="Btn1" OnClick="submit_click" CssClass="submit"></asp:Button></p>
         
            </div>
        </form>
     </div>
</body>
</html>
