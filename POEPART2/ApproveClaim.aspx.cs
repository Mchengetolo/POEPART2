using System;
using System.Web.UI;

namespace POEPART2
{
    public partial class ApproveClaims : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Logic to display pending claims from the database
        }

        protected void ApproveClaim_Click(object sender, EventArgs e)
        {
            // Code to approve the claim
            Response.Write("<script>alert('Claim approved!');</script>");
        }

        protected void RejectClaim_Click(object sender, EventArgs e)
        {
            // Code to reject the claim
            Response.Write("<script>alert('Claim rejected!');</script>");
        }
    }
}
