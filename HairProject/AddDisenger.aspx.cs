using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HairProject
{
    public partial class AddDisenger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection Connection = new SqlConnection(s_data);


            Connection.Open();

            SqlCommand command = new SqlCommand($"INSERT INTO [designerinfo](name,skills,signature,line) VALUES(@name, @skills, @signature, @line)", Connection);

            command.Parameters.Add("@name", SqlDbType.NVarChar);
            command.Parameters["@name"].Value = TextName.Text;

            command.Parameters.Add("@skills", SqlDbType.NVarChar);
            command.Parameters["@skills"].Value = TextSkills.Text;

            command.Parameters.Add("@signature", SqlDbType.NVarChar);
            command.Parameters["@signature"].Value = TextSignature.Text;

            command.Parameters.Add("@line", SqlDbType.NVarChar);
            command.Parameters["@line"].Value = TextLine.Text;



            command.ExecuteNonQuery();

            Connection.Close();

            Response.Redirect("personalhomepage");
        }
    }
}