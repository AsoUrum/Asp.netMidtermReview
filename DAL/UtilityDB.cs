using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace ReviewMidtermASpDotNet.DAL
{
    public class UtilityDB
    {

        public static SqlConnection ConnectDB()
        {
            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectProjectAssignmentData"].ConnectionString;
            cnn.Open();
            return cnn;


        }
    }
}