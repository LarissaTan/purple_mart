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
        <h class="title">Your Order</h>
        <asp:Label ID="Alert" runat="server" CssClass="alert"></asp:Label>
        <asp:Repeater ID="repeat_pro" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                
                <div class="cart-view">
                    <div class="check-box">
                        <asp:CheckBox runat="server" ID="gameCheckBox"></asp:CheckBox>
                    </div>
                    <div class="product-name">
                        <%#Eval("P.product_name") %>
                    </div>
                    <div class="product-image">
                        <img style="max-height: 8em;" src="<%#Eval("P.product_url") %>" alt="<%#Eval("P.product_name") %> image"/>
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

        <div>

                <table class="payment">
                    <tr>
                        <td>
                            <div class="format_table">
                                <p>
                                    <asp:Label runat="server" Text="Name" CssClass="subtitle"></asp:Label>
                                    <asp:TextBox runat="server" ID="re_name"  CssClass="input"></asp:TextBox>
                                    <asp:Label runat="server" ID="name_re" class="err"> Please enter a valid value!</asp:Label>
                                </p>
                
                                <p>
                                    <asp:Label runat="server" Text="Address" CssClass="subtitle"></asp:Label>
                                    <asp:TextBox runat="server" ID="re_addr" CssClass="input"></asp:TextBox>
                                    <asp:Label runat="server" ID="addr_re" class="err"> Please enter a valid value!</asp:Label>
                                </p>

                                <p>
                                    <asp:Label runat="server" Text="Phone" CssClass="subtitle"></asp:Label>
                                    <asp:TextBox runat="server" ID="re_phone" CssClass="input"></asp:TextBox>
                                    <asp:Label runat="server" ID="phone_re" class="err"> Please enter a valid value!</asp:Label>
                                </p>

                                <p>
                                    <asp:Label runat="server" Text="Remark" CssClass="subtitle"></asp:Label>
                                    <asp:TextBox runat="server" ID="re_remark" CssClass="input1"></asp:TextBox>
                                    <asp:Label runat="server" ID="remark_re" class="err"> Please enter a valid value!</asp:Label>
                                </p>
         
                            </div>
                        </td>
                            
                        <td>
                                    <div class="format_table"">
                                            <h4>Select payment method: </h4>
                                            <asp:RadioButtonList ID="PaymentMethod" runat="server">
                                                <asp:ListItem Text="Board Game Wallet" Selected="True">Board Game Wallet</asp:ListItem>
                                                <asp:ListItem Text="Online Transfer">Online Transfer</asp:ListItem>
                                                <asp:ListItem Text="Cards">Credit/Debit Card</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:Button ID="Pay" runat="server" Text="Pay" CssClass="submit" OnClientClick="return validateForm();" OnClick="Pay_Click" />
                                        </div>
                        </td>

                    </tr>

                </table>
            
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
