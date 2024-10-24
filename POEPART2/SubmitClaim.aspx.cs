using System;
using System.Web.UI;

namespace POEPART2
{
    public partial class SubmitClaim : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Handle form submission
                string lecturerName = Request.Form["lecturer_name"];
                string email = Request.Form["email"];
                string programGroup = Request.Form["pg"];
                string hourCategory = Request.Form["hc"];
                string hourlyRate = Request.Form["hourly_rate"];
                string hoursWorked = Request.Form["hours_worked"];

                // Here you would typically save this data to a database
                // For now, we'll just redirect back to the same page to clear the form
                Response.Redirect("SubmitClaim.aspx");
            }
        }
    }
}
