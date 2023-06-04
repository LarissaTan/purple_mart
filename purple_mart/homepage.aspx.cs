using purple_mart;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace purple_mart
{
    public partial class homepage : System.Web.UI.Page
    {
        protected List<product> productList;
        protected List<CartItem> cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            productList = new List<product>();
            productList.Add(new product("Resource/img/springday.jpg", "BTS album", "You Never Walk Alone", 89.0, "\"You Never Walk Alone\" by BTS is an impactful album featuring the iconic song \"Spring Day\" and a diverse mix of tracks that showcase BTS's musical prowess and heartfelt lyrics."));
            productList.Add(new product("Resource/img/jimin.jpg", "Park Jimin album", "Jimin 1st Mini Album", 65.0, "\"Jimin 1st Mini Album - BTS WORLD OST\" is an impressive solo album by Park Jimin, featuring the emotional track \"Like Crazy\" that showcases his exceptional vocals and captivating musical style."));
            productList.Add(new product("Resource/img/txt_album.jpg", "Tomorrow X Together album", "The Name Chapter: TEMTATION", 63.0, "\r\n\"The Name Chapter: TEMPTATION\" is a captivating album that delves into the realm of temptation, featuring a collection of alluring tracks that explore the complexities of desire, passion, and self-discovery. It offers a musical journey that entices listeners with its seductive melodies and thought-provoking lyrics."));
            productList.Add(new product("Resource/img/ive_album.jpg", "IVE album", "I`ve IVE", 76.0, "\r\n\"I've IVE\" is a mesmerizing album that showcases the unique talent and artistry of the artist. With captivating melodies and heartfelt lyrics, it takes listeners on a musical journey filled with emotion, introspection, and unforgettable moments."));
            Session["productlist"] = productList;

            re_product.DataSource = productList;
            re_product.DataBind();
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                cart = (List<CartItem>)Session["cart"];
            }
            else
            {
                cart = new List<CartItem>();
            }

            Button button = (Button)sender;
            foreach (product p in productList)
            {
                if (p.product_name == button.CommandArgument.ToString() && p!= null)
                {
                    CartItem cartItem = new CartItem(p);
                    cart.Add(cartItem);
                    
                    string script = "alert('Add to cart successful');";
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
                }
            }
            Session["cart"] = cart;
        }

    }
}
