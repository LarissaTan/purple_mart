<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="purple_mart.homepage" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/nav.css" rel="stylesheet" type="text/css" />
    <link href="Resource/homepage.css" rel="stylesheet" type="text/css" />
    <title>Purple Mart</title>
</head>


<body>
    <div class="intro">
        <nav role='navigation'>
            <a data-page="home" class="active tag">Home</a>
            <a data-page="cart" class="tag" href="check_pay.aspx">Cart</a>
            <a data-page="" class="tag"> </a>
            <a data-page=" " class="tag"> </a>
        </nav> 

        <h1 class="text1">PURPLE MART
            <span class="text2">Purple Mart is an online K-pop album sales site that offers a wide selection of albums and global shipping. Users can browse the latest albums, popular recommendations, and purchase favorite albums through a simple shopping process. The website design is modern and easy to use, providing a convenient and fast shopping experience for global K-pop fans.</span>
        </h1>
    </div>
    
    <form id="form2" runat="server" style="margin: 50px;">
      <asp:Repeater ID="re_product" runat="server">
        <ItemTemplate>
            <div style="margin:50px;">
              <div class="container">
                <div class="images">
                  <img src="<%#Eval("product_url") %>"" />
                </div>
                <div class="product">
                  <p class="singer"><%#Eval("singer_name") %></p>
                  <h1 class="product-name"><%#Eval("product_name") %></h1>
                  <h2 class="price"><%#Eval("product_price") %> RM</h2>
                  <p class="desc"><%#Eval("product_des") %></p>
                  <div >
                    <asp:button runat="server" ID="AddToCart" CssClass="add button" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument='<%#Bind("product_name")%>' CommandName='<%#Eval("product_name")%>'/>
                    <button class="like button"><span>♥</span></button>
                  </div>
                </div>
              </div>
            </div>
        </ItemTemplate>
      </asp:Repeater>
    </form>

    <footer class="footer">
        <p>SWE2009514 writen by Tan Qianqian @2023</p>
        <asp:Label runat="server" ID="test" Text="null"/>
    </footer>


</body>


</html>




