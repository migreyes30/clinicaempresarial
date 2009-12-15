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
        selectDeptos();

        
    }

    public void selectFlujoNormalOrBackUP(String folioSearch, String cambioName, String area, String estado, String tipo, String depto)
    {
        try
        {
            string lastPartQuerie = crearLastPartQuerieSearch(folioSearch, cambioName, area, estado, tipo, depto);

            NivelHSEDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            NivelHSEDataSource.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            ManejadorCambio mostrarBackUpHistHSE = new ManejadorCambio();

            NivelHSEDataSource.SelectCommand = mostrarBackUpHistHSE.getCambiosHistBackHSE(Session["userPrincipal"].ToString(), lastPartQuerie);

        }
        catch (Exception)
        {

        }

    }

    public void selectDeptos()
    {


            SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource2.SelectCommand = "SELECT [DEPTO_ID], [NOMBRE_DEPTO] FROM [DEPARTAMENTO]";

    }

    private string crearLastPartQuerieSearch(String folioSearch, String cambioName, String area, String estado, String tipo, String depto)
    {

        string resultquerie = " AND (CAMBIO.CAMBIO_ID LIKE '%" + folioSearch + "%') AND (CAMBIO.NOMBRE_CAMBIO LIKE '%" + cambioName + "%') AND (CAMBIO.AREA_ID LIKE '%" + area + "%') AND (CAMBIO.ESTADO_CAMBIO LIKE '%" + estado + "%') AND (CAMBIO.TIPO_CAMBIO LIKE '%" + tipo + "%')AND (DEPARTAMENTO.DEPTO_ID LIKE '%" + depto + "%')";

        return resultquerie;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel1hse.aspx");
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
        string Deptotodos = "";
        string Areatodos = "";

        if (CheckBox1.Checked == false)
        {
            Deptotodos = DropDownList10.SelectedValue;
        }
        if (CheckBox2.Enabled == true && CheckBox2.Checked == false)
        {
            Areatodos = DropDownList9.SelectedValue;
        }


        selectFlujoNormalOrBackUP(TextBox3.Text, TextBox4.Text, Areatodos, DropDownList7.Text, DropDownList8.Text, Deptotodos);
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            DropDownList9.Enabled = false;
            DropDownList10.Enabled = false;
            CheckBox2.Enabled = false;
        }
        else {
            DropDownList9.Enabled = true;
            DropDownList10.Enabled = true;
            CheckBox2.Enabled = true;
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            DropDownList9.Enabled = false;
            CheckBox1.Enabled = false;
        }
        else
        {
            DropDownList9.Enabled = true;
            CheckBox1.Enabled = true;
        }
    }

    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

        SqlDataSource1.SelectCommand = "SELECT [AREA_ID], [NOMBRE_AREA], [DEPTO_ID] FROM [AREA] WHERE ([DEPTO_ID] =" + DropDownList10.SelectedValue + ")";

    }

}
