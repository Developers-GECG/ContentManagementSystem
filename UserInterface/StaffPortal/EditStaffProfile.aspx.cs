using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic;
using CMS.Logic.Database;


namespace CMS.UserInterface.StaffPortal
{
    public partial class EditStaffPortal : System.Web.UI.Page
    {
        public DataTable dt;
        public Functions func = new Functions();
        public DBConnect dbc = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            String qry = "select * from cms.staff_master where email_id = '" + Session["UserID"].ToString() + "'";
            this.dt = dbc.executeSelectQueryWithDT(qry);
            this.setProfileValues();
        }
        public void setProfileValues()
        {
            Text_fullName.Text = dt.Rows[0]["name"].ToString();
            Text_bday.Text = dt.Rows[0]["dob"].ToString();
            Text_Address.Text = dt.Rows[0]["address"].ToString();
            Text_contact.Text = dt.Rows[0]["contact_no"].ToString();
            Text_emer.Text = dt.Rows[0]["emergency_contact_no"].ToString();
            DDL_gender.Text = dt.Rows[0]["gender"].ToString();
            DDL_category.SelectedValue = dt.Rows[0]["category"].ToString();
            DDL_blood.SelectedValue = dt.Rows[0]["blood_group"].ToString();
            Text_email.Text = dt.Rows[0]["email_id"].ToString();
            Text_pwd.Text = dt.Rows[0]["pwd"].ToString();
            Text_cpwd.Text = dt.Rows[0]["pwd"].ToString();
            Text_join_year.Text = dt.Rows[0]["joining_year"].ToString();
            DDL_role.SelectedValue = dt.Rows[0]["role"].ToString();
            DDL_designation.SelectedValue = dt.Rows[0]["designation"].ToString();
            DDL_dept.Text = dt.Rows[0]["dept_id"].ToString();
        }
    }
}