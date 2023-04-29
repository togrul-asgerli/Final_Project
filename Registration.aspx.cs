using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Registration : System.Web.UI.Page
    {
        Commands cm = new Commands();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            
                string token = cm.Generate_Token();
            
                string result = cm.Register(drp_list_parking.Text, drp_list_slot.Text, txt_reg_name.Text, txt_reg_phone.Text, txt_reg_veh.Text, drp_list_price.Text, token);
                if (result == "Succesfully Register")
                {
                    lbl_status.Text = "Succesfully Register.Your token is: " + token;
                }
                else if (result=="Place is full")
                {
                    lbl_status.Text = "Place is reserved";
                }
                else
                {
                    lbl_status.Text = "Your car has parked";
                }
               
            
           
        }
    }
}