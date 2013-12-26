using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic;
using System.Xml;
using System.IO;

namespace CMS.UserInterface
{
    public partial class Config : System.Web.UI.Page
    { 
        protected void submitClick(object sender, EventArgs e)
        {
            XmlWriter writer = XmlWriter.Create(Server.MapPath("~/Config/DBconfig.xml"));
            writer.WriteStartElement("DatabaseConfiguration");
            writer.WriteElementString("IP", tb_ip.Text);
            writer.WriteElementString("Port", tb_port.Text);
            writer.WriteElementString("Username", tb_uname.Text);
            writer.WriteElementString("Password", tb_pwd.Text);
            writer.WriteElementString("DatabaseName", tb_name.Text);
            writer.WriteEndElement();
            writer.Flush();
        }
    }
}