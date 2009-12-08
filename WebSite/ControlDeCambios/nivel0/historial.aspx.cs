using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class nivel0_historial : System.Web.UI.Page
{

    String[] valoresBusqueda = new String[6];

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();
        selectAreas();

    }

    public void selectFlujoNormalOrBackUP(String folioSearch,String cambioName,String area,String estado,String tipo)
    {
		
		try{
		
	        string lastPartQuerie = crearLastPartQuerieSearch(folioSearch,cambioName,area,estado,tipo);

	        NivelCeroHistDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

	        NivelCeroHistDataSource.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

	        ManejadorCambio mostrarBackUpHist = new ManejadorCambio();

	        NivelCeroHistDataSource.SelectCommand = mostrarBackUpHist.getCambiosHistBack(Session["correo"].ToString(), Session["userPrincipal"].ToString(), lastPartQuerie);

	        NivelCeroHistDataSource.SelectParameters.Clear();

	        NivelCeroHistDataSource.SelectParameters.Add("correo", System.Data.DbType.String, Session["correo"].ToString());

		}
        catch(Exception) { 
            
        }
		
    }

    private string crearLastPartQuerieSearch(String folioSearch,String cambioName,String area,String estado,String tipo) {

        string resultquerie = " AND (CAMBIO.CAMBIO_ID LIKE '%" + folioSearch + "%') AND (CAMBIO.NOMBRE_CAMBIO LIKE '%" + cambioName + "%') AND (AREA.AREA_ID LIKE '%" + area + "%') AND (CAMBIO.ESTADO_CAMBIO LIKE '%" + estado + "%') AND (CAMBIO.TIPO_CAMBIO LIKE '%" + tipo + "%')";
    

        return resultquerie;
        
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
        string AreasTodas = "";
        if(CheckBox1.Checked == false){
            AreasTodas = DropDownList9.SelectedValue;
        }
        selectFlujoNormalOrBackUP(TextBox3.Text,TextBox4.Text,AreasTodas,DropDownList7.Text,DropDownList8.Text);
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
           DropDownList9.Enabled = false;
        }
        else {
            DropDownList9.Enabled = true;
        }
    }

    public void selectAreas()
    {

        try
        {

            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource1.SelectCommand = "SELECT AREA.AREA_ID, AREA.NOMBRE_AREA, DEPARTAMENTO.DEPTO_ID FROM AREA INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (DEPARTAMENTO.DEPTO_ID = (SELECT DEPTO_ID FROM DEPARTAMENTO AS DEPARTAMENTO_1 WHERE (RESPONSABLE_ID = (SELECT USUARIO_ID FROM USUARIO WHERE (CORREO_USUARIO = '"+Session["correo"]+"'))) OR (BACKUP_ID = (SELECT USUARIO_ID FROM USUARIO AS USUARIO_1 WHERE (CORREO_USUARIO = '"+Session["correo"]+"')))))";

        }
        catch (Exception)
        {

        }

    }
}
