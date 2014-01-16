using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.VirtualClassroom;
using System.Data;
using CMS.Logic.Database;
using CMS.Logic;
using MySql.Data.MySqlClient;
using System.Collections;
using Google.GData.YouTube;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddVideo : System.Web.UI.Page
    {

        public VideoUpload vup = new VideoUpload();
        public Functions func = new Functions();
        private DBConnect dbc = new DBConnect();
        public String urlName = "";
        public String tokenValue = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                func.fillDropdownlist(ddlClass, "Select DISTINCT title,id from virtualclass_master", "id", "title");
                ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
                ddlClass.Items.Insert(1, new ListItem("Create New Class", "1"));
            }
        }

        protected void addClass(Object sender, EventArgs e)
        {

            String qry = "call AddClass('" + Text_classTitle.Text + "', '" + Text_classDescription.Text + "', '" + Session["UserID"].ToString() + "', '" + Text_courtesy.Text + "', '" + Text_CKey.Text + "', '" + DDL_AssocSemester.Text + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("../StaffPortal/Staff-home.aspx");
        }



        public void add_Video(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                meta.Attributes.Remove("style");
                meta.Attributes.Add("style", "display:none");
                videoUp.Attributes.Remove("style");
                videoUp.Attributes.Add("style", "display:block");
            }
            Session["VideoTitle"] = Text_title.Text;
            Session["VideoDescription"] = Text_description.Text;
            Session["ClassId"] = ddlClass.SelectedValue;
            FormUploadToken formtoken = vup.addMetadata(Text_title.Text, Text_description.Text, Text_keyword.Text);
            urlName = formtoken.Url;
            tokenValue = formtoken.Token;
            Response.Write(urlName);
            //Response.Write("Selected Index : " + ddlClass.SelectedIndex);
            //Response.Write("Selected value : " + ddlClass.SelectedValue);
            //Response.Write("Selected Item : " + ddlClass.SelectedItem);
        }

        protected void populateCheckBoxes(object sender, EventArgs e)
        {
            if (ddlClass.SelectedItem.Text == "Create New Class")
            {
                DataTable dt = dbc.executeSelectQueryWithDT("select id,dept_name from dept_master");
                CheckBox_dept.DataTextField = "dept_name";
                CheckBox_dept.DataValueField = "id";
                CheckBox_dept.DataSource = dt;
                CheckBox_dept.DataBind();
            }
        }
    }


}