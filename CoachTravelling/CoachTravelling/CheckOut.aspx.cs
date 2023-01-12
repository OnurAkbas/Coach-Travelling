using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachTravelling
{
    public partial class CheckOut : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String Username = "" + Session["Username"];
            String to = "" + Session["to"];
            lblFrom.Text = "" + Session["from"];
            lblTo.Text = to;
            lblTotalCost.Text = "" + Session["TotalCost"];
            lblDate.Text = "" + Session["Date"];
            lblTime.Text = Convert.ToString(getInfo.getTripTime(to)) + " Hours";
            txtName.Text = getInfo.getFullName(Username);
            txtAddress.Text = getInfo.getAddress(Username);
            txtPostcode.Text = getInfo.getPostcode(Username);
            txtDOB.Text =  getInfo.getDOB(Username);
            lblDurnation.Text = getInfo.getTripDurnation(to);
            lblPeople.Text = "" + Session["People"];
            txtNumber.Text = Convert.ToString(getInfo.getNumber(Username));
            txtUsername.Text = Username;
            lblSeat.Text = "" + Session["Seat"];
        }

        public void turnoff()
        {
            wrnLong.Visible = false;
            wrnType.Visible = false;
            wrnCVV.Visible = false;
            wrnExpiry.Visible = false;
            wrnPayment.Visible = false;
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            turnoff();
            if  (ddType.SelectedValue == "0")
            {
                turnoff();
                wrnType.Visible = true;
                return;
            } 
            
            if (txtLong.Text == "")
            {
                turnoff();
                wrnLong.Visible = true;
                return;
            }

            if (ddMonth.SelectedValue == "0" || ddYear.SelectedValue == "0")
            {
                turnoff();
                wrnExpiry.Visible = true;
                return;
            }

            if (txtCVV.Text == "")
            {
                turnoff();
                wrnCVV.Visible = true;
                return;
            }

            try
            {
                setInfo.BookTrip(lblFrom.Text,lblTo.Text,lblDate.Text,lblTotalCost.Text,lblDurnation.Text,txtUsername.Text,lblPeople.Text,ddType.Text, lblSeat.Text);
                Session["BookingConfirmed"] = "1";
                Session["Booked"] = "0";
                Response.Redirect("Portal.aspx");
            }
            catch
            {
                wrnPayment.Visible = true;
            }


        }
    }
}