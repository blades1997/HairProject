using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("register");
        }     
        protected void BtnLogin_Click1(object sender, EventArgs e)
        {
            if(Txtaccount != null && Txtpassword != null)
            {

            }
        }
    }
}