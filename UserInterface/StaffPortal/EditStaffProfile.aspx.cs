using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic;
using CMS.Logic.Database;
using MySql.Data.MySqlClient;


namespace CMS
{
    public partial class EditStaffPortal : System.Web.UI.Page
    {
        public DataTable dt;
        public Functions func = new Functions();
        public DBConnect dbc = new DBConnect();
        public String Logtype;
        public MySqlConnection con;
        public MySqlCommand cmd;
        public MySqlDataAdapter adp;
        protected void Page_Load(object sender, EventArgs e)
        {
            Logtype = Session["UserType"].ToString();
            //String qry = "select * from cms.staff_master where email_id = '" + Session["UserID"].ToString() + "'";
            //this.dt = dbc.executeSelectQueryWithDT(qry);
            //this.setProfileValues();
        }
        //public void setProfileValues()
        //{
        //    Text_fullName.Text = dt.Rows[0]["name"].ToString();
        //    Text_bday.Text = dt.Rows[0]["dob"].ToString();
        //    Text_Address.Text = dt.Rows[0]["address"].ToString();
        //    Text_contact.Text = dt.Rows[0]["contact_no"].ToString();
        //    Text_emer.Text = dt.Rows[0]["emergency_contact_no"].ToString();
        //    DDL_gender.Text = dt.Rows[0]["gender"].ToString();
        //    DDL_category.SelectedValue = dt.Rows[0]["category"].ToString();
        //    DDL_blood.SelectedValue = dt.Rows[0]["blood_group"].ToString();
        //    Text_email.Text = dt.Rows[0]["email_id"].ToString();
        //    Text_pwd.Text = dt.Rows[0]["pwd"].ToString();
        //    Text_cpwd.Text = dt.Rows[0]["pwd"].ToString();
        //    Text_join_year.Text = dt.Rows[0]["joining_year"].ToString();
        //    DDL_role.SelectedValue = dt.Rows[0]["role"].ToString();
        //    DDL_designation.SelectedValue = dt.Rows[0]["designation"].ToString();
        //    DDL_dept.Text = dt.Rows[0]["dept_id"].ToString();
        //}

        protected void add_pd(object sender, EventArgs e)
        {
            if (Logtype == "Staff")
            {
                String qry = "update cms.staff_master set name='" + Text_fullName.Text + "' , dob='" + Text_bday.Text + "' , address='" + Text_Address.Text + "' , contact_no='" + Text_contact.Text + "' , emergency_contact_no='" + Text_emer.Text + "' , gender='" + DDL_gender.SelectedItem.Text + "' , category='" + DDL_category.SelectedItem.Text + "' , blood_group='" + DDL_blood.SelectedItem.Text + "' where email_id='" + Session["UserId"].ToString() + "' ";
                dbc.executeIUDQuery(qry);
            }
        }

        protected void add_ad(object sender, EventArgs e)
        {
            if (Logtype == "Staff")
            {
                byte isTS = 0;
                if (Check_ITS.Checked) isTS = 1;
                String qry = "update cms.staff_master set joining_year='" + Text_join_year.Text + "' , role='" + DDL_role.SelectedItem.Text + "' , designation='" + DDL_designation .SelectedItem.Text+ "' , isTeachingStaff='"+ isTS +"'  where email_id='" + Session["UserId"].ToString() + "'";
                dbc.executeIUDQuery(qry);
            }
        }

        protected void add_cv(object sender, EventArgs e)
        {
            if (Logtype == "Staff")
            {
                String qry = "update cms.staff_master set pwd='" + Text_pwd.Text + "',email_id='"+ Text_email.Text +"' where email_id='" + Session["UserId"].ToString() + "'";
                dbc.executeIUDQuery(qry);
            }
        }

        //protected void add_cv(object sender, EventArgs e)
        //{
        //   String constring= "server=localhost;User Id=root;Password=root;database=cms";
        //   String qry = "update staff_master set pwd='" + Text_pwd.Text + "' where email_id='" + Session["UserId"].ToString() + "'";
        //   con = new MySqlConnection(constring);
        //   con.Open();
        //   cmd = new MySqlCommand(qry,con);
        //   adp = new MySqlDataAdapter(cmd);
            
 
        //}
    }
}