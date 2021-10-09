using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.DAL;

namespace ReviewMidtermASpDotNet.BLL
{
    public class ProjectAssignemt
    {
        public int StudentNumber { get; set; }
        public string ProjectCode { get; set; }
        public string AssignedDate { get; set; }
        public string SubmittedDate { get; set; }

        public  List<ProjectAssignemt> listAllProjectAssigned()
        {


            return ProjectAssignemntDB.listAllProjectAssigned();
        }

        public void  AsssignProject(ProjectAssignemt proAs)
        {

            ProjectAssignemntDB.AsssignProject(proAs);
        }

        public List<Project> listStudentProject(int id)
        {
            return ProjectAssignemntDB.listStudentProject(id);
        }

        public List<Student> listStudentAssignedProjects(string prjCode)
        {
            return ProjectAssignemntDB.listStudentAssignedProjects(prjCode);
        }

    }
}