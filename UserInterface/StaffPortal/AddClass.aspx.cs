using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.VirtualClassroom;
using System.Data;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddClass : System.Web.UI.Page
    {
        private Video video;
        private DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            video = new Video();
            this.dt = video.poplateVirtualClass();
            ddlClass.DataSource = this.dt;
            ddlClass.DataTextField = "class_name";
            ddlClass.DataValueField = "id";
            ddlClass.DataBind();
            ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
            ddlClass.Items.Insert(1, new ListItem("Create New Class..", "1"));
        }
        protected void Class_Click(Object sender, EventArgs e)
        {
            if (ddlClass.SelectedValue == "1")
            {
                
            }
        }


    }


}