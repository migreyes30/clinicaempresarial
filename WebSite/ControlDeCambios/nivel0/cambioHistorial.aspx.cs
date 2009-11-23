﻿using System;
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


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();
        Label25.Text = Request.QueryString["cambioID"];
        Label31.Text = Request.QueryString["cambioID"];
        Session["cambioID"] = Request.QueryString["cambioID"];

        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select estado_cambio from cambio where cambio_id = '"+ Label25.Text +"'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            Label26.Text = thisReader["estado_cambio"].ToString();
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
        Response.Redirect("../index.aspx");

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN0.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }
}