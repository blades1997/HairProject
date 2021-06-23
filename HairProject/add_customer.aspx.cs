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
    
    
    public partial class add_customer:Customer
    {
       
    }
    public partial class add_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            List<Customer> cus = new List<Customer>();
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
                CusTypes = ListTypes.Text,
                CusJob = ListJob.Text,
                CusSex = sex
            });
            TextName.Text = "";
            TextTel.Text = "";
        }
    }
}