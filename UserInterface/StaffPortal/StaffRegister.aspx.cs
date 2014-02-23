using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Database;
using MySql.Data.MySqlClient;

namespace CMS
{
    public partial class StaffRegister : System.Web.UI.Page
    {
        DBConnect dbc = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            byte isTS = 0;
            if (Check_ITS.Checked) isTS = 1;
            dbc.executeIUDQuery("call setStaffDetails('" + Text_fullName.Text + "', '" + Text_bday.Text + "', '" + Text_Address.Text + "', '" + Text_contact.Text + "', '" + Text_emer.Text + "', '" + Text_email.Text + "', '" + Text_pwd.Text + "', '" + Text_join_year.Text + "', '" + DDL_role.SelectedItem.Text + "', '" + DDL_designation.SelectedItem.Text + "', '" + DDL_dept.SelectedItem.Text + "', '" + DDL_gender.Text + "', '" + DDL_category.SelectedItem.Text + "', '" + DDL_blood.SelectedItem.Text + "', '" + isTS + "');");
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Succesfull!!')</script>");
        }

        protected void Cancel_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/UserInterface/Login.aspx");
        }

        [System.Web.Services.WebMethod]
        public static ArrayList verifyField(String verifyfield)
        {
            ArrayList list = new ArrayList();
            String qry = "select id,`name` from `cms`.staff_master where email_id = @condition";
            MySqlConnection con = new MySqlConnection(new DBConnect()._conStr);
            MySqlCommand cmd = new MySqlCommand(qry, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@condition", verifyfield);
            cmd.CommandText = qry;
            cmd.Connection = con;
            con.Open();
            MySqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                list.Add(new ListItem(sdr["id"].ToString(), sdr["name"].ToString()));
            }
            con.Close();
            return list;
        }
    }
}