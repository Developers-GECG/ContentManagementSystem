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


namespace CMS.UserInterface.StaffPortal
{
    public partial class demo : System.Web.UI.Page
    {
        private Video video;
        //private String connString = "server=localhost;User Id=root;Password=root;database=cms";
        DBConnect dbc;
        String qry;
        public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            video = new Video();
            this.dt = video.poplateVirtualClass();
            ddlClass.DataSource = this.dt;
            ddlClass.DataTextField = "title";
            ddlClass.DataValueField = "id";
            ddlClass.DataBind();
            ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
            ddlClass.Items.Insert(1, new ListItem("Create New Class", "1"));
            this.Button_Click(sender,e);
        }
        public void Button_Click(object sender, EventArgs e)
        {
            dbc = new DBConnect();
            dbc.openConnection();
            dt = dbc.executeSelectQueryWithDT("Select * from cms.video_master where class_id = 1");
            rep1.DataSource = dt;
            rep1.DataBind();
        }
    }
}