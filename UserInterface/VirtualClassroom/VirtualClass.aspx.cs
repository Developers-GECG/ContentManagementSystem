using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Database;
using MySql.Data.MySqlClient;
using CMS.Logic;
using System.Data;
using System.Net;
using System.Collections;

namespace CMS.UserInterface.VirtualClassroom
{
    public partial class VirtualClass1 : System.Web.UI.Page
    {
        Functions func = new Functions();
        DBConnect dbc = new DBConnect();
        String userType ;
        String userName;
        String userSem;
        public String defaultURL = "http://d26qa89x3cppxu.cloudfront.net/yt.html#id=xoSJ3_dZcm8&height=400px&width=700px";
        public String defaultKey;
        public String defaultDescription;
        private DataTable dt, virtualClass,dtfile;
        public ArrayList thumb;
        public String classTitle = "Class Title will appear here";
        
        private void loadDefaults()
        {
            String qry_getSem;
            if (userType.Equals("Student"))
            {
                qry_getSem = "Select semester from student_master where email_id = '" + this.userName + "'";
                dt = dbc.executeSelectQueryWithDT(qry_getSem);
                userSem = dt.Rows[0][0].ToString();
                //qry_getDetails = "select `key`,description from cms.virtualclass_master where associatedto_sem = '" + userSem + "'";
                //dt = dbc.executeSelectQueryWithDT(qry_getDetails);
                if (dt != null)
                {
                    String filter = "associatedto_sem = '" + this.userSem + "'";
                    //this.defaultKey = (DataRow)this.virtualClass.Select(filter);
                    //this.defaultDescription = virtualClass.Rows[0]["description"].ToString();
                }
                else
                {
                    this.defaultKey = "xoSJ3_dZcm8";
                    this.defaultDescription = "This is a virtual classroom page. You are seeing this because there are no videos posted for your semester";
                }
            }
            else
            {
                //to be implemented
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["UserType"] == null) { Response.Redirect("../Login.aspx"); }
            this.userType = Session["UserType"].ToString();
            this.userName = Session["UserID"].ToString();
            this.loadDefaults();
            if (!Page.IsPostBack)
            {
                ddlClass.Items.Insert(0, new ListItem("Select Class", "0"));
                this.virtualClass = dbc.executeSelectQueryWithDT("Select * from virtualclass_master");
                func.fillDropdownlistWithDT(ddlClass, virtualClass, "id", "title");
            }

            String qry = "Select title,file_name from cms.file_master where class_id='4'";
            dbc.openConnection();
            dtfile = dbc.executeSelectQueryWithDT(qry);
            dbc.closeConnection();
            Label[] labelary = new Label[dtfile.Rows.Count];
            Button[] btn1 = new Button[dtfile.Rows.Count];
            Table tb = new Table();
            tb.Width = Unit.Percentage(50);
            TableRow tr;
            TableCell tc1,tc2;
            for (int i = 0; i < dtfile.Rows.Count; i++)
            {
                labelary[i] = new Label();
                btn1[i] = new Button();
                tr = new TableRow();
                tc1 = new TableCell();
                tc2 = new TableCell();
                labelary[i].Text = "<br>" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + dtfile.Rows[i]["title"].ToString();
                labelary[i].Font.Size=13;
                labelary[i].CssClass = "control-label";
                btn1[i].Text = "  Download  ";
                btn1[i].CssClass = "btn btn-inverse";
                btn1[i].CommandArgument = dtfile.Rows[i]["file_name"].ToString();
                btn1[i].Click += new EventHandler(dwnld_click);
                tc1.Controls.Add(labelary[i]);
                tc2.Controls.Add(btn1[i]);
                tr.Cells.Add(tc1);
                tr.Cells.Add(tc2);
                tb.Rows.Add(tr);
                displayfile.Controls.Add(tb);
            }
        }

        protected void dwnld_click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
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

        public void loadVideoList(object sender, EventArgs e)
        {
            this.classTitle = ddlClass.SelectedItem.Text;
            dt = dbc.executeSelectQueryWithDT("Select * from video_master where class_id = '" + func.getClassId(ddlClass.SelectedItem.Text) + "'");
            int totalVids = dt.Rows.Count;
            rep1.DataSource = dt; //commented out for now
            rep1.DataBind();
        }

        public String getThLink(String key)
        {
            return "http://img.youtube.com/vi/" + key + "/mqdefault.jpg"; 
        }
    }
}