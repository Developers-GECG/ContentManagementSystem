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

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddVideo : System.Web.UI.Page
    {
        private DataTable dt;
        public Functions func = new Functions();
        private DBConnect dbc = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                func.fillDropdownlist(ddlClass, "Select id,title from virtualclass_master", "id", "title");
                ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
                ddlClass.Items.Insert(1, new ListItem("Create New Class", "1"));
            }
        }
        //protected String getStaffId(String username)
        //{
        //    string qry = "select id from `cms`.`staff_master` where email_id = '" + username + "'";
        //    dt = dbc.executeSelectQueryWithDT(qry);
        //    return dt.Rows[0]["id"].ToString();
        //}
        protected void addClass(Object sender, EventArgs e)
        {
            
            String qry = "call AddClass('" + Text_classTitle.Text + "', '" + Text_classDescription.Text + "', '" + Session["UserID"].ToString() + "', '" + Text_courtesy.Text + "', '" + Text_CKey.Text + "', '" + DDL_AssocSemester.Text + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("Staff-home.aspx");
        }
        protected void addVideo(Object sender, EventArgs e)
        {
            String qry = "call AddVideo('" + Text_title.Text + "', '" + ddlClass.SelectedItem.Text + "', '" + Text_key.Text + "', '" + Text_description.Text + "', '" + func.getStaffId(Session["UserID"].ToString()) + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("Staff-home.aspx");
            
        }
        //[System.Web.Services.WebMethod]
        //public static ArrayList loadDeptCheckboxes()
        //{
        //    ArrayList list = new ArrayList();
        //    String qry = "select id,dept_name from cms.dept_master";
        //    MySqlConnection con = new MySqlConnection(new DBConnect()._conStr);
        //    MySqlCommand cmd = new MySqlCommand(qry, con);
        //    cmd.CommandType = CommandType.Text;
        //    //cmd.Parameters.AddWithValue("@condition", className);
        //    cmd.CommandText = qry;
        //    cmd.Connection = con;
        //    con.Open();
        //    MySqlDataReader sdr = cmd.ExecuteReader();
        //    while (sdr.Read())
        //    {
        //        list.Add(new ListItem(sdr["id"].ToString(), sdr["dept_name"].ToString()));
        //    }
        //    con.Close();
        //    return list;
        //}

        protected void populateCheckBoxes(object sender, EventArgs e)
        {
            if(ddlClass.SelectedItem.Text == "Create New Class")
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