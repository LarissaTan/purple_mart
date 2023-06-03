using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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

        protected void submit_click(object sender, EventArgs e)
        {
            String pwd = text_pwd.Text;
            String email = text_email.Text;
            bool check = true;

            if (String.IsNullOrEmpty(pwd))
            {
                pwd_req.Style["opacity"] = "1";
                pwd_req.Style["transform"] = "scale(1)";
                check = false;
            }else
            {
                pwd_req.Style["opacity"] = "0";
                pwd_req.Style["transform"] = "scale(0)";
            }
            
            if (String.IsNullOrEmpty(email))
            {
                email_req.Style["opacity"] = "1";
                email_req.Style["transform"] = "scale(1)";
                check = false;
            }
            else
            {
                email_req.Style["opacity"] = "0";
                email_req.Style["transform"] = "scale(0)";

                if (!IsValidEmail(email))
                {
                    email_err.Style["opacity"] = "1";
                    email_err.Style["transform"] = "scale(1)";
                    check = false;
                }
                else
                {
                    email_err.Style["opacity"] = "0";
                    email_err.Style["transform"] = "scale(0)";
                }
            }

            if (check)
            {
                Server.Transfer("homepage.aspx");
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