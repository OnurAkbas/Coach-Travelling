using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace CoachTravelling
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        public void turnoff () {
            wrnAddress.Visible = false;
            wrnDOB.Visible = false;
            wrnGender.Visible = false;
            wrnLast.Visible = false;
            wrnName.Visible = false;
            wrnNumber.Visible = false;
            wrnPassword.Visible = false;
            wrnPasswordConfirm.Visible = false;
            wrnPostCode.Visible = false;
            wrnterm.Visible = false;
            wrnUsername.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

         
        if (txtFirstName.Text == "") {
                turnoff();
                wrnName.Visible = true;
                return;
            }
        if (txtLastName.Text == "") {
                turnoff();
                wrnLast.Visible = true;
                return;
        }
        if (txtDay.Text == "" || txtDay.Text == "DD" || txtMonth.Text == "" || txtMonth.Text == "MM" || txtYear.Text == "" || txtYear.Text == "YY")
            {
                turnoff();
                wrnDOB.Visible = true;
                return;
        }
        
        if (listGender.SelectedValue == "null")
            {
                turnoff();
                wrnGender.Visible = true;
                return;
            }

        if (txtNumber.Text == "07" || txtNumber.Text == "") 
        {
                turnoff();
                wrnNumber.Visible = true;
                return;
        }

        if (txtAddress.Text == "") 
        {
                turnoff();
                wrnAddress.Visible = true;
                return;
        }

        if (txtPostCode.Text == "")
        {
                turnoff();
                wrnPostCode.Visible = true;
                return;
        }

        if (txtUsername.Text == "")
        {
                turnoff();
                wrnUsername.Visible = true;
                return;
        }

        if (txtPassword.Text == "")
        {
                wrnPassword.Visible = true;
                return;
        }

        if (txtPassword.Text == txtPassword2.Text)
        {
                turnoff();

            }
            else
        {
                turnoff();
                wrnPasswordConfirm.Visible = true;
                return;
        }

        if (agreeterms.Checked == false)
            {
                turnoff();
                wrnterm.Visible = true;
                return;
            }

            if (setInfo.StartRegister(txtUsername.Text, txtPassword2.Text, txtFirstName.Text, txtLastName.Text, txtDay.Text, txtMonth.Text, txtYear.Text 
                , txtAddress.Text, txtPostCode.Text, txtNumber.Text, listGender.SelectedValue.ToString())) // this will take all the info into the database class to processed the register
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("Portal.aspx");
                
            }
            else
            {
                lblError.Visible = true;
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtDay_TextChanged(object sender, EventArgs e)
        {

        }
    }
}