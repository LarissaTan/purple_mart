<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comfirm_order.aspx.cs" Inherits="purple_mart.comfirm_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Purple Mart</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/index.css" rel="stylesheet" type="text/css" />
</head>


<body>
    <div class="box">
        <h1 class="title">Purple Mart</h1>
        <h3 class="heading">Login</h3>

        <form id="com" runat="server">
            <div class="login_form">
                <p class="pwd">
                    <asp:Label ID="com_name" runat="server" Text="Name" CssClass="subtitle"></asp:Label>
                </p>
                
                <p class="pwd">
                    <asp:Label ID="com_email" runat="server" Text="Email" CssClass="subtitle"></asp:Label>
                </p>

                <p class="pwd">
                    <asp:Label ID="com_addr" runat="server" Text="Address" CssClass="subtitle"></asp:Label>
                </p>

                <p class="pwd">
                    <asp:Label ID="com_phone" runat="server" Text="Phone" CssClass="subtitle"></asp:Label>
                </p>
 

                <p class="pwd">
                    <asp:Label ID="com_total" runat="server" Text="Total" CssClass="subtitle"></asp:Label>
                </p>
 
    
                <p><asp:Button runat="server" Text="Comfirm" ID="com_y" CssClass="submit"></asp:Button></p>

                <p><asp:Button runat="server" Text="Cancel" ID="com_n" CssClass="submit"></asp:Button></p>
         
            </div>
        </form>
     </div>
</body>
</html>
