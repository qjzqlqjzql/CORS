using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.user.order
{
    public partial class check_order : System.Web.UI.Page
    {
        public string servertype = "";
        public string servertime = "";
        public string order_number = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request["action"] == "confirm")
            //{

            //    string ff = Request["ordernumber"];
            //    Response.Write(order_number);
            //    Response.End();
            //    return;
            //}
            if (Session["UserName"] == null || Session["UserType"] == null || Convert.ToInt32(Session["UserType"]) < 0 || Convert.ToInt32(Session["UserType"]) > 5)
            {
                Response.Write("<script>alert(\"请登录\");location.href = location.origin+\"/forms/publicforms/Login/Login.aspx\";</script>");
                Response.End();
            }
            string UserName = Session["UserName"].ToString();
            Model.OrderList orderlist = new Model.OrderList();
            order_number = Request["order_number"];
            orderlist = DAL.OrderList.GetModel(order_number);
            //order_number.Value = Request["order_number"];
            switch (orderlist.ServerType)
            {
                case "dm":
                    servertype = "亚米级服务";
                    break;
                case "cm":
                    servertype = "亚米级服务";
                    break;
                case "mm":
                    servertype = "亚米级服务";
                    break;
                default:
                    break;
            }
            servertime = orderlist.ServiceDuration + "个月";
        }
    }
}