using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachTravelling
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void turnoff()
        {
            wrnEmail.Visible = false;
            wrnMessage.Visible = false;
            wrnName.Visible = false;
            wrnNumber.Visible = false;
            wrnSubject.Visible = false;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                turnoff();
                wrnName.Visible = true;
                return;
            }

            if (txtNumber.Text == "")
            {
                turnoff();
                wrnNumber.Visible = true;
                return;
            }

            if (txtEmail.Text == "")
            {
                turnoff();
                wrnEmail.Visible = true;
                return;
            }

            if (txtSubject.Text == "")
            {
                turnoff();
                wrnSubject.Visible = true;
                return;
            }

            if (txtMessage.Text == "")
            {
                turnoff();
                wrnMessage.Visible = true;
                return;
            }
            btnSubmit.Visible = true;
            lblCheck.Visible = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                if (txtCustomerID.Text == "")
                {
                    setInfo.MakeEnquiry(txtName.Text, txtName.Text, txtNumber.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);
                    Session["Booked"] = "3";
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    setInfo.MakeEnquiry(txtName.Text, txtCustomerID.Text, txtNumber.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);
                    Session["Booked"] = "3";
                    Response.Redirect("HomePage.aspx");
                }
            }catch
            {
                lblCheck.Text = "unknown Error ";
            }
            
        }

    }
    
}