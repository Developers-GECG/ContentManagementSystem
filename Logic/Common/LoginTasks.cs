using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using CMS.Logic.Common;

namespace CMS.Logic.Common
{
    public class LoginTasks
    {
        private String email;
        private String password;
        private String loginType;
        private String _displayName;
        DBConnect dbc;
        String qry;
        String name;
        public int checkLogin(String username, String pwd, Boolean flag)
        {
            dbc.openConnection();
            qry = "select * from `cms`.`student_master` where `email_id` = '" + username + "' and `pwd`= '" + pwd + "'";
            if (flag)
            {
                qry = "select * from `cms`.`staff_master` where `email_id` = '" + username + "' and `pwd`= '" + pwd + "'";
            }
            DataTable dt = new DataTable();
            dt = dbc.fetchDataTable(qry);
            if (dt.Rows.Count > 0)
            {
                if (flag)
                {
                    name = dt.Rows[0]["name"].ToString();
                    dbc.closeConnection();
                    return 0;
                }
                else
                {
                    name = dt.Rows[0]["name"].ToString();
                    dbc.closeConnection();
                    return 1;
                }
            }
            else
            {
                dbc.closeConnection();
                return 2;
            }
        }
        public String returnName()
        {
            return name;
        }
        public LoginTasks(String connString)
        {
            dbc = new DBConnect(connString);
        }

        public bool Login(String email, String pwd, String loginType)
        {
            //this.password = this.GetMD5Hash(pwd);
            switch (loginType)
            {
                case "Staff":
                    this.qry = "select `name` from staff_master where email_id = '" + email + "' and pwd = '" + this.password + "'";
                    break;
                case "Student":
                    this.qry = "select `name` from student_master where email_id = '" + email + "' and pwd = '" + this.password + "'";
                    break;
            }
            DataTable dt = new DataTable();
            dt = this.dbc.fetchDataTable(this.qry);
            if (dt.Rows.Count > 0)
            {
                this.DisplayName = dt.Rows[0][0].ToString();
                return true;
            }
            else
            {
                return false;
            }
        }

        public String GetMD5Hash(String pwd)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(pwd);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            return s.ToString();
        }

        public String DisplayName
        {
            get { return this._displayName; }
            set { this._displayName = value; }
        }
    }
}