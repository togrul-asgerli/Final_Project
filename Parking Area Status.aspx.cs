using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Parking_Area_Status : System.Web.UI.Page
    {
        Commands cm=new Commands();
        
        protected void Page_Load(object sender, EventArgs e)
        {   
            GridView1.DataSource = cm.Fill("HighWay_Parking_1");  
            GridView1.DataBind();
            GridView2.DataSource = cm.Fill("HighWay_Parking_2");
            GridView2.DataBind();
            GridView3.DataSource = cm.Fill("HighWay_Parking_3");
            GridView3.DataBind();

        }
    }
}