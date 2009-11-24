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
            Response.Redirect("../index.aspx");
        }

        usuarioSesion.Text = Session["user"].ToString();

        if (Request.QueryString["folio"] == null)
        {
            Session["folio"] = "";
        }

        Label17.Text = Request.QueryString["folio"];
        Label18.Text = Request.QueryString["cambio"];
        Label19.Text = Request.QueryString["tipo"];
        Label20.Text = Request.QueryString["edoCambio"];
        Label21.Text = Request.QueryString["edoN0"];
        Label22.Text = Request.QueryString["edoQA"];
        Label23.Text = Request.QueryString["edoHSE"];
        Label24.Text = Request.QueryString["edoN2"];

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
        Session["cambioAceptado"] = true;
        Response.Redirect("cambios.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["cambioAceptado"] = true;
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
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        
        Response.Redirect("lista.aspx?folio=" + TextBox6.Text + "&cambio=" + TextBox4.Text + "&tipo=" + DropDownList6.SelectedValue + "&edoCambio=" + DropDownList5.Text + "&edoN0=" + DropDownList1.Text + "&edoQA=" + DropDownList7.Text + "&edoHSE=" + DropDownList8.Text + "&edoN2=" + DropDownList9.Text);

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}
