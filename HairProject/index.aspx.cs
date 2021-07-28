using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairProject
{
    public partial class index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logined"] == null)
            {
                btnlogin.Enabled = true;

                btnlogin.Visible = true;

                btnlogout.Enabled = false;

                btnlogout.Visible = false;
            }
            else
            {
                btnlogin.Enabled = false;

                btnlogin.Visible = false;

                btnlogout.Visible = true;

                btnlogout.Enabled = true;
              


            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("login");
           
        }

        protected void btnhair_Click(object sender, EventArgs e)
        {
            Response.Redirect("hairinfo");
        }

        protected void btndesigner_Click(object sender, EventArgs e)
        {
            Response.Redirect("designerlist");
        }

        protected void btnproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("productinfo");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Reservation");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();

            btnlogin.Visible = true;
            btnlogin.Enabled = true;
            btnlogout.Visible = false;
            btnlogout.Enabled = false;
            Label1.Text = "";
        }
    }
}