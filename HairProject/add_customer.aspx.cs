using System;
using System.Collections.Generic;
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
            rdbM.Checked = true;
            
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            
            string sex = "";
            if (rdbM.Checked)
            {
                sex = "先生";
            }
            else
            {
                sex = "小姐";
            }
            cus.Add(new Customer()
            {
                CusName = TextName.Text,
                CusTel = TextTel.Text,
                CusTypes = DropDownTypes.Text,
                CusJob = DropDownJob.Text,
                CusSex = sex
            });
            
            TextName.Text = "";
            TextTel.Text = "";
             

        }

       
    }
}