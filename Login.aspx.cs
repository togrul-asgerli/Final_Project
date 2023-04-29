using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
       Commands cm=new Commands();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_click(object sender, EventArgs e)
        {   
            if(cm.Login_Check(txt_vehic_reg_no.Text, txt_token.Text)== "Login Succesfully")
            {
                Session["NO"] = txt_vehic_reg_no.Text;
                Session["role"] = "user";
                Response.Redirect("Users.aspx");
            }
            else
            {
                lbl_res_home.Text = "Login Unsuccesfully";
            }
        }
    }
}