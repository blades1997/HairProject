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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblaccount.Text = ("");
            lblconfirm_password.Text = ("");
            TextBox1.Text = ("");
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(Request.Form["Txtaccount"]!= "" && Request.Form["Txtpassword"] != "" && Request.Form["confirm_password"] != "" && Request.Form["Txtemail"] != "" && Request.Form["Txtname"] != "")
            {
                string sqldata = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                SqlConnection Connection = new SqlConnection(sqldata);

                string sqlacc = "select * from account where account='" + Request.Form["Txtaccount"] + "'";

                SqlCommand Command = new SqlCommand(sqlacc, Connection);

                Connection.Open();

                SqlDataReader reader = Command.ExecuteReader();

                if (reader.HasRows)
                {
                    lblaccount.Text = ("該帳號已存在");

                    Connection.Close();
                }
                else
                {
                    Connection.Close();

                    if (Request.Form["confirm_password"] == Request.Form["Txtpassword"])
                    {
                        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                        SqlConnection connection = new SqlConnection(s_data);

                        string sql = $"insert into [account](account,password,email,name) values(@account,@password,@email,@name)";

                        connection.Open();

                        SqlCommand command = new SqlCommand(sql, connection);


                        command.Parameters.Add("@account", SqlDbType.NVarChar);
                        command.Parameters["@account"].Value = Request.Form["Txtaccount"];

                        command.Parameters.Add("@password", SqlDbType.NVarChar);
                        command.Parameters["@password"].Value = Request.Form["Txtpassword"];

                        command.Parameters.Add("@email", SqlDbType.NVarChar);
                        command.Parameters["@email"].Value = Request.Form["Txtemail"];

                        command.Parameters.Add("@name", SqlDbType.NVarChar);
                        command.Parameters["@name"].Value = Request.Form["Txtname"];

                        command.ExecuteNonQuery();

                        connection.Close();

                        TextBox1.Text = ("帳號創建成功! ");

                        
                    }
                    else
                    {
                        lblconfirm_password.Text = ("確認密碼與密碼不符!");
                    }
                }
            }
            else
            {
                TextBox1.Text = ("請確認輸入資料是否完整");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("index");
        }

        protected void Txtpassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}