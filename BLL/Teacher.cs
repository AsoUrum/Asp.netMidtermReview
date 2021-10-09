using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.DAL;

namespace ReviewMidtermASpDotNet.BLL
{
    public class Teacher
    {
        public int TeacherNumber { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Password { get; set; }


        public  List<Teacher> listAllTeachers()
        {

            return TeacherDB.listAllTeachers();


        }

        public bool ValidateUser(int id, string password)
        {
            return TeacherDB.ValidateUser(id, password);
        }

        public Teacher SearchTeacherByID(int id)
        {
            return TeacherDB.SearchTeacherByID(id);
        }


    }
}