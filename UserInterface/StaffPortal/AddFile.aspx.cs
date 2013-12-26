using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddFile : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.FileUpload FileUploadControl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/Temp/") + filename);
                    Response.Write("Upload status: File uploaded!");
                }
                catch (Exception ex)
                {
                    Response.Write("Upload status: The file could not be uploaded. The following error occured: " + ex.Message);
                }
            }
        }
       
    }
}