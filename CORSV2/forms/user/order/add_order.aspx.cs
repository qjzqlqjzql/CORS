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
            //Session["UserName"] = "guoqijia";
            if (Request["action"] == "order")
            {
                Model.OrderList orderlist = new Model.OrderList();
                orderlist.UserName = Session["UserName"].ToString();
                orderlist.OrderNumber = DateTime.Now.ToString("yyyMMddhhmmssfff");
                orderlist.SubmitTime = DateTime.Now;
                orderlist.AccountNum = Convert.ToInt32(Request["applynum"]);
                orderlist.ServiceDuration = Request["time"].ToString();
                orderlist.ServerType = Request["servertype"].ToString();
                string[] otherserver = Request["otherserver"].ToString().Split(',');
                if (Array.IndexOf(otherserver, "CoorTransEnable") != -1)
                {
                    orderlist.CoorSystemEnable = 1;
                }
                if (Array.IndexOf(otherserver, "HeightTransEnable") != -1)
                {
                    orderlist.HeightTransEnable = 1;
                }
                if (Array.IndexOf(otherserver, "SHPTransEnable") != -1)
                {
                    orderlist.SHPTransEnable = 1;
                }
                if (Array.IndexOf(otherserver, "ObsQualityEnable") != -1)
                {
                    orderlist.ObsQualityEnable = 1;
                }

                if (DAL.OrderList.Add(orderlist))
                {
                    Response.Write(orderlist.OrderNumber);
                    Response.End();
                }
                else
                {
                    Response.Write("200");
                    Response.End();
                }
            }
        }
    }
}