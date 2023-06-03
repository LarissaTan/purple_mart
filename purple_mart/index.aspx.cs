using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace purple_mart
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            string fname = textbox_fname.Text;

            label_feedback.Text = ("Thank you " + textbox_fname.Text + "  " + textbox_lname.Text);
        }
    }
}