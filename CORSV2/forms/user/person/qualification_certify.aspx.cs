using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.user.person
{
    public partial class qualification_certify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["action"] != null)
            {
                switch (Request["action"])
                {
                    case "AddData":
                        //Response.ContentType = "text/plain";
                        AddData();
                        //Response.End();
                        break;
                    case "verifycompanyform":
                        Verifycompanyform();
                        break;
                    default:
                        break;
                }
            }
        }
        private int AddData()
        {
            string name = Request.Files[0].FileName;
            string fileid = Request["field"];
            string savepath = Server.MapPath("~/upload/WorkingArea/");
            string filename = Request.Files[0].FileName;
            try
            {
                Request.Files[0].SaveAs(savepath + filename);
                return 1;
            }
            catch
            {
                return -1;
            }
        }

        private int Verifycompanyform()
        {
            string company_name = Request.Form["company_name"];

            return 1;
        }
    }
}