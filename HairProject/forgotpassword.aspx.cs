using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HairProject
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "請輸入註冊時的信箱";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(s_data);

            string sqlforgot = "select * from account where account = '" + Request.Form["Txtaccount"] + "'";

            SqlCommand command = new SqlCommand(sqlforgot, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            if(reader.HasRows)
            {
                connection.Close();

                string s_data1 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                SqlConnection connection1 = new SqlConnection(s_data1);

                string sqlforgot1 = "select * from account where email = '" + Request.Form["Txtemail"] + "'";

                SqlCommand command1 = new SqlCommand(sqlforgot1, connection1);

                connection1.Open();

                SqlDataReader reader1 = command1.ExecuteReader();

                if(reader1.HasRows)
                {
                    if(Request.Form["Txtpassword"] == Request.Form["Txtconfirm_password"])
                    {
                        connection1.Close();

                        string s_data2 = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                        SqlConnection connection2 = new SqlConnection(s_data2);

                        string sql = "UPDATE account SET password ='" + Request.Form["Txtpassword"]+"'" + " WHERE account ='" + Request.Form["Txtaccount"]  +"'";

                        SqlCommand command2 = new SqlCommand(sql, connection2);

                        connection2.Open();

                        command2.ExecuteNonQuery();

                        connection2.Close();

                        Label1.Text = "密碼修改成功!";   
                        
                    }
                    else
                    {
                        Label1.Text = "請確認密碼是否一致";
                    }
                }
                else
                {
                    Label1.Text = "信箱與該帳號已註冊信箱不符!";
                }

                connection.Close();
            }
            else
            {
                Label1.Text = "查無此帳號，請確認是否已經註冊!";
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login");
        }
    }
}