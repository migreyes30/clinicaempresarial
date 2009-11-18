﻿using System;
using System.Collections.Generic;


using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cambios : System.Web.UI.Page
{

    SqlConnection thisConnection;
    SqlCommand thisCommand;
    Int32 folio;
    Int32[] areasSoporte = new Int32[6];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();


        Label25.Text = Request.QueryString["cambioID"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        Response.Redirect("../index.aspx");
        thisConnection.Close();

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel1hse.aspx");
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
            miManejador.pasarHSENDos(TextBoxComentario.Text, Int32.Parse(Label25.Text), areasSoporte);

            Label24.Text = "Dato Insertado!!!";

        }catch(SqlException){

            Response.Redirect("cambios.aspx");
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
            miManejador.rechazarN1HSE(TextBoxComentario.Text, Int32.Parse(Label25.Text));

            Label24.Text = "Dato Insertado!!!";

        }
        catch (SqlException)
        {

            //Response.Redirect("cambios.aspx");
            Label24.Text = "Error con la base de datos";

        }

    }
}