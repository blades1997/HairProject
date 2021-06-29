using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairProject
{
    public partial class User_Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 5; i++)
            {
                DropDownList1.Items.Add((i).ToString());
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label3.Text = Calendar1.SelectedDate.Date.Year.ToString() + "年";
            Label3.Text += Calendar1.SelectedDate.Date.Month.ToString() + "月";
            Label3.Text += Calendar1.SelectedDate.Date.Day.ToString() + "日";
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label3.Text == "")
            {
                Label6.Text = "請選擇日期";
            }
            else
            {
                string getconfig = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProject_dbConnectionString"].ConnectionString;

                SqlConnection Connection = new SqlConnection(getconfig);

                Connection.Open();

                SqlCommand command = new SqlCommand($"INSERT INTO [Reservation](designer,datatime,project) VALUES(@designer, @datatime, @project)", Connection);

                command.Parameters.Add("@designer", SqlDbType.NVarChar);
                command.Parameters["@designer"].Value = DropDownList1.SelectedItem.Text + Label5.Text;

                command.Parameters.Add("@datatime", SqlDbType.NVarChar);
                command.Parameters["@datatime"].Value = Label3.Text;

                command.Parameters.Add("@project", SqlDbType.NVarChar);
                command.Parameters["@project"].Value = CheckBoxList1.SelectedItem.Text;

                command.ExecuteNonQuery();

                Connection.Close();

                Label6.Text = "預約完成";
            }
        }
    }
}