using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Login;

namespace CMS
{
    public partial class Login : System.Web.UI.Page
    {
        private LoginTasks loginTasks;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            if (ddlRegisterAs.SelectedItem.Text == "Staff")
            {
                Response.Redirect("StaffPortal/StaffRegister.aspx");
            }
            else if (ddlRegisterAs.SelectedItem.Text == "Student")
            {
                Response.Redirect("StudentPortal/StudentRegister.aspx");
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            loginTasks = new LoginTasks();
            //Response.Write(loginTasks.printConStr());
            Boolean flag = true;
            if (ddlLogInAs.Text == "Student") flag = !flag;
            if (loginTasks.checkLogin(username.Text, pwd.Text, flag))
            {
                switch (flag)
                {
                    case true:
                        Session["UserType"] = "Staff";
                        Session["UserName"] = loginTasks.returnName();
                        Session["UserID"] = username.Text;
                        Response.Redirect("StaffPortal/Staff-home.aspx");
                        break;
                    case false:
                        Session["UserType"] = "Student";
                        Session["UserName"] = loginTasks.returnName();
                        Session["UserID"] = username.Text;
                        Response.Redirect("StudentPortal/Student-home.aspx");
                        break;
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid UserName or Password')</script>");
            }
        }
    }
}