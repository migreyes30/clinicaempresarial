
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

    public void selectFlujoNormalOrBackUP(String folioSearch, String cambioName, String area, String estado, String tipo,String depto)
    {

        try
        {

            string lastPartQuerie = crearLastPartQuerieSearch(folioSearch, cambioName, area, estado, tipo, depto);

            NivelDosDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            NivelDosDataSource.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            ManejadorCambio mostrarBackUpHist = new ManejadorCambio();

            NivelDosDataSource.SelectCommand = mostrarBackUpHist.getCambiosHistBackN2(Session["correo"].ToString(), Session["userPrincipal"].ToString(), lastPartQuerie);

            NivelDosDataSource.SelectParameters.Clear();

            NivelDosDataSource.SelectParameters.Add("correo", System.Data.DbType.String, Session["correo"].ToString());

        }
        catch (Exception)
        {

        }

    }

    private string crearLastPartQuerieSearch(String folioSearch, String cambioName, String area, String estado, String tipo,String depto)
    {

        string resultquerie = " AND (CAMBIO.CAMBIO_ID LIKE '%" + folioSearch + "%') AND (CAMBIO.NOMBRE_CAMBIO LIKE '%" + cambioName + "%') AND (CAMBIO.AREA_ID LIKE '%" + area + "%') AND (CAMBIO.ESTADO_CAMBIO LIKE '%" + estado + "%') AND (CAMBIO.TIPO_CAMBIO LIKE '%" + tipo + "%') AND (DEPARTAMENTO.DEPTO_ID LIKE '%" + depto + "%')";



        return resultquerie;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel2.aspx");
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
        Response.Redirect("cambioHistorial.aspx?cambioID=" + ((System.Web.UI.WebControls.GridView)sender).SelectedValue);
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string Deptotodos = "";
        string Areatodos = "";

        if (CheckBox1.Checked == false)
        {
            Deptotodos = DropDownList9.SelectedValue;
        }
        if (CheckBox2.Enabled == true && CheckBox2.Checked == false)
        {
            Areatodos = DropDownList1.SelectedValue;
        }

        selectFlujoNormalOrBackUP(TextBox3.Text, TextBox4.Text, Deptotodos, DropDownList7.Text, DropDownList8.Text, Deptotodos);
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    public void selectDeptos()
    {

            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource1.SelectCommand = "SELECT [DEPTO_ID], [NOMBRE_DEPTO] FROM [DEPARTAMENTO]";

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

        SqlDataSource2.SelectCommand = "SELECT [AREA_ID], [NOMBRE_AREA], [DEPTO_ID] FROM [AREA] WHERE ([DEPTO_ID] =" + DropDownList9.SelectedValue + ")";

    }

    protected void CheckBox1_CheckedChanged_n2(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            DropDownList1.Enabled = false;
            DropDownList9.Enabled = false;
            CheckBox2.Enabled = false;
        }
        else
        {
            DropDownList1.Enabled = true;
            DropDownList9.Enabled = true;
            CheckBox2.Enabled = true;
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            DropDownList1.Enabled = false;
            CheckBox1.Enabled = false;
        }
        else
        {
            DropDownList1.Enabled = true;
            CheckBox1.Enabled = true;
        }
    }

}
