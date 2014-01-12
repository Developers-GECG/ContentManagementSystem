using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Google.GData.Client;
using Google.GData.Extensions;
using Google.GData.YouTube;
using Google.GData.Extensions.MediaRss;
using Google.YouTube;
using Google.GData.Extensions.Location;
using System.Net;
using System.Web.Services;

namespace CMS.UserInterface.StaffPortal
{
    public partial class TestVideos : System.Web.UI.Page
    {
        Video newVideo = new Video();
        public string urlName = "";
        public string tokenValue = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
                this.add_Video(sender, e);
            }
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
            String developerKey = "AI39si4BpxpB81zKCC2Ofo1MbC6CjC7Z_S_gaZ_Fz2ouQXj5n55freXGXhJMxiM4kDXt2IF90Ho0gKox_AytvMGLjAw0FsAq9A";
            String username = "gecgsec28@gmail.com";
            String pwd = "cmsgecg28";
            YouTubeRequestSettings settings = new YouTubeRequestSettings("cms_app", developerKey, username, pwd);
            YouTubeRequest request = new YouTubeRequest(settings);
            Video newVideo = new Video();
            newVideo.Title = Text_title.Text;
            newVideo.Tags.Add(new MediaCategory("Education", YouTubeNameTable.CategorySchema));
            newVideo.Keywords = Text_keyword.Text;
            newVideo.Description = Text_description.Text;
            newVideo.YouTubeEntry.Private = false;
            newVideo.YouTubeEntry.Location = new GeoRssWhere(37, -122);
            newVideo.Tags.Add(new MediaCategory("CMS, GECG28", YouTubeNameTable.DeveloperTagSchema));
            FormUploadToken token = request.CreateFormUploadToken(newVideo);
            urlName = token.Url;
            tokenValue = token.Token;
            //Response.Write("URL:" + urlName + "\n");
            //Response.Write("Token:" + tokenValue + "\n");
        }



        protected void button_click(object sender, EventArgs e)
        {
            if (newVideo.IsDraft)
            {
                Console.WriteLine("Video is not live.");
                string stateName = newVideo.Status.Name;
                if (stateName == "processing")
                {
                    Console.WriteLine("Video is still being processed.");
                }
                else if (stateName == "rejected")
                {
                    Console.Write("Video has been rejected because: ");
                    Console.WriteLine(newVideo.Status.Value);
                    Console.Write("For help visit: ");
                    Console.WriteLine(newVideo.Status.Help);
                }
                else if (stateName == "failed")
                {
                    Console.Write("Video failed uploading because:");
                    Console.WriteLine(newVideo.Status.Value);
                    Console.Write("For help visit: ");
                    Console.WriteLine(newVideo.Status.Help);
                }
            }
        }
    }
}