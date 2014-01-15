using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using CMS.Logic.Database;

namespace CMS.UserInterface.StaffPortal
{
    public partial class ViewAndDownload : System.Web.UI.Page
    {
       DBConnect dbc=new DBConnect();
       DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            String qry="Select title,file_name from cms.file_master where class_id='4'";
            dbc.openConnection();
            dt = dbc.executeSelectQueryWithDT(qry);
            dbc.closeConnection();
            Label[] labelary = new Label[dt.Rows.Count];
            Button[] btn1 = new Button[dt.Rows.Count];
            Table tb = new Table();
            TableRow tr;
            TableCell tc1;
            TableCell tc2;
            for (int i = 0; i <dt.Rows.Count; i++)
            {
                labelary[i] = new Label();
                btn1[i] = new Button();
                tr = new TableRow();
                tc1 = new TableCell();
                tc2 = new TableCell();
                labelary[i].Text = "<br>" + dt.Rows[i]["title"].ToString();
                labelary[i].CssClass = "control-label";
                btn1[i].Text = "Download" ;
                btn1[i].CssClass = "btn btn-inverse";
                btn1[i].CommandArgument = dt.Rows[i]["file_name"].ToString();
                btn1[i].Click += new EventHandler(dwnld_click);
                tc1.Controls.Add(labelary[i]);
                tc2.Controls.Add(btn1[i]);
                tr.Cells.Add(tc1);
                tr.Cells.Add(tc2);
                tb.Rows.Add(tr);
                displayFile.Controls.Add(tb);
            }
        }


        protected void dwnld_click(object sender, EventArgs e)
        {
            Button b=(Button)sender;
            String filename = b.CommandArgument.ToString();
            String flpath = Server.MapPath("~/Temp/" + filename);
            WebClient wc = new WebClient();
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearHeaders();
            response.Buffer = true;
            response.AddHeader("Content-Disposition", "attachment;filename=\"" + flpath + "\"");
            byte[] data = wc.DownloadData(flpath);
            response.BinaryWrite(data);
            response.End();
        }
        
    }
}