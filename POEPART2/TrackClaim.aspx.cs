using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI.WebControls;

namespace POEPART2
{
    public partial class TrackClaims : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClaimsData();
            }
        }

        private void LoadClaimsData()
        {
            // Sample data to bind to the repeater
            var claims = new List<Claim>
            {
                new Claim { HoursWorked = 10, HourlyRate = 500, Notes = "Worked overtime", DocumentPath = "document1.pdf", Status = "Approved" },
                new Claim { HoursWorked = 8, HourlyRate = 400, Notes = "Regular hours", DocumentPath = "document2.pdf", Status = "Pending" },
                new Claim { HoursWorked = 12, HourlyRate = 450, Notes = "Extra work on project", DocumentPath = "document3.pdf", Status = "Rejected" }
            };

            claimsRepeater.DataSource = claims;
            claimsRepeater.DataBind();
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Get the button that triggered the event
            var button = sender as Button;
            var fileUpload = button.NamingContainer.FindControl("fileUpload") as FileUpload;

            if (fileUpload != null && fileUpload.HasFile)
            {
                // Define the upload path (ensure this folder exists and has appropriate permissions)
                string uploadFolder = Server.MapPath("~/UploadedDocuments/");
                if (!Directory.Exists(uploadFolder))
                {
                    Directory.CreateDirectory(uploadFolder);
                }

                // Get the file name and save the file
                string fileName = Path.GetFileName(fileUpload.FileName);
                string fullPath = Path.Combine(uploadFolder, fileName);
                fileUpload.SaveAs(fullPath);

                // Here you can also update your data source to reflect the new document path
                // For example, update the claim's DocumentPath in the database or data structure

                // Optionally, show a message or reload data
                LoadClaimsData(); // Reload data to reflect the change (optional)
            }
        }

        public class Claim
        {
            public int HoursWorked { get; set; }
            public decimal HourlyRate { get; set; }
            public string Notes { get; set; }
            public string DocumentPath { get; set; }
            public string Status { get; set; }
        }
    }
}
