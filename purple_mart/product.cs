using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace purple_mart
{
    public class product
    {
        public String product_url { get; set; }
        public String singer_name { get; set; }
        public String product_name { get; set; }
        public Double product_price { get; set; }
        public String product_des { get; set; }

        public product()
        {
            this.product_url = "empty";
            this.singer_name = "no singer";
            this.product_name = "no name";
            this.product_price = 0.0;
            this.product_des = "no des";
        }

        public product(string url, string singer, string name, double price, string des)
        {
            this.product_url = url;
            this.singer_name = singer;
            this.product_name = name;
            this.product_price = price;
            this.product_des = des;
        }

        public override String ToString()
        {
            return this.singer_name;
        }

    }
}