using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace purple_mart
{
    public class CartItem
    {
        public product P { get; set; }
        public int quanlity { get; set; }
        public Double total { get; set; }

        public CartItem()
        {
            this.P = new product();
            this.quanlity = 0;
            this.total = 0.0;
        }

        public CartItem(product p)
        {
            this.P = p;
            this.quanlity = 1;
            this.total = 0.0;
        }
    }
}