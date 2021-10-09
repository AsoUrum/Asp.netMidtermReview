using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using ReviewMidtermASpDotNet.BLL;

namespace ReviewMidtermASpDotNet.DAL
{
    public class TeacherDB
    {
        public static List<Teacher> listAllTeachers()
        {


            List<Teacher> teachList = new List<Teacher>();
            SqlConnection con = UtilityDB.ConnectDB();

            try
            {
                SqlCommand cmdListRecord = new SqlCommand("select * from Teachers", con);
                SqlDataReader sqlreadRecord = cmdListRecord.ExecuteReader();

                Teacher teach;

                while (sqlreadRecord.Read())
                {
                    teach = new Teacher();
                    teach.TeacherNumber = Convert.ToInt32(sqlreadRecord["TeacherNumber"]);
                    teach.FirstName = sqlreadRecord["FirstName"].ToString();
                    teach.LastName = sqlreadRecord["LastName"].ToString();
                    teach.Password = sqlreadRecord["Password"].ToString();
                    teachList.Add(teach);


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


            return teachList;

        }

        public static bool ValidateUser(int id, string password)
        {
            SqlConnection con = UtilityDB.ConnectDB();
            List<Teacher> teachers = new List<Teacher>();

            try
            {
                Teacher teacher;
                SqlCommand cmdSerchUser = new SqlCommand();
                cmdSerchUser.Connection = con;
                cmdSerchUser.CommandText = "select * from Teachers where TeacherNumber = @TeacherNumber AND  Password = @Password";
                cmdSerchUser.Parameters.AddWithValue("@TeacherNumber", id);
                cmdSerchUser.Parameters.AddWithValue("@Password", password);

                SqlDataReader sqlreadRecord = cmdSerchUser.ExecuteReader();



                while (sqlreadRecord.Read())
                {
                    teacher = new Teacher();

                    teacher.TeacherNumber = Convert.ToInt32(sqlreadRecord["TeacherNumber"]);
                    teacher.FirstName = sqlreadRecord["FirstName"].ToString();
                    teacher.LastName = sqlreadRecord["LastName"].ToString();
                    teacher.Password = sqlreadRecord["Password"].ToString();
                    teachers.Add(teacher);



                }

                if (teachers.Count != 0)
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


        public static Teacher SearchTeacherByID(int id)
        {
            Teacher teach = new Teacher();
            SqlConnection con = UtilityDB.ConnectDB();
            SqlCommand cmdSearch = new SqlCommand();
            cmdSearch.Connection = con;
            cmdSearch.CommandText = " SELECT * FROM Teachers " +
                "WHERE TeacherNumber = @TeacherNumber";
            cmdSearch.Parameters.AddWithValue("@TeacherNumber", id);
            SqlDataReader reader = cmdSearch.ExecuteReader();

            if (reader.Read())
            {
                teach.TeacherNumber = Convert.ToInt32(reader["TeacherNumber"]);
                teach.FirstName = reader["FirstName"].ToString();
                teach.LastName = reader["LastName"].ToString();
                teach.Password = reader["Password"].ToString();
                return teach;

            }
            return null;

        }


    }



   

}
