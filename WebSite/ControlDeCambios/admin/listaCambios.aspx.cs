﻿using System;
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

    public String[] datos;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();
        show_cambios();
        Label25.Text = Request.QueryString["cambioID"];
        Session["cambioID"] = Request.QueryString["cambioID"];
        
        try
        {
            ManejadorCambio miManejador = new ManejadorCambio();
            datos = miManejador.listaCambiosAdmin(Int32.Parse(Label25.Text));

            TextBox1.Text = datos[0];
            Label26.Text  = datos[1];
            TextBox3.Text = datos[2];
            TextBox4.Text = datos[3];
            TextBox5.Text = datos[4];
            TextBox6.Text = datos[5];
            TextBox7.Text = datos[6];
            TextBox8.Text = datos[7];
            Label39.Text  = datos[8];

        }
        catch (SqlException)
        {
            Label26.Text = "ERROR";
        }

        


    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel0.aspx");
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
        Response.Write("<script type='text/javascript'>window.open('imagenCambio.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }

    protected void show_cambios()
    {

        SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;


        SqlDataSource3.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource3.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;


        SqlDataSource4.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource4.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;


        SqlDataSource5.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource5.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;


    }

}
