using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace CoachTravelling
{
    public class verifyInfo : DatabaseConnection
    {
        public static int CheckisAdmin(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            // this will connect to the database

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String admin;
                admin = ds.Tables[0].Rows[0]["isAdmin"].ToString(); // this will set label first to First_Name this is taken from database

                int isAdmin = Convert.ToInt32(admin);

                connection.Close();// close connection
                return isAdmin;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }


        public static bool LoginCheck(string username, string password)
        {

            OleDbConnection myconection = GetConnection(); // calls method for connection
            // this query is used to get username and passward and make sure they are correct. 
            string query = "SELECT * FROM login WHERE [username] = '" + username + "' AND [password] = '" + password + "'";

            OleDbCommand command = new OleDbCommand(query, myconection);// database information is collected.

            command.Connection = myconection;

            try
            { // try and catch statement is used to find any errors.
                myconection.Open();
                OleDbDataReader reader = command.ExecuteReader(); // reads the inputs are are here
                if (reader.HasRows)
                {// if its true return true
                    return true;
                }
                else
                {// if they dont match to the databse then return false.
                    return false;
                }
            }
            catch (Exception)
            {
            }
            finally
            {
                myconection.Close(); // if any errors close connection
            }
            return false; // return false if it reached this point.
        }

    }
}

