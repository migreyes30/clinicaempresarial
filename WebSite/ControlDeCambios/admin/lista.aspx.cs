using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class lista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }

        usuarioSesion.Text = Session["user"].ToString();
        show_cambios();

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
        Session["correo"] = null;
        Session["depto"] = null;
        Session["userPrincipal"] = null;      
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

    protected void show_cambios()
    {

        SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

        String searchQuerie = crearLastPartQuerieSearch(TextBox6.Text, TextBox4.Text, DropDownList1.SelectedValue, DropDownList5.SelectedValue, DropDownList6.SelectedValue, DropDownList8.SelectedValue, DropDownList7.SelectedValue, DropDownList9.SelectedValue);

        SqlDataSource1.SelectCommand = "SELECT CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, CAMBIO.ESTADO_CAMBIO, NIVEL0.STATUS AS NIVEL0, NIVEL1_HSE.STATUS AS HSE, NIVEL1_QA.STATUS AS QA, NIVEL2_STATUS.STATUS AS NIVEL2 FROM CAMBIO INNER JOIN NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID INNER JOIN NIVEL1_HSE ON CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID INNER JOIN NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID INNER JOIN NIVEL2_STATUS ON CAMBIO.CAMBIO_ID = NIVEL2_STATUS.CAMBIO_ID " + searchQuerie;

    }

    private string crearLastPartQuerieSearch(String folioSearch, String cambioName, String n0, String estado, String tipo, String n1_hse, String n1_qa, String n2)
    {

        string resultquerie = "WHERE (CAMBIO.CAMBIO_ID LIKE '%" + folioSearch + "%') AND (CAMBIO.NOMBRE_CAMBIO LIKE '%" + cambioName + "%') AND (CAMBIO.ESTADO_CAMBIO LIKE '%" + estado + "%') AND (CAMBIO.TIPO_CAMBIO LIKE '%" + tipo + "%') AND (NIVEL0.STATUS LIKE '%" + n0 + "%') AND (NIVEL1_HSE.STATUS LIKE '%" + n1_hse + "%') AND (NIVEL1_QA.STATUS LIKE '%" + n1_qa + "%') AND (NIVEL2_STATUS.STATUS LIKE '%" + n2 + "%')";

        return resultquerie;

    }

}
