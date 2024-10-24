using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class Login : Page
    {
        protected void LecturerLoginButton_Click(object sender, EventArgs e)
        {
            string name = lecturerNameTextBox.Text;
            string email = lecturerEmailTextBox.Text;
            string password = lecturerPasswordTextBox.Text;

            // Here you can add your validation/authentication logic
            Response.Write($"Welcome, {name} (Lecturer)! You have successfully logged in.");
        }

        protected void CoordinatorLoginButton_Click(object sender, EventArgs e)
        {
            string name = coordinatorNameTextBox.Text;
            string email = coordinatorEmailTextBox.Text;
            string password = coordinatorPasswordTextBox.Text;

            // Here you can add your validation/authentication logic
            Response.Write($"Welcome, {name} (Coordinator)! You have successfully logged in.");
        }

        protected void ManagerLoginButton_Click(object sender, EventArgs e)
        {
            string name = managerNameTextBox.Text;
            string email = managerEmailTextBox.Text;
            string password = managerPasswordTextBox.Text;

            // Here you can add your validation/authentication logic
            Response.Write($"Welcome, {name} (Manager)! You have successfully logged in.");
        }
    }
}