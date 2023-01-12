using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace CoachTravelling
{
    public class setInfo : DatabaseConnection
    {
        public static bool StartRegister(string username, string password, string name, string name2, string d, string m, string y, string address, string postcode, string number, string gender)
        {
            try // try and catch for registration 
            {
                // collects all information about database
                OleDbConnection connection = GetConnection();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = connection;
                // mysql to create a new value into parent 
                cmd.CommandText = "insert into login ([username],[password],[name], [lastname], [day], [month],[year],[address1],[postcode],[number],[gender]) values (?,?,?,?,?,?,?,?,?,?,?)";
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@lastname", name2);
                cmd.Parameters.AddWithValue("@day", d);
                cmd.Parameters.AddWithValue("@month", m);
                cmd.Parameters.AddWithValue("@year", y);
                cmd.Parameters.AddWithValue("@address1", address);
                cmd.Parameters.AddWithValue("@postcode", postcode);
                cmd.Parameters.AddWithValue("@number", number);
                cmd.Parameters.AddWithValue("@gender", gender);

                connection.Open(); // database is open
                cmd.ExecuteNonQuery(); // runs the program
                connection.Close(); // closes the databse
                return true;
            }
            catch (Exception)
            {
            }
            return false;
        }

        public static bool MakeEnquiry(string name, string CustomerID, string phone, string email, string subject, string message)
        {
            try // try and catch for registration 
            {
                // collects all information about database
                OleDbConnection connection = GetConnection();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = connection;
                // mysql to create a new value into parent 
                cmd.CommandText = "insert into enquires ([name],[phone],[email], [subject], [message], [customerid]) values (?,?,?,?,?,?)";
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@phone", phone);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@subject", subject);
                cmd.Parameters.AddWithValue("@message", message);
                cmd.Parameters.AddWithValue("@id", CustomerID);

                connection.Open(); // database is open
                cmd.ExecuteNonQuery(); // runs the program
                connection.Close(); // closes the databse
                return true;
            }
            catch (Exception)
            {
            }
            return false;
        }

        public static bool MakeReview(string username, string subject, string message,  string rating)
        {
            try // try and catch for registration 
            {
                // collects all information about database
                OleDbConnection connection = GetConnection();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = connection;
                // mysql to create a new value into parent 
                cmd.CommandText = "insert into reviewpage ([username],[subject],[message],[rating]) values (?,?,?,?)";
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@subject", subject);
                cmd.Parameters.AddWithValue("@message", message);
                cmd.Parameters.AddWithValue("@rating", rating);

                connection.Open(); // database is open
                cmd.ExecuteNonQuery(); // runs the program
                connection.Close(); // closes the databse
                return true;
            }
            catch (Exception)
            {
            }
            return false;
        }

        public static bool BookTrip(string from, string to, string date, string price, string duration, string bookedby, string nopeople, string paidby, string seat)
        {
            try // try and catch for registration 
            {
                // collects all information about database
                OleDbConnection connection = GetConnection();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = connection;
                // mysql to create a new value into parent 
                cmd.CommandText = "insert into bookedtrips ([from],[to],[price], [duration], [bookedby], [nopeople],[paidby] , [tripdate], [seat]) values (?,?,?,?,?,?,?,?,?)";
                cmd.Parameters.AddWithValue("@from", from);
                cmd.Parameters.AddWithValue("@to", to);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@duration", duration);
                cmd.Parameters.AddWithValue("@bookedby", bookedby);
                cmd.Parameters.AddWithValue("@nopeople", nopeople);
                cmd.Parameters.AddWithValue("@paidby", paidby);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@date", seat);

                connection.Open(); // database is open
                cmd.ExecuteNonQuery(); // runs the program
                connection.Close(); // closes the databse
                return true;
            }
            catch (Exception)
            {
            }
            return false;
        }


    }
}

