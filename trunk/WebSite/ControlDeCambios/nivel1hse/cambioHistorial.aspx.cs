using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
        //Label50.Text = Request.QueryString["cambioID"];
        Session["cambioID"] = Request.QueryString["cambioID"];
        /*
        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select estado_cambio from cambio where cambio_id = '"+ Label25.Text +"'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            Label26.Text = thisReader["estado_cambio"].ToString();
        }
        */


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
        }
        catch (SqlException)
        {
            Label25.Text = "ERROR";
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
        Response.Redirect("../index.aspx");

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN1_HSE.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }
}
