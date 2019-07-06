using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CORSV2.forms.user.company
{
    public partial class qualification_certify : System.Web.UI.Page
    {
        public static string map_qualification_path = "";
        public static string business_licence_path = "";
        public static string corporate_id_card_front = "";
        public static string corporate_id_card_reverse = "";
        public static string operator_id_card_front = "";
        public static string operator_id_card_reverse = "";
        public static string secrecy_agreement_path = "";
        public static string client_authorization_path = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null || Session["UserType"] == null || Convert.ToInt32(Session["UserType"]) < 0 || Convert.ToInt32(Session["UserType"]) > 5)
            {
                Response.Write("<script>alert(\"请登录\");location.href = location.origin+\"/forms/publicforms/Login/Login.aspx\";</script>");
                Response.End();
            }

            string UserName = Session["UserName"].ToString();
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
                    case "company_judge":
                        company_judge(Request["company_name"]);
                        break;
                    default:
                        break;
                }
            }
        }
        private void company_judge(string company_name)
        {
            string json = "{\"code\":200}";
            Response.Write(json);
            Response.End();
        }
        private int AddData()
        {
            string fileid = Request["field"];
            string filename = Request.Files[0].FileName;
            string[] extname = filename.Split('.');
            string savepath = Server.MapPath("~/upload/Qualification/") + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
            Request.Files[0].SaveAs(savepath + filename);
            switch (Request["field"])
            {
                case "map_qualification_path":
                    map_qualification_path = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "business_licence_path":
                    business_licence_path = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "corporate_id_card_front":
                    corporate_id_card_front = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "corporate_id_card_reverse":
                    corporate_id_card_reverse = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "operator_id_card_front":
                    operator_id_card_front = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "operator_id_card_reverse":
                    operator_id_card_reverse = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "secrecy_agreement_path":
                    secrecy_agreement_path = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                case "client_authorization_path":
                    client_authorization_path = "/upload/Qualification/" + DateTime.Now.ToString("yyyMMddhhmmssfff") + "." + extname[extname.Length - 1];
                    break;
                default:
                    break;
            }
            return 1;
        }

        private int Verifycompanyform()
        {
            Model.CompanyInfo companyinfo = new Model.CompanyInfo();
            companyinfo.Address = Request.Form["address"];
            companyinfo.BelongArea = Request.Form["city"];
            companyinfo.BusinessLicense = business_licence_path;
            companyinfo.Company = Request.Form["company_name"];
            companyinfo.CompanyTel = Request.Form["corporate_tel"];
            companyinfo.Contact = Request.Form["contact_name"];
            companyinfo.ContactIDCardFile = operator_id_card_front;
            companyinfo.ContactIDCardNumer = "";
            companyinfo.Industry = Request.Form["company_type_id"];
            companyinfo.LegalIDCardFile = corporate_id_card_front;
            companyinfo.LegalIDCardNumber = "";
            companyinfo.LegalPerson = Request.Form["corporate"];
            companyinfo.OrganizationCode = Request.Form["business_licence"];
            companyinfo.PowerOfAttorney = client_authorization_path;
            companyinfo.SurveyingFile = map_qualification_path;
            companyinfo.SurveyingNumber = Request.Form["map_qualification_sn"];
            companyinfo.SurveyingQualification = Request.Form["map_level"];
            DAL.CompanyInfo.Add(companyinfo);
            Model.CompanyInfo temp_companyinfo = DAL.CompanyInfo.GetModel();
            Model.RegisterUser registeruser = DAL.RegisterUser.GetModel(Session["UserName"].ToString());
            registeruser.CertifiationIndex = temp_companyinfo.ID.ToString();
            registeruser.CertifiationStatus = 1;
            DAL.RegisterUser.Update(registeruser);
            string json = "{\"code\":200}";
            Response.Write(json);
            Response.End();
            //select top 1 * from tra.dbo.订单 order by 下单时间 desc   --时间倒序排列取第一条
            // companyinfo.
            //string map_level = Request.Form["map_level"];
            //string corporate = Request.Form["corporate"];
            //string province = Request.Form["province"];
            //string city = Request.Form["city"];
            //string town = Request.Form["town"];
            //string address = Request.Form["address"];
            //string post_code = Request.Form["post_code"];
            //string contact_phone = Request.Form["contact_phone"];
            //string contact_email = Request.Form["contact_email"];
            //string contact_qq = Request.Form["contact_qq"];
            //string contact_wechat = Request.Form["contact_wechat"];
            return 1;
        }
    }
}