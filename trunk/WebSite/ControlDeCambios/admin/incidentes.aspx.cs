using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class admin_incidentes : System.Web.UI.Page
{
    SqlConnection thisConnection;
    //SqlCommand thisCommand;

//    SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();        

        //thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
        thisConnection.Open();

        if (Session["cambioAceptado"].Equals(false))
        {
            Button7.Visible = false;
            Button8.Visible = true;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        //thisConnection.Close();
        Response.Redirect("../index.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Response.Redirect("reporte.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("cambios.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Response.Redirect("lista.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("incidentes.aspx");        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Response.Redirect("usuarios.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["cambioAceptado"].Equals(true))
            {
                CultureInfo MyCultureInfo = new CultureInfo("es-MX");
                DateTime MyDateTime = DateTime.Parse(TextBox2.Text, MyCultureInfo);
                CultureInfo culture = new CultureInfo("en-US");
                SqlCommand insertando = new SqlCommand("INSERT INTO INCIDENTES  (NOMBRE_INCIDENTE, DESCRIPCION_INCIDENTE, FECHA_INCIDENTE, AREA_ID)" +
                "VALUES ('" + TextBox1.Text + "', '" + TextBox3.Text + "', '" + MyDateTime.ToString("d", culture) + "', '" + DropDownList2.SelectedValue + "')", thisConnection);
                
                insertando.ExecuteNonQuery();
                Label11.Text = "Dato Insertado!!!";
                //thisConnection.Close();
                Session["cambioAceptado"] = false;
                Button7.Visible = false;
                Button8.Visible = true;
            }
            else
            {
                throw new System.ArgumentException("* El incidente ya ha sido incertado");
            }
        
        }
        catch (SqlException)
        {         
   
            //Response.Redirect("cambios.aspx");
            Label11.Text = "Error con la base de datos";
        }
        catch (Exception)
        {
            // Asignar mensaje de error
            Label11.Text = "* El incidente ya ha sido incertado";
            // Asignar color al mensaje de error
            Label11.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        //thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("incidentes.aspx");
    }
}
