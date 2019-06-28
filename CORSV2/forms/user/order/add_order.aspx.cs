using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.user.order
{
    public partial class add_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["action"] == "order")
            {
                string ddd = Request["hhh"].ToString();
                string ff = "00";
            }
        }
    }
}