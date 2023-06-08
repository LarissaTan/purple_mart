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
        <asp:Label runat="server" ID="txt_order" class="title"></asp:Label>
        <br />
        <asp:Repeater ID="repeat_pro" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                
                <div class="cart-view">
                    <div class="check-box">
                        <asp:CheckBox runat="server" ID="CheckBox"></asp:CheckBox>
                    </div>
                    <div class="product-name">
                        <%#Eval("P.product_name") %>
                    </div>
                    <div class="product-image">
                        <img style="max-height: 8em;" src="<%#Eval("P.product_url") %>" alt="<%#Eval("P.product_name") %> image"/>
                    </div>
                    <div class="quantity">
                        Quantity: 1
                    </div>
                    <div class="price">
                        <%#Eval("P.product_price") %> RM
                    </div>
                </div>
                <br />
            </ItemTemplate>
            
        </asp:Repeater>
        <br />

        <asp:Label runat="server" ID="total_pri" class="total"></asp:Label>

        <br /> <br /> <br /><br />

        <div>
                <h class="title">Payment</h>
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
                                    <asp:Label runat="server" Text="Email" CssClass="subtitle"></asp:Label>
                                    <asp:TextBox runat="server" ID="re_email" CssClass="input"></asp:TextBox>
                                    <asp:Label runat="server" ID="email_re" class="err"> Please enter a valid value!</asp:Label>
                                </p>
         
                            </div>
                        </td>
                            
                        <td>
                                    <div class="format_table"">
                                            <h class="title_info">Select payment method: </h>   
                                            <br /><br />
                                            <asp:RadioButtonList ID="PaymentMethod" runat="server" CssClass="pay_info">
                                                <asp:ListItem Text="e-Payment" Selected="True" CssClass="pay_item">e-Payment</asp:ListItem>
                                                <asp:ListItem Text="Cash" CssClass="pay_item">Cash</asp:ListItem>
                                                <asp:ListItem Text="Cards" CssClass="pay_item">Credit/Debit Card</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:Button ID="Pay" runat="server" Text="Pay" CssClass="submit" OnClick="Pay_Click" Visible="false"/>
                                        </div>
                        </td>

                    </tr>

                </table>
            
        </div>
    </form>




    <footer class="footer">
        <p>SWE2009514 writen by Tan Qianqian @2023</p>
    </footer>

</body>



</html>
