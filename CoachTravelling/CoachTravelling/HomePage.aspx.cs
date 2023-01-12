using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;

namespace CoachTravelling
{
    public partial class HomePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Booked"] == "0")
            {
                wrnUser.Visible = true;
                Session["Booked"] = 10;
            }
            if (Session["Booked"] == "3")
            {
                wrnUser.Text = "Your Enquiry has been submited ";
                wrnUser.Visible = true;
                Session["Booked"] = 10;
            }
            if (Session["Booked"] == "5")
            {
                wrnUser.Text = "Your Review has been submited you can view it below.";
                wrnUser.Visible = true;
                Session["Booked"] = 10;
            }
            SetImageUrl();
           Session["get"] = ddTo.SelectedValue;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }
        private void SetImageUrl()
        {
            Random ran = new Random();
            int i = ran.Next(1, 12);
            ImageMap1.ImageUrl = "~/destination/" + i.ToString() + ".jpg";
        }

        protected void ddTo_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Session["get"] = ddTo.SelectedValue;
        }

        public void turnoff()
        {
            wrnPassanger.Visible = false;
            wrnDate.Visible = false;
            wrnUser.Visible = false;
            wrnTo.Visible = false;

        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(ddTo.SelectedItem) == "1.Select A Destination")
            {
                turnoff();
                wrnTo.Visible = true;
                return;
            }

            if (ddPassenger.SelectedValue == "0")
            {
                turnoff();
                wrnPassanger.Visible = true;
                return;
            }
            if (ddDay.SelectedValue == "0" || ddMonth.SelectedValue == "0" || ddYear.SelectedValue == "0")
            {
                turnoff();
                wrnDate.Visible = true;
                return;
            }
            Session["to"] = ddTo.SelectedValue;
            Session["from"] = ddFrom.SelectedValue;
            Session["Passenger"] = ddPassenger.SelectedValue;
            Session["day"] = ddDay.Text;
            Session["month"] = ddMonth.Text;
            Session["year"] = ddYear.Text;
            Session["booked"] = "1";
            Response.Redirect("Basket.aspx");
        }
    }
}