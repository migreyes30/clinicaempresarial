using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class nivel0_historial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

    }
	
	public void selectFlujoNormalOrBackUP(String folioSearch,String cambioName,String area,String estado,String tipo,String depto)
    {
		try{
	        string lastPartQuerie = crearLastPartQuerieSearch(folioSearch,cambioName,area,estado,tipo,depto);

	        Nivel1QAHistDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

	        Nivel1QAHistDataSource.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

	        ManejadorCambio mostrarBackUpHistQA = new ManejadorCambio();

	        Nivel1QAHistDataSource.SelectCommand = mostrarBackUpHistQA.getCambiosHistBackQA(Session["userPrincipal"].ToString(), lastPartQuerie);
			
		}
        catch (Exception)
        {

        }

    }
	
   private string crearLastPartQuerieSearch(String folioSearch,String cambioName,String area,String estado,String tipo,String depto) {

       string resultquerie = "AND (CAMBIO.CAMBIO_ID LIKE '%" + folioSearch + "%') AND (CAMBIO.NOMBRE_CAMBIO LIKE '%" + cambioName + "%') AND (AREA.AREA_ID LIKE '%" + area + "%') AND (CAMBIO.ESTADO_CAMBIO LIKE '%" + estado + "%') AND (DEPARTAMENTO.DEPTO_ID LIKE '%" + depto + "%') AND (CAMBIO.TIPO_CAMBIO LIKE '%" + tipo + "%')";

        return resultquerie;
        
    }
	
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel1qa.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

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
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["cambioID"] = ((System.Web.UI.WebControls.GridView)sender).SelectedValue;
        Response.Write("<script type='text/javascript'>window.open('cambioHistorial.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue + "','_blank');</script>");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
		selectFlujoNormalOrBackUP(TextBox3.Text,TextBox4.Text,DropDownList9.SelectedValue,DropDownList7.Text,DropDownList8.Text,DropDownList10.SelectedValue);
    }
}
