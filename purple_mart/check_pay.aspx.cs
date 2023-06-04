using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace purple_mart
{


    public partial class check_pay : System.Web.UI.Page
    {
        protected List<CartItem> shoppingCart = null;
        protected List<product> productList = null;
        protected List<Order> orderList = null;
        protected Double balance;
        protected void Page_Load(object sender, EventArgs e)
        {
            shoppingCart = new List<CartItem>();
            orderList = Session["orderList"] == null ? new List<Order>() : (List<Order>)Session["orderList"];
            Session["orderList"] = orderList;
            
            productList = new List<product>();
            if (Session["productlist"] != null)
            {
                productList = (List<product>)Session["productlist"];
            }



            if (!IsPostBack)
            {
                List<CartItem> cart = (List<CartItem>)Session["cart"];

                Double totalPrice = 0.0;
                if (cart != null)
                {
                    txt_order.Text = "Your Order";
                    test.Text = cart.Count.ToString();
                    Console.WriteLine(cart.Count);
                    repeat_pro.DataSource = cart;
                    repeat_pro.DataBind();
                    foreach (CartItem item in cart)
                    {
                        totalPrice += item.P.product_price;
                        
                    }
                    total_pri.Text = "Total: " + totalPrice.ToString() + "RM";//Total: xxx.00 RM
                }
                else
                {
                    txt_order.Text = "Nothing in cart yet.....";
                }
            }

        }

        protected void Pay_Click(object sender, EventArgs e)
        {



        }
    }
}