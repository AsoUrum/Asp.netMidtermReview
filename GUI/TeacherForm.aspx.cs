using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReviewMidtermASpDotNet.BLL;
using ReviewMidtermASpDotNet.DAL;
using System.Windows.Forms;

namespace ReviewMidtermASpDotNet.GUI
{
    public partial class TeacherForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtAssignedDate.TextMode = TextBoxMode.Date;
            txtSubmittedDate.TextMode = TextBoxMode.Date;

            int id = Convert.ToInt32(Session["id"]);

            Teacher teacher = new Teacher();
            teacher = teacher.SearchTeacherByID(id);
            lblUser.Text = "Welcome " + teacher.FirstName + " " + teacher.LastName;



            if (!(Page.IsPostBack))
            {

                Student astud = new Student();
                List<Student> studList = astud.listAllStudents();
                foreach (Student s in studList)
                {

                    dpdSelectStuds.Items.Add(s.StudentNumber + ", " + s.FirstName + ", " + s.LastName);
                }


                Project aproj = new Project();
                List<Project> projList = aproj.listAllProjects();
                foreach (Project p in projList)
                {

                    dpdSelectProj.Items.Add(p.ProjectCode + ", " + p.ProjectTitle + ", " + p.ProjectDate);
                }


            }

        }

        public string firstField(string value)
        {

            String[] field = value.Split(',');
            return field[0];


        }

        protected void btnListStudents_Click(object sender, EventArgs e)
        {
            ProjectAssignemt projAgd = new ProjectAssignemt();

            string code = firstField(dpdSelectProj.SelectedValue);



            List<Student> listProjAs = projAgd.listStudentAssignedProjects(code);
            if (listProjAs.Count != 0)
            {
                GridViewListStudents.DataSource = listProjAs;
                GridViewListStudents.DataBind();
            }
            else
            {
                GridViewListStudents.DataSource = null;
                GridViewListStudents.DataBind();
                //MessageBox.Show("DataBase is empty");
                

            }



        }

        protected void btnAssignProject_Click(object sender, EventArgs e)
        {



            // extra the  student Id
            int id = Convert.ToInt32(firstField(dpdSelectStuds.SelectedValue));
            // extra the project Code
            string code = firstField(dpdSelectProj.SelectedValue);

            // assigning the dates 
            string assignDate = txtAssignedDate.Text;
            if (assignDate.Length == 0)
            {
                MessageBox.Show("Select The assigned date for the project", "Caution", MessageBoxButtons.OK);
                return;

            }
            String subMittedDate = txtSubmittedDate.Text;
            if (subMittedDate.Length == 0)
            {
                MessageBox.Show("Select The submitte  data for the project", "Caution", MessageBoxButtons.OK);
                return;

            }
            // assigning the project 
            ProjectAssignemt proAs = new ProjectAssignemt();
            proAs.StudentNumber = id;
            proAs.ProjectCode = code;

            // checing if project is  alread assigned.
            List<ProjectAssignemt> ListPA = proAs.listAllProjectAssigned();
            foreach (ProjectAssignemt p in ListPA)
            {
                if ((id == p.StudentNumber) && (code == p.ProjectCode))
                {
                    {
                        MessageBox.Show(" This Project has been assigned to this  student", "Warning", MessageBoxButtons.OK); ;
                        return;
                    }
                }
            }
            proAs.AssignedDate = assignDate;
            proAs.SubmittedDate = subMittedDate;
            proAs.AsssignProject(proAs);

            MessageBox.Show("Project ASsigned");

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");
        }
    }
    
}