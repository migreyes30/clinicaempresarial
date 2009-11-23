using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{

    SqlConnection thisConnection;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();

        asignacionValores();
                                   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Session["user"] = null;
        Session["perfil"]=null;
        Response.Redirect("../index.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("cambios.aspx");
    }

    protected void ligaAreas()
    {
        Session["cambioAceptado"] = true;
        Response.Redirect("cambios.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        asignacionValores();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("lista.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("incidentes.aspx");  
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("usuarios.aspx");
        thisConnection.Close();
    }

    public void asignacionValores()
    {

        int totalCambios = 0;
        int[] deptos = new int[10];

        SqlCommand thisCommand;
        SqlDataReader thisReader;


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select depto_id from departamento";
        thisReader = thisCommand.ExecuteReader();


        int i = 0;
        while (thisReader.Read())
        {
            deptos[i] = (int)thisReader["depto_id"];
            i++;
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[0] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label30.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label30.Text = "0";
        }        
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[1] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label31.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label31.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[2] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label32.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label32.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[3] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label33.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label33.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[4] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label34.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label34.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[5] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label35.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label35.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[6] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label36.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label36.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[7] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label37.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label37.Text = "0";
        }
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS Tot, DEPARTAMENTO.DEPTO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE      (DEPARTAMENTO.DEPTO_ID = '" + deptos[8] + "') AND (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + TextBox1.Text + "', 102)) AND (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + TextBox2.Text + "', 102)) GROUP BY DEPARTAMENTO.DEPTO_ID";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalCambios += (int)thisReader["Tot"];
            Label38.Text = thisReader["Tot"].ToString();
        }
        else
        {
            Label38.Text = "0";
        }
        thisReader.Close();

    }
}
