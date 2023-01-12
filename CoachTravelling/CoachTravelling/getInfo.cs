using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace CoachTravelling
{
    public class getInfo : DatabaseConnection
    {

        public static String getFullName(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String first;
                String last;
                first = ds.Tables[0].Rows[0]["name"].ToString(); // this will set label first to First_Name this is taken from database
                last = ds.Tables[0].Rows[0]["lastname"].ToString(); // this will set label first to First_Name this is taken from database

                String fullName = "" + first + " " + last;
                connection.Close();// close connection
                return fullName;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static String getPostcode(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String postcode = ds.Tables[0].Rows[0]["postcode"].ToString(); // this will set label first to First_Name this is taken from database

                connection.Close();// close connection
                return postcode;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static String getAddress(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String address = ds.Tables[0].Rows[0]["address1"].ToString(); // this will set label first to First_Name this is taken from database

                connection.Close();// close connection
                return address;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static String getGender(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String gender = ds.Tables[0].Rows[0]["gender"].ToString(); // this will set label first to First_Name this is taken from database

                connection.Close();// close connection
                return gender;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static String getDOB(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent

                String day, month, year;
                day = ds.Tables[0].Rows[0]["day"].ToString(); // this will set label first to First_Name this is taken from database
                month = ds.Tables[0].Rows[0]["month"].ToString(); // this will set label first to First_Name this is taken from database
                year = ds.Tables[0].Rows[0]["year"].ToString(); // this will set label first to First_Name this is taken from database

                String dob = "" + day + "/" + month + "/" + year;

                connection.Close();// close connection
                return dob;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static int getNumber(String username)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from login where username='" + username + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from login where username = '" + username + "'", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "login"); // use table Parent
                String number;
                number = ds.Tables[0].Rows[0]["number"].ToString(); // this will set label first to First_Name this is taken from database


                int phonenumber = Convert.ToInt32(number);

                connection.Close();// close connection
                return phonenumber;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public static int getTripPrice(String to)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from trips where to='" + to + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from trips where to='" + to + "' ", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "trips"); // use table Parent
                String price;
                price = ds.Tables[0].Rows[0]["price"].ToString(); // this will set label first to First_Name this is taken from database


                int vipprice = Convert.ToInt32(price);

                connection.Close();// close connection
                return vipprice;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public static int getTripTime(String to)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from trips where to='" + to + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from trips where to='" + to + "' ", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "trips"); // use table Parent
                String price;
                price = ds.Tables[0].Rows[0]["triptime"].ToString(); // this will set label first to First_Name this is taken from database


                int vipprice = Convert.ToInt32(price);

                connection.Close();// close connection
                return vipprice;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public static String getTripDurnation(String to)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from trips where to='" + to + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from trips where to='" + to + "' ", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "trips"); // use table Parent
                String price;
                price = ds.Tables[0].Rows[0]["duration"].ToString(); // this will set label first to First_Name this is taken from database


                connection.Close();// close connection
                return price;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        public static int getTripVIPPrice(String to)
        {

            OleDbConnection connection = GetConnection();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = connection;

            // this will be used to get information about the user using session and databaes
            cmd.CommandText = "select * from trips where to='" + to + "'";

            try// try and catch statement is used to capture any errors during this progress.
            {
                connection.Open(); // connection is open
                cmd.ExecuteNonQuery(); // command is executed
                OleDbDataAdapter ordAdapter = new OleDbDataAdapter("select * from trips where to='" + to + "' ", connection); // this will get all the inforamation
                DataSet ds = new DataSet(); // database information
                ordAdapter.Fill(ds, "trips"); // use table Parent
                String price;
                price = ds.Tables[0].Rows[0]["pricevip"].ToString(); // this will set label first to First_Name this is taken from database


                int vipprice = Convert.ToInt32(price);

                connection.Close();// close connection
                return vipprice;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

    }
}

        