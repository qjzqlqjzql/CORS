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
             if (Request["action"] == "login")
             {
                 string VerifyCode = Request["VerifyCode"];
                 string username = Request["UserName"];
                 string password = Request["PassWord"];
                 string code = Session["VerifyCode"].ToString();
                 if (VerifyCode.ToLower() != code.ToLower())
                 {
                     Response.Write("-1");
                     Response.End();
                 }
                 Model.RegisterUser registeruser=new Model.RegisterUser();
                 if (DAL.RegisterUser.Exists(username))
                 {
                     registeruser = DAL.RegisterUser.GetModel(username);
                 }
                 else
                 {
                     Response.Write("-2");
                     Response.End();
                 }
                 if (registeruser.PassWord == password)
                 {
                     Session["UserType"] = DAL.RegisterUser.GetModel(username).UserType;
                     Session["UserName"] = username;
                     Response.Write("1");
                     Response.End();
                 }
                 else
                 {
                     Response.Write("0");
                     Response.End();
                 }
             }

        }
    }
}