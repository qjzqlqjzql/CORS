using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System.IO;
using NPOI.HSSF.UserModel;

namespace CORSV2.forms.administrator.order
{
    public partial class manage_order : System.Web.UI.Page
    {
        //public string result = "";
        //public string usbelong = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserName"] == null || Session["UserType"] == null || Convert.ToInt32(Session["UserType"]) < 0 || Convert.ToInt32(Session["UserType"]) > 10)
            //{

            //    Response.Write("<script>alert(\"请登录\");location.href = \"https://oauth.zjzwfw.gov.cn/login.jsp\";</script>");
            //    //Response.Redirect("http://www.zjzwfw.gov.cn/");
            //    Response.End();
            //}
            //if (!IsPostBack)
            //{
            //    DAL.UserInfoWeb du = new DAL.UserInfoWeb();
            //    usbelong = du.GetModelu(Session["UserName"].ToString()).BelongArea;
            //    if (usbelong == "全省" || usbelong == "")
            //    {
            //        dataType1.SelectedIndex = 1;
            //    }
            //    else
            //    {
            //        dataType1.Items.Clear();
            //        dataType1.Items.Add(usbelong);
            //        dataType1.SelectedIndex = 0;
            //    }

            //}
            if (Request["action"] != null && Request["action"] == "GetData")
            {
                if (!GetCors())
                {
                    Response.Write("0");

                }
            }
            if (Request["action"] != null && Request["action"] == "DeleteCors")
            {
                DeleteCors();
            }
            if(Request["id"] != null )
            {
                Model.OrderList orderlist = DAL.OrderList.GetModel(Convert.ToInt32(Request["id"]));
                string img_path = orderlist.TransferCertificate;
                Response.Write("<img src='"+img_path+"' />");
                Response.End();
            }
        }

        //    if (Request["action"] != null && Request["action"] == "DownloadAll")
        //    {
        //        DownloadAll();
        //    }
        //}
        //private void DownloadAll()
        //{
        //    if (Session["UserName"] == null)
        //    { }
        //    else
        //    {                
        //        DataTable dt = DAL.RTK_User.GetList("1=1 order by id asc").Tables[0];
        //         DAL.UserBalance usb = new DAL.UserBalance();
        //        //dt.Columns.Add("Realpassword", typeof(string));
        //        dt.Columns.Add("starttime", typeof(DateTime));
        //        dt.Columns.Add("endtine", typeof(DateTime));
        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            string realpassword ;
        //            DateTime start;
        //            DateTime end;
        //            try
        //            {
        //                string username1 = dr["UserName"].ToString();

        //                start = usb.GetModel(username1,1).BSStartTime;
        //                end = usb.GetModel(username1, 1).BSEndTime;
        //                //realpassword = AES_Key.AESDecrypt(dr["PassWord"].ToString(), dr["UserName"].ToString().PadLeft(16, '0'));
        //            }
        //            catch
        //            {
        //                //realpassword = AES_Key.AESDecrypt(dr["PassWord"].ToString(), dr["UserName"].ToString().PadLeft(16, '0'));
        //                start =DateTime.Now;
        //                end = DateTime.Now;
        //            }
        //            //dr["Realpassword"] = realpassword;

        //               dr["starttime"] =start;

        //               dr["endtine"] = end;
        //        }


        //      //  PassWord.Value = AES_Key.AESDecrypt(mrtk.PassWord, mrtk.UserName.PadLeft(16, '0'));
        //        WriteExcelWithNPOI(dt, "xls");
        //       // WriteExcelWithNPOI(dt1, "xls");
        //    }
        //}
        //public void WriteExcelWithNPOI(DataTable dt, String extension)
        //{

        //    IWorkbook workbook;

        //    if (extension == "xlsx")
        //    {
        //        workbook = new XSSFWorkbook();
        //    }
        //    else if (extension == "xls")
        //    {
        //        workbook = new HSSFWorkbook();
        //    }
        //    else
        //    {
        //        throw new Exception("This format is not supported");
        //    }

        //    ISheet sheet1 = workbook.CreateSheet("Sheet 1");

        //    //make a header row
        //    IRow row1 = sheet1.CreateRow(0);

        //    for (int j = 0; j < dt.Columns.Count; j++)
        //    {

        //        ICell cell = row1.CreateCell(j);
        //        String columnName = dt.Columns[j].ToString();
        //        cell.SetCellValue(columnName);
        //    }

        //    //loops through data
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        IRow row = sheet1.CreateRow(i + 1);
        //        for (int j = 0; j < dt.Columns.Count; j++)
        //        {

        //            ICell cell = row.CreateCell(j);
        //            String columnName = dt.Columns[j].ToString();
        //            cell.SetCellValue(dt.Rows[i][columnName].ToString());
        //        }
        //    }

        //    using (var exportData = new MemoryStream())
        //    {
        //        Response.Clear();
        //        workbook.Write(exportData);
        //        if (extension == "xlsx") //xlsx file format
        //        {
        //            Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //            Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "CORS用户.xlsx"));
        //            Response.BinaryWrite(exportData.ToArray());
        //        }
        //        else if (extension == "xls")  //xls file format
        //        {
        //            Response.ContentType = "application/vnd.ms-excel";
        //            Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "CORS用户.xls"));
        //            Response.BinaryWrite(exportData.GetBuffer());
        //        }
        //        Response.End();
        //    }
        //}
        private bool GetCors()
        {
            string sort = "SubmitTime";
            string order = "DESC";
            string search = "";
            int offset = 0;
            int limit = 10;
            if (Request["offset"] != null)
            {
                offset = Convert.ToInt32(Request["offset"]);
                limit = Convert.ToInt32(Request["limit"]);
            }
            if (Request["search"] != null)
                search = Request["search"].ToString();
            if (Request["sort"] != null)
            {

                sort = Request["sort"].ToString() == "reSubmitTime" ? "SubmitTime" : Request["sort"].ToString();
                order = Request["order"].ToString();

            }
            string strwhere = "1=1";
            int totalCount = DAL.OrderList.GetRecordCount(search);
            if (offset + limit > totalCount)
            {
                limit = totalCount - offset;
            }
            DataSet ds = DAL.OrderList.GetBriefList1(offset, limit, sort, order, search);
            ds.Tables[0].Columns.Add("button", typeof(string));
            ds.Tables[0].Columns.Add("dealStatus", typeof(string));
            ds.Tables[0].Columns.Add("reSubmitTime", typeof(string));
            ; foreach (DataRow dr in ds.Tables[0].Rows)
            {
                // string temp_time=((DateTime)dr["SubmitTime"]).ToString("yyyy-MM-dd");
                dr["reSubmitTime"] = dr["SubmitTime"].ToString();
                dr["button"] = "<a id='" + dr["ID"] + "' onclick= view(this.id) >查看</a>";
                if (dr["OrderStatus"].ToString() == "1")
                {
                    dr["dealStatus"] = "提交已支付";
                }
                else if (dr["OrderStatus"].ToString() == "2")
                {
                    dr["dealStatus"] = "审核通过";
                }
                else if (dr["OrderStatus"].ToString() == "3")
                {
                    dr["dealStatus"] = "审核失败";
                }
                else
                {
                    dr["dealStatus"] = "提交未支付";
                }
                //if (dr["IsChecked"].ToString() == "0")
                //{
                //    dr["Status"] = "<a style=" + "color:red" + ">注册申请</a>";
                //}
                //else if (dr["IsChecked"].ToString() == "1")
                //{
                //    dr["Status"] = "<a style=" + "color:blue" + ">受理通过</a>";
                //}
                //else if (dr["IsChecked"].ToString() == "-1")
                //{
                //    dr["Status"] = "<a style=" + "color:brown" + ">受理失败</a>";
                //}
            }
            string result = "";
            if (ds.Tables[0].Rows.Count > 0)
            {
                string jsonComs = CORSV2.cs.JSONHelper.DataTableToJSON(ds.Tables[0]);
                result = "{\"total\":" + totalCount.ToString() + ",\"rows\":" + jsonComs + "}";
                Response.ContentType = "application/Json";
                Response.Write(result);
                Response.End();
                return true;
            }
            else
            {
                string jsonComs = CORSV2.cs.JSONHelper.DataTableToJSON(ds.Tables[0]);
                result = "{\"total\":" + totalCount.ToString() + ",\"rows\":" + jsonComs + "}";
                Response.ContentType = "application/Json";
                Response.Write(result);
                Response.End();
                return false;
            }
        }
        private void DeleteCors()
        {
            int[] ids;
            string a = Request["id[]"];
            string[] temp = a.Split(',');
            ids = new int[temp.Length];
            try
            {
                for (int m = 0; m < temp.Length; m++)
                {
                    ids[m] = Convert.ToInt32(temp[m]);
                    string ordernumber = DAL.OrderList.GetModel(ids[m]).OrderNumber;
                    //删除该订单
                    bool result = DAL.OrderList.Delete(ordernumber);
                }
                Response.Clear();
                Response.Write("1");
                Response.End();
            }
            catch (Exception)
            {
            }
        }
    }
}