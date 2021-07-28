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
    class Customer
    {
        public string CusName { get; set; }
        public string CusTel { get; set; }
        public string CusJob { get; set; }
        public string CusTypes { get; set; }
        public string CusSex { get; set; }

        
    }
    
    
    public partial class add_customer : System.Web.UI.Page
    {
        List<Customer> cus = new List<Customer>();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownTypes.Text = "燙髮";
            DropDownJob.Text = "金融";
            
            
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string getconfig = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["HairProjectConnectionString"].ConnectionString;

            SqlConnection Connection = new SqlConnection(getconfig);

            Connection.Open();

            SqlCommand command = new SqlCommand($"INSERT INTO [Customerinfo](name,tel,type,job,sex) VALUES(@name, @tel, @type, @job, @sex)", Connection);

            command.Parameters.Add("@name", SqlDbType.NVarChar);
            command.Parameters["@name"].Value = TextName.Text;

            command.Parameters.Add("@tel", SqlDbType.NVarChar);
            command.Parameters["@tel"].Value = TextTel.Text;

            command.Parameters.Add("@type", SqlDbType.NVarChar);
            command.Parameters["@type"].Value = DropDownTypes.SelectedItem.Text;

            command.Parameters.Add("@job", SqlDbType.NVarChar);
            command.Parameters["@job"].Value = DropDownJob.SelectedItem.Text;

            command.Parameters.Add("@sex", SqlDbType.NVarChar);
            command.Parameters["@sex"].Value = RadioButtonList1.SelectedItem.Text;


            command.ExecuteNonQuery();

            Connection.Close();


            string sex = "";

            Label5.Text = "新增成功!";
            
            cus.Add(new Customer()
            {
                CusName = TextName.Text,
                CusTel = TextTel.Text,
                CusTypes = DropDownTypes.Text,
                CusJob = DropDownJob.Text,
                CusSex = sex
            });
            
            //TextName.Text = "";
            //TextTel.Text = "";


        }

        
    }
}