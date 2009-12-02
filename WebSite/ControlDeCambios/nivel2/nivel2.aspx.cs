using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.VisualBasic;
using System.Configuration;
using System.Collections;

public partial class nivel1qa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        selectFlujoNormalOrBackUP();
    }

    public void selectFlujoNormalOrBackUP()
    {

        try
        {

            SqlDataSourceN2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSourceN2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            ManejadorCambio mostrarBackUp = new ManejadorCambio();

            SqlDataSourceN2.SelectCommand = mostrarBackUp.getCambiosPendientesBackN2(Session["correo"].ToString(), Session["userPrincipal"].ToString());

            SqlDataSourceN2.SelectParameters.Clear();

            SqlDataSourceN2.SelectParameters.Add("correo", System.Data.DbType.String, Session["correo"].ToString());

        }
        catch (Exception)
        {

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        Session["correo"] = null;
        Session["depto"] = null;
        Session["userPrincipal"] = null;
        Response.Redirect("../index.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cambioID"] = ((System.Web.UI.WebControls.GridView)sender).SelectedValue;
        Response.Redirect("cambios.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx");
    }
}
