using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CMS.Logic.VirtualClassroom;
using Google.GData.YouTube;

namespace CMS.UserInterface.StaffPortal
{
    public partial class TestVideos : System.Web.UI.Page
    {

        public VideoUpload vup = new VideoUpload();
        public String urlName = "";
        public String tokenValue = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
  
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
            Session["VideoKeyword"] = Text_keyword.Text;
            FormUploadToken formtoken = vup.addMetadata(Text_title.Text, Text_description.Text, Text_keyword.Text);
            urlName = formtoken.Url;
            tokenValue = formtoken.Token;
        }

    }
}