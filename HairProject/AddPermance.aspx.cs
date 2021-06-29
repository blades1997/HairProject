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
        public class Permance
        {
            int PerPerm { get; set; }
            int PerPermpeo { get; set; }
            int PerColor { get; set; }
            int PerColorpeo { get; set; }
            int PerCat { get; set; }
            int PerCatpeo { get; set; }
            int Pershoomp { get; set; }
            int Pershoomppeo { get; set; }
        }

        string[] day = new string[] { "燙髮", "客數", "染髮", "客數", "剪髮", "客數", "洗髮", "客數", "總業績", "總客數" };
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["hairConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(s_data);

            string Pre = "select * from outstanding achievement where account='";

            SqlCommand command = new SqlCommand(Pre, connection);

            string sql = $"insert into [outstanding achievement](prem,prem_p,color,color_p,cat,cat_p,shoomp,shoomp_p,sum,sum_p) values(@prem,@prem_p,@color,@color_p,@cat,@cat_p,@shoomp,@shoomp_p,@sum,@sum_p)";

            connection.Open();

            
            
            

            
            command.Parameters.Add("@prem", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = Request.Form["TextPrem"];

            command.Parameters.Add("@prem_p", SqlDbType.NVarChar);
            command.Parameters["@prem_p"].Value = Request.Form["TextPremPeo"];

            command.Parameters.Add("@color", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = Request.Form["Textcolor"];

            command.Parameters.Add("@color_p", SqlDbType.NVarChar);
            command.Parameters["@prem_p"].Value = Request.Form["TextColorPeo"];

            command.Parameters.Add("@cat", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = Request.Form["Textcat"];

            command.Parameters.Add("@cat_p", SqlDbType.NVarChar);
            command.Parameters["@prem_p"].Value = Request.Form["TextCatPeo"];

            command.Parameters.Add("@shoomp", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = Request.Form["Textshoop"];

            command.Parameters.Add("@shoomp_p", SqlDbType.NVarChar);
            command.Parameters["@prem_p"].Value = Request.Form["TextShoompPeo"];

            command.Parameters.Add("@color", SqlDbType.NVarChar);
            command.Parameters["@prem"].Value = Request.Form[ "$ {TextPrem}+{Textcolor}+{Textcat}"+"{TextShoomp}"];

            command.Parameters.Add("@sum", SqlDbType.NVarChar);
            command.Parameters["@sum_p"].Value = Request.Form["$ {TextPremPeo}+{TextcolorPeo}+{TextcatPeo}" + "{TextShoompPeo}"];

            Response.Redirect("Performance");





        }

       
    }
}