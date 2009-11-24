using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.VisualBasic;
using System.Configuration;
using System.Collections;

public partial class nivel0 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {

            Response.Redirect("index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        selectFlujoNormalOrBackUP();

    }

    public void selectFlujoNormalOrBackUP(){

        NivelCeroDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        NivelCeroDataSource.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

        ManejadorCambio mostrarBackUp = new ManejadorCambio();

        NivelCeroDataSource.SelectCommand = mostrarBackUp.getCambiosPendientesBack(Session["correo"].ToString(),Session["userPrincipal"].ToString());

        NivelCeroDataSource.SelectParameters.Add("correo", System.Data.DbType.String, Session["correo"].ToString());

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

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["cambioID"] = ((System.Web.UI.WebControls.GridView)sender).SelectedValue;
        Response.Redirect("cambios.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx");        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {

    }
}
