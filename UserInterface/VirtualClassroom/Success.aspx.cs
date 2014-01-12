using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.UserInterface.VirtualClassroom
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Request.QueryString["status"] != null)
            {
                String status = Page.Request.QueryString[0];
                int statusCode = Int32.Parse(status);
                if (statusCode == 200)
                {
                    status_text.Text = "Upload Successful with status : " + statusCode;
                    video_key.Text = "Video Key : " + Page.Request.QueryString["id"];
                    info.Text = "Please be patient as youtube processes the video. It will be available after 1 min.";
                }
                else
                {
                    status_text.Text = "Upload unsuccessful with status : " + statusCode;
                    video_key.Attributes.Add("style", "display:none");
                    status_code.Attributes.Add("style", "display:none");
                    info.Attributes.Add("style", "display:none");
                }
            }
            else
            {
                status_text.Text = "Please Upload The Video First!!";
            }
            
        }
    }
}