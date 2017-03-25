using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Lab5
{
    public class DatabaseConnection
    {

        public DatabaseConnection()
        {
            _Connection = new SqlConnection("Server=in-csci-aspnet;Database=rjjansen;User Id=rjjansen;Password=r7237jan;");
        }


        public LoginObj ValidateLogin(LoginObj login)
        {
            try
            {
                Connect();
                SqlCommand command = new SqlCommand("CheckLogin", _Connection);
                command.CommandType = CommandType.StoredProcedure;

                //Add as many parameters as you want
                command.Parameters.Add(new SqlParameter("@USER", login._Username));
                command.Parameters.Add(new SqlParameter("@PASS", login._Password));


                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    int count = 0;

                    while (rdr.Read())
                    {
                        if(login._Username.Contains(rdr.GetString(3)) && login._Password.Contains(rdr.GetString(4)))
                        {
                            login._Name = rdr.GetString(1) + " " + rdr.GetString(2);
                            login._Authenticated = true;      
                        }
                        count++;
                    }

                    //oh shit they are doing something they should not be doing
                    if(count != 1)
                    {
                        login._Authenticated = false;
                    }
                }
            }
            catch
            {

            }
            finally
            {                
                Disconnect();
            }

            return login;
        }


        public string CreateUser(string firstname, string lastname, string email, string password)
        {
            string random = RandomString(3);

            try
            {
                Connect();
                SqlCommand command = new SqlCommand("CreateUser", _Connection);
                command.CommandType = CommandType.StoredProcedure;

                //Add as many parameters as you want
                command.Parameters.Add(new SqlParameter("@FNAME", firstname));
                command.Parameters.Add(new SqlParameter("@LNAME", lastname));
                command.Parameters.Add(new SqlParameter("@EMAIL", email));
                command.Parameters.Add(new SqlParameter("@PASSWORD", password));
                command.Parameters.Add(new SqlParameter("@RAND", random));

                command.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                Disconnect();
            }

            return random; 
        }


        public void UpdatePassword(string username, string password)
        {
            try
            {
                Connect();
                SqlCommand command = new SqlCommand("ChangePassword", _Connection);
                command.CommandType = CommandType.StoredProcedure;

                //Add as many parameters as you want
                command.Parameters.Add(new SqlParameter("@USER", username));
                command.Parameters.Add(new SqlParameter("@NEWPASS", password));

                command.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                Disconnect();
            }

        }


        public void UpdateCode(string username)
        {
            try
            {
                Connect();
                SqlCommand command = new SqlCommand("UpdateVerification", _Connection);
                command.CommandType = CommandType.StoredProcedure;

                //Add as many parameters as you want
                command.Parameters.Add(new SqlParameter("@EMAIL", username));

                command.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                Disconnect();
            }

        }

        
        public string RandomString(int length)
        {
            Random random = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

            return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
        }


        private void Connect()
        {
            try
            {
                _Connection.Open();
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        private void Disconnect()
        {
            try
            {
                _Connection.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public SqlConnection _Connection { get; set; }
    }
}