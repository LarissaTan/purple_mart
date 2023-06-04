<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_pay.aspx.cs" Inherits="purple_mart.check_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/check_pay.css" rel="stylesheet" type="text/css" />
    <link href="Resource/nav.css" rel="stylesheet" type="text/css" />
    <title>Purple Mart</title>
</head>

<body>
    <nav role='navigation'>
            <a data-page="home" class="tag" href="homepage.aspx">Home</a>
            <a data-page="cart" class="active tag">Cart</a>
            <a data-page="" class="tag"> </a>
            <a data-page=" " class="tag"> </a>
    </nav> 

    <form id="form1" runat="server">

        <asp:Label ID="Alert" runat="server" CssClass="alert"></asp:Label>
        <asp:Repeater ID="repeat_pro" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <!-- Display each item from data source -->
                <div class="cart-view">
                    <h1>uuuu</h1>
                    <div class="check-box">
                        <asp:CheckBox runat="server" ID="gameCheckBox"></asp:CheckBox>
                    </div>
                    <div class="game-name">
                        <%#Eval("P.product_name") %>
                    </div>
                    <div class="game-image">
                        <img src="<%#Eval("P.product_url") %>" alt="<%#Eval("P.product_name") %> image"/>
                    </div>
                    <div class="quantity">
                        Quantity: 
                        <asp:TextBox ID="Quantity" runat="server" Text="1"></asp:TextBox>
                    </div>
                    <div class="price">
                        <%#Eval("P.product_price") %> RM
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>

        <div class="payment-details">
            <div class="personal-details">
                <table>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <asp:TextBox ID="RecipientName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td>
                            <asp:TextBox ID="RecipientAddress" runat="server" Rows="3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone: </td>
                        <td>
                            <asp:TextBox ID="RecipientPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td>
                            <asp:TextBox ID="RecipientEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="payment">
                <h4>Select payment method: </h4>
                <asp:RadioButtonList ID="PaymentMethod" runat="server">
                    <asp:ListItem Text="Board Game Wallet" Selected="True">Board Game Wallet</asp:ListItem>
                    <asp:ListItem Text="Online Transfer">Online Transfer</asp:ListItem>
                    <asp:ListItem Text="Cards">Credit/Debit Card</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="Pay" runat="server" Text="Pay" CssClass="pay-button" OnClientClick="return validateForm();" OnClick="Pay_Click" />
            </div>
        </div>
    </form>

    <footer class="footer">
        <p>SWE2009514 writen by Tan Qianqian @2023</p>
        <asp:Label runat="server" ID="test">empty</asp:Label>
    </footer>

    <script src="https://kit.fontawesome.com/a4ee3fc773.js" crossorigin="anonymous"></script>
    <script>
        function validateForm() {
            let x = document.getElementById("Quantity").value;
            if (isNan(x)) {
                alert("Please input an integer as quantity.");
                return false;
            }
            return true;
        }
    </script>
</body>



</html>
