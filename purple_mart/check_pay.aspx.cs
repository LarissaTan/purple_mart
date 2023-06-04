using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace purple_mart
{


    public partial class check_pay : System.Web.UI.Page
    {
        protected List<CartItem> cart = null;
        protected List<product> productList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = (List<CartItem>)Session["cart"];
            productList = new List<product>();
            if (Session["productlist"] != null)
            {
                productList = (List<product>)Session["productlist"];
            }



            if (!IsPostBack)
            {
                Double totalPrice = 0.0;
                if (cart != null)
                {
                    txt_order.Text = "Your Order";
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
            bool check = true;
            String email = re_email.Text;
            String name = re_name.Text;

            if (cart == null) return;
            //name
            if (name.Length < 3)
            {
                name_re.Style["opacity"] = "1";
                name_re.Style["transform"] = "scale(1)";
                check = false;
            }
            else
            {
                name_re.Style["opacity"] = "0";
                name_re.Style["transform"] = "scale(0)";
            }

            //phone
            if (re_phone.Text.Length < 9)
            {
                phone_re.Style["opacity"] = "1";
                phone_re.Style["transform"] = "scale(1)";
                check = false;
            }
            else
            {
                phone_re.Style["opacity"] = "0";
                phone_re.Style["transform"] = "scale(0)";
            }

            //addr
            if (re_addr.Text.Length < 9)
            {
                addr_re.Style["opacity"] = "1";
                addr_re.Style["transform"] = "scale(1)";
                check = false;
            }
            else
            {
                addr_re.Style["opacity"] = "0";
                addr_re.Style["transform"] = "scale(0)";
            }

            //email
            if (String.IsNullOrEmpty(email))
            {
                email_re.Style["opacity"] = "1";
                email_re.Style["transform"] = "scale(1)";
                check = false;
            }
            else
            {
                email_re.Style["opacity"] = "0";
                email_re.Style["transform"] = "scale(0)";

                if (!IsValidEmail(email))
                {
                    email_re.Style["opacity"] = "1";
                    email_re.Style["transform"] = "scale(1)";
                    check = false;
                }
                else
                {
                    email_re.Style["opacity"] = "0";
                    email_re.Style["transform"] = "scale(0)";
                }
            }

            if (check)
            {
                Double final_total = 0.0;

                foreach (RepeaterItem item in repeat_pro.Items)
                {
                    CheckBox checkBox = item.FindControl("CheckBox") as CheckBox;
                    if (checkBox.Checked)
                    {
                        final_total += cart[item.ItemIndex].P.product_price;
                    }
                }
                
                string script = "alert('Dear " + name + ", you order has paid. The final price is "+ final_total.ToString() + "RM (this based on what you select on the payment page)." + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
                Session["cart"] = null;
                cart = (List<CartItem>)Session["cart"];
            }
            else
            {
                string script = "alert('Invalid information! Failed to pay! Please refer back to information part!');";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
            }


        }

        public static bool IsValidEmail(string email)
        {
            string pattern = @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";

            Regex regex = new Regex(pattern);
            Match match = regex.Match(email);

            return match.Success;
        }
    }
}