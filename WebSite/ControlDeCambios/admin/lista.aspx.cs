using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;        
        Response.Redirect("../index.aspx");

    }
    protected void Button6_Click(object sender, EventArgs e)
    {        
        Response.Redirect("reporte.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("incidentes.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("usuarios.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cambioID"] = ((System.Web.UI.WebControls.GridView)sender).SelectedValue;

        Response.Write("<script type='text/javascript'>window.open('listaCambios.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue + "','_blank');</script>");

//        Response.Redirect("listaCambios.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue);
    }
}
