using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairProject
{
    public partial class AddPermance : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int prem = int.Parse(TextPrem.Text);
            int color = int.Parse(TextColor.Text);
            int cat = int.Parse(TextCat.Text);
            int shoomp = int.Parse(TextShoomp.Text); 
            int sell = int.Parse(TextSell.Text);
            int prempeo = int.Parse(TextPremPeo.Text);
            int colorpeo = int.Parse(TextColorPeo.Text);
            int catpeo = int.Parse(TextCatPeo.Text);
            int shoomppeo = int.Parse(TextShoompPeo.Text);
            

            LabeSum.Text = ($"{prem + color + cat + shoomp + sell }");
            LabelSumPeo.Text = ($"{prempeo + colorpeo + catpeo + shoomppeo}");
        }
    }
}