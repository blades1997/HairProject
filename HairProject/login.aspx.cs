using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HairProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logined"] != null && Session["logined"].ToString() == "1")
            {
                Response.Redirect("index");
            }                   
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("register");
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                if (Request.Form["Txtaccount"] != null && Request.Form["Txtpassword"] != null)
                {
                    string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                    SqlConnection connection = new SqlConnection(s_data);

                    string sqllogin = "select * from account where account ='" + Request.Form["Txtaccount"] + "'";

                    SqlCommand command = new SqlCommand(sqllogin, connection);

                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {

                            if (reader["password"].ToString().Trim() == Request.Form["Txtpassword"])
                            {

                                Session["logined"] = 1;

                                Session["name"] = Request.Form["Txtname"];

                                Response.Redirect("index");
                              
                            }
                            else
                            {
                                Label1.Text = "密碼錯誤!";

                            }
                        }
                    }
                    else
                    {
                        Label1.Text = "查無此帳號";
                    }

                    connection.Close();
                }
                else
                {
                    Response.Write("發生錯誤!");
                }
            }
            else
            {
                if (Request.Form["Txtaccount"] != null && Request.Form["Txtpassword"] != null)
                {
                    string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

                    SqlConnection connection = new SqlConnection(s_data);

                    string sqllogin = "select * from designeraccount where account ='" + Request.Form["Txtaccount"] + "'";

                    SqlCommand command = new SqlCommand(sqllogin, connection);

                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {

                            if (reader["password"].ToString().Trim() == Request.Form["Txtpassword"])
                            {
                              
                                Session["logined"] = 2;

                                Session["name"] = Request.Form["Txtaccount"];

                                Response.Redirect("personalhomepage");

                                connection.Close();

                                if (Request.Form["Txtaccount"] == "designer01")

                                    Session["image"] = 1;

                                else if (Request.Form["Txtaccount"] == "designer02")

                                    Session["image"] = 2;

                                else

                                    Session["image"] = 3;

                            }
                            else
                            {
                                Label1.Text = "密碼錯誤!";
                            }
                        }
                    }
                    else
                    {
                        Label1.Text = "查無此帳號";
                    }

                    connection.Close();
                }
                else
                {
                    Response.Write("發生錯誤!");
                }
            }
        
        }
        

    

    protected void BtnForget_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotpassword");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index");
        }
    }
}