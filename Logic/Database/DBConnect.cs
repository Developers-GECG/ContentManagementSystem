using System;
using System.Collections.Generic;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI;


namespace CMS.Logic.Database
{
    public class DBConnect:DBConfig
    {
        
        public MySqlConnection con;
        public MySqlCommand cmd;
        public MySqlDataAdapter dataAdapter;
        public DataTable dataTable;
        private DataRow dataRow;
        String qry;
        private String conStr;

        public DBConnect()
        {
            this.conStr = ConnectionString();
            System.Diagnostics.Debug.WriteLine(this.conStr);
            //this.con = new MySqlConnection("server=localhost;User Id=root;Password=root;database=cms");
            this.con = new MySqlConnection(this.conStr);
            //Console.WriteLine(GetConnectionString());
        }

        public void openConnection()
        {
            this.con.Open();
        }
        public void closeConnection()
        {
            this.con.Close();
        }
        public void processQuery()
        {
            this.con.Open();
            this.cmd.ExecuteNonQuery();
            this.con.Close();
        }
        public void executeIUDQuery(String query)
        {
            qry = query;
            this.cmd = new MySqlCommand(qry, this.con);
            this.cmd.CommandType = CommandType.Text;
            this.cmd.CommandText = qry;
            this.cmd.Connection = con;
            this.con.Open();
            this.cmd.ExecuteNonQuery();
            this.con.Close();
        }
        public Boolean executeQuery(String qry)
        {
            try
            {
                this.cmd = new MySqlCommand(qry, this.con);
                this.processQuery();
                return true;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex);
                return false;
            }
        }
        public MySqlDataReader executeSelectQueryWithDR(String query)
        {
            qry = query;
            this.cmd = new MySqlCommand(qry, this.con);
            this.cmd.CommandText = qry;
            this.cmd.CommandType = CommandType.Text;
            this.cmd.Connection = this.con;
            this.con.Open();
            return cmd.ExecuteReader();
        }
        public DataTable executeSelectQueryWithDT(String query)
        {
            qry = query;
            this.cmd = new MySqlCommand(qry, this.con);
            this.cmd.CommandText = qry;
            this.cmd.CommandType = CommandType.Text;
            this.cmd.Connection = this.con;
            this.dataAdapter = new MySqlDataAdapter(this.cmd);
            this.dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            return dataTable;
        }
        public DataTable fetchDataTable(String qry)
        {
            try
            {
                this.cmd = new MySqlCommand(qry, this.con);
                cmd.CommandText = qry;
                cmd.CommandType = CommandType.Text;
                this.con.Open();
                this.cmd.Connection = this.con;
                this.dataAdapter = new MySqlDataAdapter(cmd);
                this.dataTable = new DataTable();
                this.dataAdapter.Fill(dataTable);
                //this.con.Close();
                Console.WriteLine(dataTable.Rows.Count);
                return dataTable;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex);
                return null;
            }
        }
    }
}