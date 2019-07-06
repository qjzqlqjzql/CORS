using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.publicforms.register
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["action"] == "register")
            {
                Model.RegisterUser registeruser = new Model.RegisterUser();
                registeruser.UserName = Request.Form["username"];
                registeruser.PassWord = Request.Form["password"];
                registeruser.Email = Request.Form["email"];
                registeruser.Phone = Request.Form["phone"];
                registeruser.RegTime = DateTime.Now;
                registeruser.LastLoginTime = DateTime.Now;
                registeruser.TryLoginTimes = 0;
                registeruser.CertifiationStatus = 0;
                registeruser.CertifiationIndex = "";
                registeruser.UserType = 1;
                registeruser.IsEnable = 1;

                DAL.RegisterUser.Add(registeruser);
                Response.Write("1");
                Response.End();
            }
            if(Request["action"]=="check_username")
            {
                if(DAL.RegisterUser.Exists(Request["username"]))
                {
                    Response.Write("用户名已存在");
                    Response.End();
                }
                else
                {
                    Response.Write("true");
                    Response.End();
                }
            }
        }

    }
}