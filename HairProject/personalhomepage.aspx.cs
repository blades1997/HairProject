using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HairProject
{
    public partial class personalhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getconfig = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection Connection = new SqlConnection(getconfig);

            SqlCommand Command = new SqlCommand($"Select * from designerinfo", Connection);

            Connection.Open();

            SqlDataReader Reader = Command.ExecuteReader();

            if (Reader.HasRows)
            {
                if (Reader.Read())
                {
                    LabelName.Text = Reader["name"].ToString();
                    LabelSkills.Text = Reader["skills"].ToString();
                    LabelSignature.Text = Reader["signature"].ToString();

                }
            }



            Connection.Close();

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