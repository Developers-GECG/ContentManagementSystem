using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CMS.Logic.Database;
using CMS.Logic;

namespace CMS.UserInterface.VirtualClassroom
{
    public partial class AddFile : System.Web.UI.Page
    {
      //  protected System.Web.UI.WebControls.FileUpload FileUploadControl;
        DBConnect dbc = new DBConnect();
        Functions fun = new Functions();
        protected void Page_Load(object sender, EventArgs e)
        {
            String qry = "select id,title from virtualclass_master";
            fun.fillDropdownlist(ddlClass, qry, "id", "title");
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/Temp/") + filename);
                    String qry = "INSERT INTO `file_master` (`title`, `class_id`, `description`, `file_name`) VALUES ('"+Text_title.Text+"', '"+ddlClass.SelectedIndex.ToString()+"', '"+Text_description.Text+"', '"+filename+"');";
                    dbc.executeIUDQuery(qry);
                    Label_status.Text = "Upload status: File uploaded!";
                    Label_status.Attributes.Remove("display");
                    Label_status.Attributes.Add("display", "block");
                }
                catch (Exception ex)
                {
                    Label_status.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                    Label_status.Attributes.Remove("display");
                    Label_status.Attributes.Add("display", "block");
                }
            }
        }
       
    }
}