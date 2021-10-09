using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.BLL;
using System.Data.SqlClient;


namespace ReviewMidtermASpDotNet.DAL
{
    public class StudentDB
    {
        public static List<Student> listAllStudents()
        {


            List<Student> studList = new List<Student>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("select * from Students", con);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                Student stud;

                while (sqlreadRecord.Read())
                {
                    stud = new Student();
                    stud.StudentNumber = Convert.ToInt32(sqlreadRecord["StudentNumber"]);
                    stud.FirstName = sqlreadRecord["FirstName"].ToString();
                    stud.LastName = sqlreadRecord["LastName"].ToString();
                    stud.Password = sqlreadRecord["Password"].ToString();
                    studList.Add(stud);


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


            return studList;

        }

        public static bool ValidateStudent(int id, string password)
        {
            SqlConnection con = UtilityDB.ConnectDB();
            List<Student> students = new List<Student>();

            try
            {
                Student stud;
                SqlCommand cmdSerchUser = new SqlCommand();
                cmdSerchUser.Connection = con;
                cmdSerchUser.CommandText = "select * from Students where StudentNumber = @StudentNumber AND  Password = @Password";
                cmdSerchUser.Parameters.AddWithValue("@StudentNumber", id);
                cmdSerchUser.Parameters.AddWithValue("@Password", password);

                SqlDataReader sqlreadRecord = cmdSerchUser.ExecuteReader();



                while (sqlreadRecord.Read())
                {
                    stud = new Student();

                    stud.StudentNumber = Convert.ToInt32(sqlreadRecord["StudentNumber"]);
                    stud.FirstName = sqlreadRecord["FirstName"].ToString();
                    stud.LastName = sqlreadRecord["LastName"].ToString();
                    stud.Password = sqlreadRecord["Password"].ToString();
                    students.Add(stud);



                }

                if (students.Count != 0)
                {
                    return true;
                }

                return false;


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

        }

        public static Student SeachStudentById(int id )
        {


            Student student = new Student();
            SqlConnection con = UtilityDB.ConnectDB();
            SqlCommand cmdSearch = new SqlCommand();
            cmdSearch.Connection = con;
            cmdSearch.CommandText = " SELECT * FROM Students " +
                "WHERE StudentNumber = @StudentNumber";
            cmdSearch.Parameters.AddWithValue("@StudentNumber", id);
            SqlDataReader reader = cmdSearch.ExecuteReader();

            if (reader.Read())
            {
                student.StudentNumber = Convert.ToInt32(reader["StudentNumber"]);
                student.FirstName = reader["FirstName"].ToString();
                student.LastName = reader["LastName"].ToString();
                student.Password = reader["Password"].ToString();
                return student;

            }
            return null;
        }


    }
}