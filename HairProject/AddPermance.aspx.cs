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
    public partial class AddPermance : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection Connection = new SqlConnection(s_data);


            Connection.Open();

            SqlCommand command = new SqlCommand($"INSERT INTO [money](moom,day,disenger,prem,prempo,color,colorpo,cat,catpo,shoomp,shoomppo,sell,sum,sumpo,target) VALUES(@moom, @day, @disenger, @prem, @prempo,@color, @colorpo, @cat, @catpo, @shoomp, @shoomppo, @sell, @sum, @sumpo, @target)", Connection);

            command.Parameters.Add("@moom", SqlDbType.NVarChar);
            command.Parameters["@moom"].Value = DropDownList2.SelectedItem.Text;

            command.Parameters.Add("@day", SqlDbType.NVarChar);
            command.Parameters["@day"].Value = DropDownList3.SelectedItem.Text;

            command.Parameters.Add("@disenger", SqlDbType.NVarChar);
            command.Parameters["@disenger"].Value = DropDownList1.SelectedItem.Text;

            command.Parameters.Add("@prem", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = TextPrem.Text;

            command.Parameters.Add("@prempo", SqlDbType.NVarChar);
            command.Parameters["@prempo"].Value = TextPremPeo.Text;

            command.Parameters.Add("@color", SqlDbType.NVarChar);
            command.Parameters["@color"].Value = TextColor.Text;

            command.Parameters.Add("@colorpo", SqlDbType.NVarChar);
            command.Parameters["@colorpo"].Value = TextColorPeo.Text;

            command.Parameters.Add("@cat", SqlDbType.NVarChar);
            command.Parameters["@cat"].Value = TextCat.Text;

            command.Parameters.Add("@catpo", SqlDbType.NVarChar);
            command.Parameters["@catpo"].Value = TextCatPeo.Text;

            command.Parameters.Add("@shoomp", SqlDbType.NVarChar);
            command.Parameters["@shoomp"].Value = TextShoomp.Text;

            command.Parameters.Add("@shoomppo", SqlDbType.NVarChar);
            command.Parameters["@shoomppo"].Value = TextShoompPeo.Text;

            command.Parameters.Add("@sell", SqlDbType.NVarChar);
            command.Parameters["@sell"].Value = TextSell.Text;

            int Prem = int.Parse(TextPrem.Text);
            int Color = int.Parse(TextColor.Text);
            int Cat = int.Parse(TextCat.Text);
            int Shoomp = int.Parse(TextShoomp.Text);
            int Sell = int.Parse(TextSell.Text);
            command.Parameters.Add("@sum", SqlDbType.NVarChar);
            command.Parameters["@sum"].Value = $"{Prem + Color + Cat + Shoomp + Sell}";

            int Prempo = int.Parse(TextPremPeo.Text);
            int Colorpo = int.Parse(TextColorPeo.Text);
            int Catpo = int.Parse(TextCatPeo.Text);
            int Shoomppo = int.Parse(TextShoompPeo.Text);
            command.Parameters.Add("@sumpo", SqlDbType.NVarChar);
            command.Parameters["@sumpo"].Value = $"{Prempo + Colorpo + Catpo + Shoomppo }";



            command.ExecuteNonQuery();

            Connection.Close();

            Response.Redirect("Performance");








        }

        protected void timeBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}