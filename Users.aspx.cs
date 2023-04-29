using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Users : System.Web.UI.Page
    {
        Commands cm=new Commands();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                GetData();
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void row_edit(object sender, GridViewEditEventArgs e)
        {
            UserGrid.EditIndex=e.NewEditIndex;
            GetData();
        }

        protected void row_delete(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = UserGrid.Rows[e.RowIndex];
            cm.Delete_Action(row.Cells[0].Text,Session["NO"].ToString());
            GetData();
        }

        protected void row_update(object sender, GridViewUpdateEventArgs e)
        {
            TextBox id = (TextBox)UserGrid.Rows[e.RowIndex].Cells[0].Controls[0];
            TextBox name = (TextBox)UserGrid.Rows[e.RowIndex].Cells[1].Controls[0];
            TextBox phone = (TextBox)UserGrid.Rows[e.RowIndex].Cells[3].Controls[0];
            cm.Update_Action(id.Text,name.Text,phone.Text);
            UserGrid.EditIndex = -1;
            GetData();
        }
        protected void GetData()
        {
            if (Session["role"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            ParkGrid.DataSource = cm.Get_Park_Area(Session["NO"].ToString());
            ParkGrid.DataBind();
            UserGrid.DataSource = cm.Get_User(Session["NO"].ToString());
            UserGrid.DataBind();
        }

        protected void edit_cancle(object sender, GridViewCancelEditEventArgs e)
        {
            UserGrid.EditIndex = -1;
            GetData();
        }
    }
}