using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HairProject
{
    public partial class Performance : System.Web.UI.Page
    {
        private void veiw()
        {
            string getconfig = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection Connection = new SqlConnection(getconfig);

            SqlCommand command = new SqlCommand(@"SELECT moom,day,disenger,prem,prempo,color,colorpo,cat,catpo,shoomp,shoomppo,sell,sum,sumpo FROM [money]", Connection);

            Connection.Open();

            SqlDataReader goDataReader = command.ExecuteReader();

            GridView1.DataSource = goDataReader;
            GridView1.DataBind();
            Connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPermance");
        }
    }
}