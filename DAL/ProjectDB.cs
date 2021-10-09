using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.BLL;
using ReviewMidtermASpDotNet.DAL;
using System.Data.SqlClient;

namespace ReviewMidtermASpDotNet.DAL
{
    public class ProjectDB
    {


        public static List<Project> listAllProjects()
        {


            List<Project> projList = new List<Project>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("select * from Projects", con);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                Project proj;

                while (sqlreadRecord.Read())
                {
                    proj = new Project();
                    proj.ProjectCode = sqlreadRecord["ProjectCode"].ToString();
                    proj.ProjectTitle = sqlreadRecord["ProjectTitle"].ToString();
                    proj.ProjectDate = sqlreadRecord["DueDate"].ToString();
                    projList.Add(proj);


                }


            }
            catch (SqlException ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }


            return projList;

        }

    }







}
