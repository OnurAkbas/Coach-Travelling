using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachTravelling
{
    public partial class Portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BookingConfirmed"] == "1")
            {
                lblPurchase.Visible = true;
                Session["BookingConfirmed"] = "0";
            }
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            String Username = "" + Session["Username"];
            lblUsername.Text = Username;
            lblName.Text = getInfo.getFullName(Username);
            lblGender.Text = getInfo.getGender(Username);
            lblDOB.Text = getInfo.getDOB(Username);
            lblAddress.Text = getInfo.getAddress(Username);
            lblPostCode.Text = getInfo.getPostcode(Username);
        }

        void turnoff()
        {
            wrnSubject.Visible = false;
            wrnDescription.Visible = false;
            lblPurchase.Visible = false;
            wrnError.Visible = false;
        }

        protected void btnReviewSubmit_Click(object sender, EventArgs e)
        {
            if (ddReview.SelectedValue == "0")
            {
                turnoff();
                wrnSubject.Visible = true;
                return;
            }
            if (taDescription.InnerText == "")
            {
                turnoff();
                wrnDescription.Visible = true;
                return;
            }

            try
            {
                String reviewTittle = Convert.ToString(ddReview.SelectedItem);
                String Ratting = Convert.ToString(ddRating.SelectedItem);
                setInfo.MakeReview(lblUsername.Text, reviewTittle, taDescription.InnerText, Ratting);
                Session["Booked"] = "5";
                Response.Redirect("HomePage.aspx");
            }
            catch
            {
                wrnError.Visible = true;
            }
        }
    }
}
