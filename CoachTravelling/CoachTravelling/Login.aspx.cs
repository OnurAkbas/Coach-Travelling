using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachTravelling
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Username"] = "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text; // username = to username textbox
            string password = txtPassword.Text; // password = to password textbox

            

            if (verifyInfo.LoginCheck(username, password)) // 
            {
                Session["Username"] = username;
                if (Session["isBooking"] == null)
                {
                    if (verifyInfo.CheckisAdmin(username) == 1)
                    {
                        Response.Redirect("Admin.aspx");
                    }else
                    { 
                    Response.Redirect("Portal.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Basket.aspx");
                }
            }
            else
            {
                wrnError.Text = "The Username or Password is incorrect. If you don't have an account, register now.";
                wrnError.Visible = true; 

            }
        }
    }
}