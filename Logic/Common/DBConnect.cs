using System;
using System.Collections.Generic;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;


namespace CMS.Logic.Common
{
    public class DBConnect
    {
        private String host;
        private int port;
        private String connectionString;
        private MySqlConnection con;
        public MySqlCommand cmd;
        public MySqlDataAdapter dataAdapter;
        public DataTable dataTable;
        private DataRow dataRow;
        String qry;

        public DBConnect(String conStr)
        {
            this.setConnectionString(conStr);
            this.con = new MySqlConnection(connectionString);
        }

        public void setConnectionString(String con_string)
        {
            this.connectionString = con_string;
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