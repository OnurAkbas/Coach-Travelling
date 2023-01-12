using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachTravelling
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String isAdmin = Convert.ToString(Session["Username"]);
            if (verifyInfo.CheckisAdmin(isAdmin) == 1)
            {
                adminLink.Visible = true;
                portalLink.Visible = true;
            }
            else if(verifyInfo.CheckisAdmin(isAdmin) == 0)
            {
                portalLink.Visible = true;
                adminLink.Visible = false;
            }


            if (Session["Username"] == null || Session["Username"] == "")
            {
                lblLink.Visible = false;
                lblUSER.Visible = true;
                lblUSER.Text = "Contact Details : 0854 743 62220";
                adminLink.Visible = false;
                portalLink.Visible = false;
            }
            else {
                lblLink.Visible = true;
                lblUSER.Visible = true;
                lblUSER.Text = "Welcome back : " + Session["Username"];
            }
        }
    }
}