using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class cambios : System.Web.UI.Page
{

    SqlConnection thisConnection;
    SqlCommand thisCommand;
    Int32 folio;
    int area_soporte;
    String[] datos;

    Int32[] areasSoporte = new Int32[6];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        Label25.Text = Request.QueryString["cambioID"];


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
            show_nivel_1_QA();
            show_nivel_1_HSE();
            show_nivel_2();


        }
        catch (SqlException)
        {
            Label24.Text = "ERROR";
        }


        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());        
        thisConnection.Open();

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT  AREA_SOPORTE_ID FROM    AREAS_SOPORTE WHERE	REPONSABLE_ID = (SELECT USUARIO_ID FROM USUARIO WHERE NOMBRE_USUARIO = '"+ usuarioSesion.Text +"')";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            area_soporte = (int)thisReader["AREA_SOPORTE_ID"];
            
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
        thisConnection.Close();

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx");
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {        
        try
        {           
            
            ManejadorCambio miManejador = new ManejadorCambio();
            miManejador.aceptarAreaSoporte(TextBoxComentario.Text, Int32.Parse(Label25.Text), area_soporte);
            Label24.Text = "Dato Insertado!!!";
            Button7.Visible = false;
            Button8.Visible = false;
            Button3.Visible = true;

        }catch(SqlException){

            //Response.Redirect("cambios.aspx");
            Label24.Text = "Error con la base de datos";

        }

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
     
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        try
        {

            ManejadorCambio miManejador = new ManejadorCambio();
            miManejador.rechazarAreaSoporte(TextBoxComentario.Text, Int32.Parse(Label25.Text), area_soporte);

            /************* Llamada a la funcion para enviar mail a Admin ***/

            miManejador.rechazadoCambio(miManejador.getMailAdmin(),usuarioSesion.Text, Label25.Text);

            /***************************************/


            Label24.Text = "Dato Insertado!!!";
            Button7.Visible = false;
            Button8.Visible = false;
            Button3.Visible = true;

        }
        catch (SqlException)
        {

            //Response.Redirect("cambios.aspx");
            Label24.Text = "Error con la base de datos";

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel2.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN2.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }

    public void show_nivel_0()
    {

        try
        {

            SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource2.SelectCommand = "SELECT [COMENTARIOS] FROM [NIVEL0] WHERE ([CAMBIO_ID] = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_1_HSE()
    {

        try
        {

            SqlDataSource4.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource4.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource4.SelectCommand = "SELECT [COMENTARIOS] FROM [NIVEL1_HSE] WHERE ([CAMBIO_ID] = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_1_QA()
    {

        try
        {

            SqlDataSource5.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource5.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource5.SelectCommand = "SELECT [COMENTARIOS] FROM [NIVEL1_QA] WHERE ([CAMBIO_ID] = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_2()
    {

        try
        {

            SqlDataSource3.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource3.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource3.SelectCommand = "SELECT AREAS_SOPORTE.NOMBRE_AREA_SOPORTE, NIVEL2.COMENTARIOS FROM AREAS_SOPORTE INNER JOIN NIVEL2 ON AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID WHERE (NIVEL2.CAMBIO_ID = " + Session["cambioID"].ToString() + ")";
        }
        catch (Exception)
        {

        }

    }


}
