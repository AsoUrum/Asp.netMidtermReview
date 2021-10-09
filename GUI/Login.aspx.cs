using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReviewMidtermASpDotNet.BLL;
using System.Windows.Forms;
using ReviewMidtermASpDotNet.GUI;

namespace ReviewMidtermASpDotNet.GUI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            txtPassword.TextMode = TextBoxMode.Password;
            //txtUserID.TextMode = TextBoxMode.Email;

        }
        
       
protected void btnLogin_Click(object sender, EventArgs e)
        {
            Teacher teacher = new Teacher();
            if(txtUserID.Text.Length == 0)
            {
                MessageBox.Show("Enter your id ");
                return;
            }

            int id = Convert.ToInt32(txtUserID.Text.Trim());
            string password = txtPassword.Text;
            bool result = teacher.ValidateUser(id,password);
           

            if (( result == true ))
            {
                Session["id"] = id;
                Response.Redirect("TeacherForm.aspx");
                
            }
            else
            {
                MessageBox.Show(" Invalid logIn information");
                return;
            }
        }

        protected void btnStudentLogIn_Click(object sender, EventArgs e)
        {

            Student student = new Student();
            if (txtUserID.Text.Length == 0)
            {
                MessageBox.Show("Enter your id ");
                return;
            }

            int id = Convert.ToInt32(txtUserID.Text.Trim());
            string password = txtPassword.Text;
            bool result = student.ValidateStudent(id, password);


            if ((result == true))
            {
                Session["id"] = id;
                Response.Redirect("StudentAccountForm.aspx");

            }
            else
            {
                MessageBox.Show(" Invalid logIn information", "Warning", MessageBoxButtons.OK); ;
                return;
            }

        }
    }
}