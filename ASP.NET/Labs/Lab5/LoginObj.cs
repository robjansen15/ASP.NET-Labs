using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab5
{
    public class LoginObj
    {
        public LoginObj(string user, string pass)
        {
            if(user != null)
            {
                _Username = user;
            }
            else
            {
                _Username = "";
            }
            

            if(pass != null)
            {
                _Password = pass;
            }
            else
            {
                _Password = "";
            }
            

            _Authenticated = false;
            _Name = "";
        }

        public string _Username { get; private set; }
        public string _Password { get; private set; }

        public bool _Authenticated { get; set; }
        public string _Name { get; set; }
    }
}