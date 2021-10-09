using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReviewMidtermASpDotNet.BLL;
using System.Windows.Forms;

namespace ReviewMidtermASpDotNet.GUI
{
    public partial class StudentAccountForm : System.Web.UI.Page
    {
        Student student;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

           id = Convert.ToInt32(Session["id"]);

            student = new Student();
            student = student.SeachStudentById(id);
            lblStudUser.Text = "Welcome " + student.FirstName + " " + student.LastName;

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnListProjects_Click(object sender, EventArgs e)
        {



            ProjectAssignemt proj = new ProjectAssignemt();



            List<Project> listProjAs = proj.listStudentProject(id);
            if (listProjAs.Count != 0)
            {
                GridViewListProjects.DataSource = listProjAs;
                GridViewListProjects.DataBind();
            }
            else
            {

                MessageBox.Show("DataBase is empty");

            }

        }





    
    }
}