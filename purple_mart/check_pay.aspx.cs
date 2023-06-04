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

                
                if (cart != null)
                {
                    test.Text = cart.Count.ToString();
                    Console.WriteLine(cart.Count);
                    repeat_pro.DataSource = cart;
                    repeat_pro.DataBind();
                }
            }


            Alert.Visible = false;
        }

        protected void Pay_Click(object sender, EventArgs e)
        {

            shoppingCart = (List<CartItem>)Session["shoppingcart"];
            if (PaymentMethod.SelectedItem.Text == "Board Game Wallet")
            {
                Double totalPrice = 0.0;
                foreach (RepeaterItem item in repeat_pro.Items)
                {
                    CheckBox chk = item.FindControl("gameCheckBox") as CheckBox;
                    if (chk.Checked)
                    {
                        TextBox quantity = item.FindControl("Quantity") as TextBox;
                        int qty;
                        try
                        {
                            qty = Int16.Parse(quantity.Text);
                        }
                        catch
                        {
                            Alert.Text = "Please enter an integer for quantity";
                            Alert.Visible = true;
                            return;
                        }
                        if (qty <= 0)
                        {
                            Alert.Text = "Please enter a positive integer for quantity";
                            Alert.Visible = true;
                            return;
                        }
                        
                        totalPrice += shoppingCart[item.ItemIndex].P.product_price * qty;


                    }
                }
                

      
                    Order thisOrder = new Order()
                    {
                        Name = RecipientName.Text == "" ? "Anonymous" : RecipientName.Text,
                        Address = RecipientAddress.Text == "" ? "Unspecified" : RecipientAddress.Text,
                        Phone = RecipientPhone.Text == "" ? "0123456789" : RecipientPhone.Text,
                        Email = RecipientEmail.Text == "" ? "anonymous@gmail.com" : RecipientEmail.Text,
                        Items = new List<CartItem>(),
                        TotalPrice = totalPrice
                    };


                    orderList.Add(thisOrder);
                    Session["orderList"] = orderList;
                    Session["productlist"] = productList;
                    Response.Redirect("home.aspx");
                
                

                Alert.Visible = false;

            }
            else
            {
                // warning
                Alert.Text = "Function currently unavailable...";
                Alert.Visible = true;
            }

        }
    }
}