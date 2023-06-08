using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace purple_mart
{
    public partial class comfirm_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Order tmp = (Order)Session["order"];

            com_name.Text = "Name: " + tmp.name;
            com_email.Text = "Email: " + tmp.email;
            com_phone.Text = "Phone: " + tmp.phone;
            com_addr.Text = "Address: " + tmp.addr;
            com_total.Text = "Total Price: " + tmp.total.ToString();

            /*
             string script = "alert('Dear " + name + ", you order has paid. The final price is "+ final_total.ToString() + "RM (this based on what you select on the payment page)." + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
             */
        }

        protected void cancel(object sender, EventArgs e)
        {
        
             string script = "alert('Your order has already cancelled. ');";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);

            string redirectScript = "setTimeout(function() { window.location.href = 'homepage.aspx'; }, 2000);";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", redirectScript, true);

        }

        protected void comfirm(object sender, EventArgs e)
        {
            string script = "alert('Your order has already comfirmed. ');";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);


            string redirectScript = "setTimeout(function() { window.location.href = 'homepage.aspx'; }, 2000);";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", redirectScript, true);
        }
    }
}