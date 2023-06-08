using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace purple_mart
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;

        public class Order
        {
            public String name { get; set; }
            public String addr { get; set; }
            public String email { get; set; }
            public String phone { get; set; }
            public Double total { get; set; }

            public Order(String tmp_name, String tmp_addr, String tmp_email, String tmp_phone, Double tmp_total)
            {
                this.name = tmp_name;
                this.addr = tmp_addr;
                this.email = tmp_email;
                this.phone = tmp_phone;
                this.total = tmp_total;
            }

        }

}