using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class nivel1qa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        selectFlujoNormalOrBackUPQA();
    }

    public void selectFlujoNormalOrBackUPQA()
    {

        try
        {

            SqlDataSourceQA.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSourceQA.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            ManejadorCambio mostrarBackUp = new ManejadorCambio();

            SqlDataSourceQA.SelectCommand = mostrarBackUp.getCambiosPendientesBackQA(Session["userPrincipal"].ToString());

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
