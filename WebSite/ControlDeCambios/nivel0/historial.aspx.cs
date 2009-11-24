using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nivel0_historial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //TextBox3.Text = Request.QueryString["folio"];

        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        Label14.Text = Request.QueryString["folio"];
        Label15.Text = Request.QueryString["cambio"];
        Label16.Text = Request.QueryString["area"];
        Label17.Text = Request.QueryString["fecha"];
        Label18.Text = Request.QueryString["edo"];
        Label19.Text = Request.QueryString["tipo"];

        

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel0.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        Response.Redirect("../index.aspx");
        

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["cambioID"] = ((System.Web.UI.WebControls.GridView)sender).SelectedValue;        
        Response.Redirect("cambioHistorial.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue);
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx?folio=" + TextBox3.Text + "&cambio=" + TextBox4.Text + "&area=" + DropDownList9.SelectedValue + "&fecha=" + TextBox5.Text + "&edo=" + DropDownList7.Text + "&tipo=" + DropDownList8.Text);
    }
}
