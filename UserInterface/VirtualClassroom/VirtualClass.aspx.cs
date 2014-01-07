using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Database;
using CMS.Logic;
using System.Data;
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
        private DataTable dt;
        public ArrayList thumb;
        public String classTitle = "Class Title will appear here";
        private void loadDefaults()
        {
            String qry_getSem, qry_getDetails;
            if (userType.Equals("Student"))
            {
                qry_getSem = "Select semester from cms.student_master where email_id = '" + this.userName + "'";
                dt = dbc.executeSelectQueryWithDT(qry_getSem);
                userSem = dt.Rows[0][0].ToString();
                qry_getDetails = "select `key`,description from cms.virtualclass_master where associatedto_sem = '" + userSem + "'";
                dt = dbc.executeSelectQueryWithDT(qry_getDetails);
                if (dt != null)
                {
                    this.defaultKey = dt.Rows[0][0].ToString();
                    this.defaultDescription = dt.Rows[0][1].ToString();
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
            //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "myFunc", "refreshClassName();", true);
            this.loadDefaults();
            if (!Page.IsPostBack)
            {
                ddlClass.Items.Insert(0, new ListItem("Select Class", "0"));
                func.fillDropdownlist(ddlClass, "Select * from cms.virtualclass_master", "id", "title");
            }
            //else
            //{
            //    this.classTitle = ddlClass.SelectedValue;
            //}
        }

        public void loadVideoList(object sender, EventArgs e)
        {
            this.classTitle = ddlClass.SelectedItem.Text;
            dt = dbc.executeSelectQueryWithDT("Select * from cms.video_master where class_id = '" + func.getClassId(ddlClass.SelectedItem.Text) + "'");
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