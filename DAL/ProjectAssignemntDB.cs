using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.BLL;
using ReviewMidtermASpDotNet.DAL;
using System.Data.SqlClient;

namespace ReviewMidtermASpDotNet.DAL
{
    public class ProjectAssignemntDB
    {


        public static List<ProjectAssignemt> listAllProjectAssigned()
        {


            List<ProjectAssignemt> projAssignedList = new List<ProjectAssignemt>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("select * from ProjectAssignments", con);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                ProjectAssignemt projAssigned;

                while (sqlreadRecord.Read())
                {
                    projAssigned = new ProjectAssignemt();

                    projAssigned.StudentNumber = Convert.ToInt32(sqlreadRecord["StudentNumber"]);
                    projAssigned.ProjectCode = sqlreadRecord["ProjectCode"].ToString();
                    projAssigned.AssignedDate = sqlreadRecord["AssignedDate"].ToString();
                    projAssigned.SubmittedDate = sqlreadRecord["SubmittedDate"].ToString();
                    
                    projAssignedList.Add(projAssigned);


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


            return projAssignedList;

        }

        public static void AsssignProject(ProjectAssignemt proAs)
        {
            SqlConnection cnnDB = UtilityDB.ConnectDB();
            SqlCommand cmdInsert = new SqlCommand();
           

            cmdInsert.CommandText = "INSERT INTO ProjectAssignments (StudentNumber,ProjectCode,AssignedDate,SubmittedDate)" +
                                        "VALUES(@StudentNumber,@ProjectCode,@AssignedDate,@SubmittedDate)";
            cmdInsert.Parameters.AddWithValue("@StudentNumber", proAs.StudentNumber);
            cmdInsert.Parameters.AddWithValue("@ProjectCode", proAs.ProjectCode);
            cmdInsert.Parameters.AddWithValue("@AssignedDate", proAs.AssignedDate);
            cmdInsert.Parameters.AddWithValue("@SubmittedDate", proAs.SubmittedDate);

            cmdInsert.Connection = cnnDB;
            cmdInsert.ExecuteNonQuery();
            cnnDB.Close();
            cnnDB.Dispose();



        }

        public static List<Project> listStudentProject(int id)
        {


            List<Project> listStudProj = new List<Project>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("SELECT P.ProjectCode, P.ProjectTitle, P.DueDate " + 
                                                            "FROM Projects P, ProjectAssignments PA " + 
                                                            "WHERE P.ProjectCode = PA.ProjectCode " + 
                                                            "AND StudentNumber = @StudentNumber", con);
                cmdListRecord.Parameters.AddWithValue("@StudentNumber", id);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                Project proj;

                while (sqlreadRecord.Read())
                {
                    proj = new Project();

                    proj.ProjectCode = sqlreadRecord["ProjectCode"].ToString();
                    proj.ProjectTitle = sqlreadRecord["ProjectTitle"].ToString();
                    proj.ProjectDate = sqlreadRecord["DueDate"].ToString();

                    listStudProj.Add(proj);


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


            return listStudProj;

        }


        public static List<Student> listStudentAssignedProjects(string prjCode)
        {


            List<Student> listStuds = new List<Student>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("SELECT S.StudentNumber, S.FirstName, S.LastName " + 
                                                          "FROM Students S, ProjectAssignments PA " + 
                                                          "WHERE S.StudentNumber = PA.StudentNumber " + 
                                                          "AND ProjectCode = @ProjectCode", con);
                cmdListRecord.Parameters.AddWithValue("ProjectCode",prjCode);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                Student stud;

                while (sqlreadRecord.Read())
                {
                    stud = new Student();

                    stud.StudentNumber = Convert.ToInt32(sqlreadRecord["StudentNumber"]);
                    stud.FirstName = sqlreadRecord["FirstName"].ToString();
                    stud.LastName = sqlreadRecord["LastName"].ToString();

                    listStuds.Add(stud);


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


            return listStuds;

        }




    }
}