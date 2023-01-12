using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace CoachTravelling
{
    public class DatabaseConnection
    {
        public static OleDbConnection GetConnection() // method is created for user to connect to database.
        {
            string connection;

            connection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Sloskyinator\Desktop\CoachTravelling\database\Database1.mdb";

            return new OleDbConnection(connection);
        }
    } 
   }
