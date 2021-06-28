using System;
using System.Collections.Generic;
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
    }
}