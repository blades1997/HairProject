using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairProject
{
    public partial class personalhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Performance");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lest");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDisenger");
        }
    }
}