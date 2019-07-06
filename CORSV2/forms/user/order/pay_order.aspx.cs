using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.user.order
{
    public partial class pay_order : System.Web.UI.Page
    {
        public static string order_number = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["order_number"] != null)
            {
                order_number = Request["order_number"];
            }
            if (Request["action"] != null)
            {
                switch (Request["action"])
                {
                    case "AddData":
                        //Response.ContentType = "text/plain";
                        AddData(order_number);
                        //Response.End();
                        break;
                }
            }


        }
        private int AddData(string order_number)
        {
            string filename = Request.Files[0].FileName;
            string[] extname = filename.Split('.');
            Model.OrderList orderlist = DAL.OrderList.GetModel(order_number);
            string savepath = Server.MapPath("~/upload/TransferCertificate/");
            orderlist.TransferCertificate = "/upload/TransferCertificate/" + order_number + "." + extname[extname.Length - 1];
            DAL.OrderList.Update(orderlist);
            try
            {
                Request.Files[0].SaveAs(savepath + order_number + "." + extname[extname.Length - 1]);
                return 1;
            }
            catch
            {
                return -1;
            }
        }
    }
}