using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

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

        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());

        thisConnection.Open();

        DateTime inicio = DateTime.Parse("01/11/2008");
        DateTime fin = DateTime.Now.ToUniversalTime();

        asignacionValores(inicio, fin);
                                   
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
        DateTime inicio = DateTime.Parse("01/11/2009");
        DateTime fin = DateTime.Now.ToUniversalTime();
        if (!(DropDownList1.SelectedValue.Equals("00") || DropDownList2.Equals("00") ||
            DropDownList3.SelectedValue.Equals("00") || DropDownList4.Equals("00")))
        {
            inicio = DateTime.Parse("01/" + DropDownList1.SelectedValue + "/" + DropDownList2.SelectedValue);
            Int32 monthEnd = Int32.Parse(DropDownList3.SelectedValue);
            Int32 yearEnd = Int32.Parse(DropDownList4.SelectedValue);
            fin = DateTime.Parse(DateTime.DaysInMonth(yearEnd, monthEnd) + "/" + monthEnd + "/" + yearEnd);
        }
        
        asignacionValores(inicio, fin);
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

    public void asignacionValores(DateTime inicio, DateTime fin)
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
        CultureInfo culture = new CultureInfo("en-US");
        String querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Totales", false);
        SqlCommand checkArea = new SqlCommand(querie, thisConnection);
        SqlDataReader myReader = checkArea.ExecuteReader();

        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label30.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label31.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label32.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label33.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label34.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label35.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label36.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label37.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Pendiente", false);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label25.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label26.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label27.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label28.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label29.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label38.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label39.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label40.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Autorizado", false);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label41.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label42.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label43.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label44.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label45.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label46.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label47.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label48.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Rechazado", false);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label49.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label50.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label51.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label52.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label53.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label54.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label55.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label56.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Cerrado", false);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label57.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label58.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label59.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label60.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label61.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label62.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label63.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label64.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();


        querie = "SELECT DEPARTAMENTO.DEPTO_ID, COUNT(INCIDENTE_ID) AS CUENTA FROM DEPARTAMENTO "
            + "LEFT OUTER JOIN AREA ON  DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID "
            + "LEFT OUTER JOIN INCIDENTES ON AREA.AREA_ID = INCIDENTES.AREA_ID "
            + "AND (INCIDENTES.FECHA_INCIDENTE >= CONVERT(DATETIME, '" + inicio.ToString("d", culture) + "', 102)) "
            + "AND (INCIDENTES.FECHA_INCIDENTE <= CONVERT(DATETIME, '" + fin.ToString("d", culture) + "', 102)) " 
            + "GROUP BY DEPARTAMENTO.DEPTO_ID;";
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader["DEPTO_ID"].ToString().Equals("1")) Label65.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("3")) Label66.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("4")) Label67.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("5")) Label68.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("6")) Label69.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("7")) Label70.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("8")) Label71.Text = myReader["CUENTA"].ToString();
            if (myReader["DEPTO_ID"].ToString().Equals("9")) Label72.Text = myReader["CUENTA"].ToString();
        }
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Totales", true);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if(myReader.Read()) Label73.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Pendiente", true);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if (myReader.Read()) Label74.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Autorizado", true);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if (myReader.Read()) Label75.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Rechazado", true);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if (myReader.Read()) Label76.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        querie = construirQuierie(inicio.ToString("d", culture), fin.ToString("d", culture), "Cerrado", true);
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if (myReader.Read()) Label77.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        querie = "SELECT COUNT(INCIDENTE_ID) AS CUENTA FROM DEPARTAMENTO "
            + "LEFT OUTER JOIN AREA ON  DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID "
            + "LEFT OUTER JOIN INCIDENTES ON AREA.AREA_ID = INCIDENTES.AREA_ID "
            + "AND (INCIDENTES.FECHA_INCIDENTE >= CONVERT(DATETIME, '" + inicio.ToString("d", culture) + "', 102)) "
            + "AND (INCIDENTES.FECHA_INCIDENTE <= CONVERT(DATETIME, '" + fin.ToString("d", culture) + "', 102));";
            
        checkArea = new SqlCommand(querie, thisConnection);
        myReader = checkArea.ExecuteReader();
        if (myReader.Read()) Label78.Text = myReader["CUENTA"].ToString();
        myReader.Close();

        thisReader.Close();

    }

    public string construirQuierie(String inicio, String fin, String status, bool totales)
    {
        //Status debe de estar entre Totales, Pendiente, Autorizado, Rechazado y Cerrado
        String querie = "";
        if (totales)
        {
            querie = "SELECT ";
        }
        else
        {
            querie = "SELECT DEPARTAMENTO.DEPTO_ID, ";
        }


        querie += "COUNT(CAMBIO_ID) AS CUENTA FROM DEPARTAMENTO "
             + " LEFT OUTER JOIN AREA ON  DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID "
             + " LEFT OUTER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID AND "
             + " (CAMBIO.FECHA_RECEPCION <= CONVERT(DATETIME, '" + fin + "', 102)) AND "
             + " (CAMBIO.FECHA_RECEPCION >= CONVERT(DATETIME, '" + inicio + "', 102)) ";


        if (status.Equals("Pendiente")) querie += " AND CAMBIO.ESTADO_CAMBIO LIKE 'Pendiente' ";
        if (status.Equals("Autorizado"))
        {
            querie += " AND CAMBIO.ESTADO_CAMBIO LIKE 'Autorizado' "
                + " AND (CAMBIO.FECHA_REALIZACION >= CURRENT_TIMESTAMP) " ;
        }

        if (status.Equals("Rechazado")) querie += " AND CAMBIO.ESTADO_CAMBIO LIKE 'Rechazado' ";
        if (status.Equals("Cerrado"))
        {
            querie += " AND CAMBIO.ESTADO_CAMBIO LIKE 'Autorizado' "
                + " AND (CAMBIO.FECHA_REALIZACION < CURRENT_TIMESTAMP) ";
        }

        if (totales)
        {
            querie += ";";
        }
        else
        {
            querie += "GROUP BY DEPARTAMENTO.DEPTO_ID;";
        }
        return querie;
    }
}
