using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using CMS.Logic;
using CMS.Logic.Database;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;

namespace CMS.Logic
{
    public class Functions
    {
        DBConnect dbc;
        public DataTable dt;
        public Functions()
        {
            dbc = new DBConnect();
        }
        public void fillDropdownlist(DropDownList ddl, String qry, String id, String title)
        {
            this.dt = dbc.executeSelectQueryWithDT(qry);
            ddl.DataSource = dt;
            ddl.DataValueField = id;
            ddl.DataTextField = title;
            ddl.DataBind();
        }
        public void fillDropdownlistWithDT(DropDownList ddl, DataTable dt, String id, String title)
        {
            ddl.DataSource = dt;
            ddl.DataValueField = id;
            ddl.DataTextField = title;
            ddl.DataBind();
        }
        public String getStaffId(String username)
        {
            string qry = "select id from `cms`.`staff_master` where email_id = '" + username + "'";
            dt = dbc.executeSelectQueryWithDT(qry);
            return dt.Rows[0]["id"].ToString();
        }
        public String getClassId(String class_name)
        {
            string qry = "SELECT id FROM `cms`.`virtualclass_master` where title = '" + class_name + "'";
            dt = dbc.executeSelectQueryWithDT(qry);
            return dt.Rows[0]["id"].ToString();

        }
    }
}