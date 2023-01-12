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
    public partial class Basket : System.Web.UI.Page
    {
        String price;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["isBooking"] = 1;
            if (Session["Username"] == null || Session["Username"] == "")
            {
                btnCheckOut.Enabled = false;
                btnCheckOut.Text = "Login to Checkout";
                Session["isBooking"] = 1;
            }else
            {
                btnCheckOut.Enabled = true;
                btnCheckOut.Text = "Check Out Now";
            }

            if (Session["Booked"] == null || Session["Booked"] == "0" || Session["Booked"] == "")
            {
                Session["Booked"] = "0";
                Response.Redirect("HomePage.aspx");
            }

            txtDate.Text = "" + Session["day"] + "/" + Session["month"] + "/" + Session["year"];
            txtDestination.Text = "" + Session["to"];
            txtFrom.Text  = "" + Session["from"];
            txtPassengers.Text = "" + Session["Passenger"];

            String from = txtFrom.Text;
            String to = txtDestination.Text;

            int cost;

            if (ListSeats.SelectedIndex == 0)
            {
                CheckSeat.Standard seat = new CheckSeat.Standard();
                cost = seat.action(to);
            }
            else
            {
                CheckSeat.VIP seat = new CheckSeat.VIP();
                cost = seat.action(to);
            }

            txtCost.Text = "£"+cost;
            
            int person = Int32.Parse(txtPassengers.Text);

            cost = cost * person;

            double discount = cost * 0.15;

            double VAT = cost * 0.20;

            double totalcost = (cost + VAT) - discount;

            lblFullCost.Text = "£" + cost;

            lblDiscount.Text = "£" + discount ;

            lblVAT.Text = "£" + VAT;

            lblTotalCost.Text = "£" + totalcost;

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            Session["Discount"] = lblDiscount.Text;
            Session["VAT"] = lblVAT.Text;
            Session["TotalCost"] = lblTotalCost.Text;
            Session["FullCost"] = lblFullCost.Text;
            Session["People"] = txtPassengers.Text;
            Session["Date"] = txtDate.Text;
            Session["Seat"] = ListSeats.SelectedValue;
            Response.Redirect("CheckOut.aspx");
        }
    }
    }
