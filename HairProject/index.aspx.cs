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
            }
            else
            {
                btnlogin.Enabled = false;

                btnlogin.Visible = false;

                Label1.Text = Session["name"].ToString() + "您好";
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
    }
}