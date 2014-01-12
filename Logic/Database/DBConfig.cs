using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace CMS.Logic.Database
{
    public class DBConfig
    {
        private String _host;
        private int _port;
        public String _conStr;
        private String _dbname;
        private String _username;
        private String _password;
        private XDocument doc;

        public DBConfig()
        {
            doc = XDocument.Load(HttpRuntime.AppDomainAppPath + "\\Config\\DBconfig.xml");
            var DBName = doc.Descendants("DatabaseName");
            foreach (var name in DBName)
            {
                _dbname = name.Value;
            }
            var HostIp = doc.Descendants("IP");
            foreach (var ip in HostIp)
            {
                _host = ip.Value;
            }
            var HostPort = doc.Descendants("Port");
            foreach (var port in HostPort)
            {
                _port = Int32.Parse(port.Value);
            }
        }

        public bool setConString(String un, String pw)
        {
            try
            {
                this._conStr = "server=" + Host + ";port=" + Port + ";database=" + DatabaseName + ";User Id=" + un + ";password=" + pw + ";";
                return true;
            }catch{
                return false;
            }
            
        }

        private String GetConnectionString()
        {
            return _conStr;
        }

        public String DatabaseName
        {
            get { return _dbname; }
            //set 
            //{
            //    var DBName = doc.Descendants("DatabaseName");
            //    foreach (var name in DBName)
            //    {
            //        _dbname = name.Value;
            //    }
            //}
        }

        public String Host
        {
            get { return _host; }
            //set
            //{
            //    var HostIp = doc.Descendants("IP");
            //    foreach (var ip in HostIp)
            //    {
            //        _host = ip.Value;
            //    }
            //}
        }

        public int Port
        {
            get { return _port; }
            //set
            //{
            //    var HostPort = doc.Descendants("Port");
            //    foreach (var port in HostPort)
            //    {
            //        _port = Int32.Parse(port.Value);
            //    }
            //}
        }

        //public String ConnectionString
        //{
        //    get { return _conStr; }
        //    set
        //    {
        //        var uname = doc.Descendants("Username");
        //        foreach (var user in uname)
        //        {
        //            _username = user.Value;
        //        }
        //        var pwd = doc.Descendants("Password");
        //        foreach (var p in pwd)
        //        {
        //            _password = p.Value;
        //        }
        //        this.setConString(_username, _password);
        //    }
        //}

        public String ConnectionString()
        {
            var uname = doc.Descendants("Username");
            foreach (var user in uname)
            {
                _username = user.Value;
            }
            var pwd = doc.Descendants("Password");
            foreach (var p in pwd)
            {
                _password = p.Value;
            }
            if(setConString(_username, _password))
            {
                return this._conStr;
            }
            else
            {
                return null;
            }
        }
    }
}