using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ReviewMidtermASpDotNet.DAL;

namespace ReviewMidtermASpDotNet.BLL
{
    public class Project
    {
        public string ProjectCode { get; set; }
        public string ProjectTitle { get; set; }
        public string ProjectDate { get; set; }


        public List<Project> listAllProjects()
        {

            return ProjectDB.listAllProjects();


        }








    }

    



}