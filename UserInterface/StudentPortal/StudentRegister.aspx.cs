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
    public partial class StudentRegister : System.Web.UI.Page
    {
        DBConnect dbc = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            byte isTFWS = 0, isDefence = 0, isPH = 0;
            if (Check_tfw.Checked) isTFWS = 1;
            if (Check_def.Checked) isDefence = 1;
            if (Check_pd.Checked) isPH = 1;
            dbc.executeIUDQuery("call setStudentDetails('" + Text_fullName.Text + "', '" + Text_Enroll.Text + "', '" + DDL_dept.SelectedItem.Text + "', '" + Text_email.Text + "', '" + Text_pwd.Text + "', '" + Text_Address.Text + "', '" + Text_contact.Text + "', '" + Text_emer.Text + "', '" + Text_bday.Text + "', '" + Text_year.Text + "', '" + DDL_semester.Text + "', '" + DDL_div.SelectedItem.Text + "', '" + Text_batch.Text + "', '" + DDL_gender.Text + "', '" + DDL_category.SelectedItem.Text + "', '" + DDL_type.SelectedItem.Text + "', '" + Text_merit.Text + "', '" + DDL_board.SelectedItem.Text + "', '" + Text_passport.Text + "', '" + Text_unique.Text + "', '" + DDL_blood.SelectedItem.Text + "', '" + isTFWS + "', '" + isDefence + "', '" + isPH + "');");
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Succesfull!!')</script>");
        }

        protected void Cancel_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/UserInterface/Login.aspx");
        }

        [System.Web.Services.WebMethod]
        public static ArrayList verifyEnrol(String verifyfield)
        {
            ArrayList list = new ArrayList();
            String qry = "select id,`name` from `cms`.student_master where enroll_no = @condition";
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
        [System.Web.Services.WebMethod]
        public static ArrayList verifyEmail(String verifyfield)
        {
            ArrayList list = new ArrayList();
            String qry = "select id,`name` from `cms`.student_master where email_id = @condition";
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