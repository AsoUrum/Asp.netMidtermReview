using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.DAL;

namespace ReviewMidtermASpDotNet.BLL
{
    public class Student
    {

        public int StudentNumber { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Password { get; set; }



        public  List<Student> listAllStudents()
        {
            return StudentDB.listAllStudents(); 

        }

        public bool ValidateStudent(int id, string password)
        {
            return StudentDB.ValidateStudent(id, password);
        }


        public Student SeachStudentById(int id)
        {
            return StudentDB.SeachStudentById(id);
        }
    }
}