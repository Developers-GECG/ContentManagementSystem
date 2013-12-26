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

namespace CMS.UserInterface.StudentPortal
{
    public partial class EditStudentProfile : System.Web.UI.Page
    {
        DBConnect dbc = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            DDL_div.Items.Clear();
            DDL_div.Items.Insert(0, new ListItem("Select Division", "0"));
        }
        protected void PopulateDivision(object sender, EventArgs e)
        {
            String qry = "select id,hasDivisions from cms.dept_master where dept_name='"+ DDL_dept.SelectedItem.Text +"'";
            MySqlDataReader sdr = dbc.executeSelectQueryWithDR(qry);
            while (sdr.Read())
            {
                if (sdr["hasDivisions"].ToString() == "1")
                {
                    DDL_div.Items.Insert(1, new ListItem("A", "1"));
                    DDL_div.Items.Insert(2, new ListItem("B", "2"));
                }
                else
                {
                    DDL_div.Items.Insert(1, new ListItem("A", "1"));
                }
            }
        }
    }
}