﻿using System;
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
    Int32[] areasSoporte = new Int32[6];
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
            Label28.Text = datos[4];
            TextBox5.Text = datos[5];

            show_nivel_0();
            show_nivel_1_HSE();
            show_areas_soporte();

        }
        catch (SqlException)
        {
            Label24.Text = "ERROR";
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
        Response.Redirect("nivel1qa.aspx");
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

            for (int i = 0; i < 6; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    areasSoporte[i] = Int32.Parse(CheckBoxList1.Items[i].Value);
                }
            }

            ManejadorCambio miManejador = new ManejadorCambio();
            miManejador.pasarQANDos(TextBoxComentario.Text, Int32.Parse(Label25.Text), areasSoporte);

            Label24.Text = "Dato Insertado!!!";
            Button7.Visible = false;
            Button8.Visible = false;
            Button3.Visible = true;

        }catch(SqlException){

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
            miManejador.rechazarN1QA(TextBoxComentario.Text, Int32.Parse(Label25.Text));

            /************* Llamada a la funcion para enviar mail a Admin ****/

            miManejador.rechazadoCambio(miManejador.getMailAdmin(),usuarioSesion.Text, Label25.Text);

            /***************************************/

            Label24.Text = "Datos Actualizador";
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
        Response.Redirect("nivel1qa.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN1_QA.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }

    public void show_nivel_0()
    {

        try
        {

            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource1.SelectCommand = "SELECT [COMENTARIOS] FROM [NIVEL0] WHERE ([CAMBIO_ID] = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_nivel_1_HSE()
    {

        try
        {

            SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource2.SelectCommand = "SELECT [COMENTARIOS] FROM [NIVEL1_HSE] WHERE ([CAMBIO_ID] = " + Session["cambioID"].ToString() + ")";

        }
        catch (Exception)
        {

        }

    }

    public void show_areas_soporte()
    {

        try
        {

            SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource2.SelectCommand = "SELECT [AREA_SOPORTE_ID], [NOMBRE_AREA_SOPORTE] FROM [AREAS_SOPORTE]";

        }
        catch (Exception)
        {

        }

    }

}
