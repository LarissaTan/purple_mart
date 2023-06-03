<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="purple_mart.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/index.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <h1 class="head">testing</h1>
    <h2>Hello World</h2>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="First Name"></asp:Label>
            <asp:TextBox runat="server" ID="textbox_fname" MaxLength="50">Use capital letter</asp:TextBox>
             <asp:Label runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox runat="server" ID="textbox_lname"></asp:TextBox>
              <p></p>
            <asp:Label runat="server" Text= "Email"></asp:Label>
             <asp:TextBox runat="server" ID="email" TextMode="Email"></asp:TextBox>
            <asp:Label runat="server" Text= "Password"></asp:Label>
             <asp:TextBox runat="server" ID="pwd" TextMode="Password"></asp:TextBox>
             
             <h2>Write your biography here!</h2>
            <p><asp:TextBox runat="server" Height="150px" TextMode="MultiLine" Width="555px" ID="textbox_biography">write your biography</asp:TextBox></p>
            

            <p>   <asp:Button runat="server" Text="Button" ID="Btn1" OnClick="Btn1_Click"></asp:Button></p>
            <asp:Label runat="server" Text="Feedback Message to User" ID="label_feedback"></asp:Label>
         
        </div>
    </form>
</body>
</html>
