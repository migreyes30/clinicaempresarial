using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class nivel0_cambioHistorial : System.Web.UI.Page
{

    String usuario;
    String perfil;
    SqlConnection thisConnection;
    String[] datos;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();
        Label25.Text = Request.QueryString["cambioID"];
        Session["cambioID"] = Request.QueryString["cambioID"];

        try
        {
            ManejadorCambio miManejador = new ManejadorCambio();
            datos = miManejador.cambiosHSE(Int32.Parse(Label25.Text));

            TextBox1.Text = datos[0];
            TextBox2.Text = datos[1];
            TextBox3.Text = datos[2];
            TextBox4.Text = datos[3];
            Label33.Text = datos[4];
            TextBox5.Text = datos[5];

            show_nivel_0();
            show_nivel_1_HSE();
            show_nivel_1_QA();
            show_nivel_2();

        }
        catch (SqlException)
        {
            Label25.Text = "ERROR";
        }

        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
        thisConnection.Open();

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select estado_cambio from cambio where cambio_id = '" + Label25.Text + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            Label26.Text = thisReader["estado_cambio"].ToString();
        }

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel1hse.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx");
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
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN1_HSE.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }

    public void show_nivel_0()
    {

        try
        {

            SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource2.SelectCommand = "SELECT AREA.NOMBRE_AREA, NIVEL0.STATUS, NIVEL0.FECHA_APROBACION, NIVEL0.COMENTARIOS,(SELECT NOMBRE_USUARIO FROM USUARIO WHERE (USUARIO_ID = DEPARTAMENTO.RESPONSABLE_ID)) AS USUARIO FROM AREA INNER JOIN NIVEL0 ON AREA.AREA_ID = NIVEL0.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (NIVEL0.CAMBIO_ID = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_1_HSE()
    {

        try
        {

            SqlDataSource3.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource3.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource3.SelectCommand = "SELECT NIVEL1_HSE.STATUS, NIVEL1_HSE.FECHA_APROBACION AS FECHA, NIVEL1_HSE.COMENTARIOS AS COMMENTS, AREA.NOMBRE_AREA,(SELECT NOMBRE_USUARIO FROM USUARIO WHERE (PERFIL_USUARIO = 'n1hse') and USUARIO.PRINCIPAL = 'true') AS USUARIO, NIVEL1_HSE.CAMBIO_ID FROM NIVEL1_HSE INNER JOIN AREA ON NIVEL1_HSE.AREA_ID = AREA.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (NIVEL1_HSE.CAMBIO_ID = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_1_QA()
    {

        try
        {

            SqlDataSource4.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource4.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource4.SelectCommand = "SELECT NIVEL1_QA.STATUS, NIVEL1_QA.FECHA_APROBACION AS FECHA, NIVEL1_QA.COMENTARIOS AS COMMENTS, AREA.NOMBRE_AREA,(SELECT NOMBRE_USUARIO FROM USUARIO WHERE(PERFIL_USUARIO = 'n1qa') and USUARIO.PRINCIPAL = 'true') AS USUARIO, NIVEL1_QA.CAMBIO_ID FROM NIVEL1_QA INNER JOIN AREA ON NIVEL1_QA.AREA_ID = AREA.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (NIVEL1_QA.CAMBIO_ID = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_2()
    {

        try
        {

            SqlDataSource5.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource5.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource5.SelectCommand = "SELECT AREAS_SOPORTE.NOMBRE_AREA_SOPORTE, (SELECT NOMBRE_USUARIO FROM USUARIO WHERE USUARIO_ID = AREAS_SOPORTE.REPONSABLE_ID) AS USUARIO, NIVEL2.STATUS, NIVEL2.FECHA_APROBACION, NIVEL2.COMENTARIOS, NIVEL2.CAMBIO_ID FROM AREAS_SOPORTE INNER JOIN NIVEL2 ON AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID WHERE (NIVEL2.CAMBIO_ID = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

}
