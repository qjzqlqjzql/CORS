using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.publicforms.login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Request["action"] == "getcode")
             {
                 string code;
                 Bitmap bmp = cs.VerifyCodeHelper.CreateVerifyCodeBmp(out code);
                 Bitmap newbmp = new Bitmap(bmp, 108, 36);
                 Session["VerifyCode"] = code;

                 Response.Clear();
                 Response.ContentType = "image/bmp";
                 newbmp.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Bmp);
             }
        }
    }
}