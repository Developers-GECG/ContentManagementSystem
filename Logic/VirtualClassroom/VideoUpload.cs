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
using CMS.Logic.Database;
using CMS.Logic;

namespace CMS.Logic.VirtualClassroom
{
    public class VideoUpload
    {
        DBConnect dbc = new DBConnect();
        Functions func = new Functions();

        public FormUploadToken addMetadata(String title, String description, String keyword)
        {
            String developerKey = "AI39si5IOTNaonIFeiHdJxhJQy3oNC-fB1I_9w4TMeGQ3SOTyf59bNvHh2IRKvqDIHQRGMC_PIfRpJuq_bwkFPauyXQWY9T1nQ";
            String username = "cms.gecgsec28@gmail.com";
            String pwd = "cmsgecg28";
            YouTubeRequestSettings settings = new YouTubeRequestSettings("cms_app", developerKey, username, pwd);
            YouTubeRequest request = new YouTubeRequest(settings);
            Video newVideo = new Video();
            newVideo.Title = title;
            newVideo.Tags.Add(new MediaCategory("Education", YouTubeNameTable.CategorySchema));
            newVideo.Keywords = keyword;
            newVideo.Description = description;
            newVideo.YouTubeEntry.Private = false;
            newVideo.YouTubeEntry.Location = new GeoRssWhere(37, -122);
            newVideo.Tags.Add(new MediaCategory("CMS, GECG28", YouTubeNameTable.DeveloperTagSchema));
            FormUploadToken token = request.CreateFormUploadToken(newVideo);
            return token;
        }

        public void addInVideoMaster(String title,String key,String description,String staffid)
        {
            String qry = "call AddVideo('" + title + "',2, '" + key + "', '" + description + "','" + staffid + "');";
            dbc.executeIUDQuery(qry);
        }


    }
}