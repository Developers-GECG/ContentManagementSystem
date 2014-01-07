using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using CMS.Logic.Database;
using CMS.Logic.VirtualClassroom;
using System.Data;
using CMS.Logic;
using System.Collections;


namespace CMS.UserInterface.StaffPortal
{
    public partial class VirtualClass : System.Web.UI.Page
    {

        //private String connString = "server=localhost;User Id=root;Password=root;database=cms";
        Functions func = new Functions();
        DBConnect dbc = new DBConnect();
        String qry;
        public String defaultKey = "http://d26qa89x3cppxu.cloudfront.net/yt.html#id=mk48xRzuNvA&height=385px&width=640px";
        public String defaultDescription = "This is player content";
        public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlClass.Items.Insert(0, new ListItem("Select Class", "0"));
                func.fillDropdownlist(ddlClass, "Select * from cms.virtualclass_master", "id", "title");
            }
            //this.loadDefaults(sender, e);
            //this.loadVideoList(sender, e);
        }
        public void loadVideoList(object sender, EventArgs e)
        {
            dt = dbc.executeSelectQueryWithDT("Select * from cms.video_master where class_id = '" + func.getClassId(ddlClass.SelectedItem.Text) + "'");
            int totalVids = dt.Rows.Count;
            //for (int i = 1; i <= totalVids; i++)
            //{
            //    if (i % 4 == 0)
            //    {
                    rep1.DataSource = dt;
                    rep1.DataBind();
            //    }
            //}
                
        }
        public void loadDefaults(object sender, EventArgs e)
        {
            try
            {
                //dt = dbc.executeSelectQueryWithDT("select `key`,description from virtualclass_master where title = '" + ddlClass.SelectedItem.Text + "';");
                //this.defaultKey = "http://www.youtube.com/embed/" + dt.Rows[0]["key"].ToString();
                //this.defaultDescription = dt.Rows[0]["description"].ToString();
                this.defaultKey = "http://d26qa89x3cppxu.cloudfront.net/yt.html#id=mk48xRzuNvA&height=385px&width=640px";
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Add Class/Video First')</script>");
                Response.Redirect("AddVideo.aspx");
            }
        }
        [System.Web.Services.WebMethod]
        public static ArrayList loadPageDefaults(String className)
        {
            ArrayList list = new ArrayList();
            String qry = "select `key`,description from cms.virtualclass_master where title = @condition";
            MySqlConnection con = new MySqlConnection(new DBConnect()._conStr);
            MySqlCommand cmd = new MySqlCommand(qry, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@condition", className);
            cmd.CommandText = qry;
            cmd.Connection = con;
            con.Open();
            MySqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                list.Add(new ListItem(sdr["key"].ToString(),sdr["description"].ToString()));
            }
            con.Close();
            return list;
        }
    }
}