using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Home : System.Web.UI.Page
    {
        Commands com = new Commands();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_click(object sender, EventArgs e)
        {
            if(com.Search(txt_name.Text,txt_reg_no.Text)!=null)
            {
               search_data.DataSource = com.Search(txt_name.Text, txt_reg_no.Text);
                search_data.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Data not found');</script>");
            }
        }
    }
}