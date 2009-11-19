using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_incidentes : System.Web.UI.Page
{
    SqlConnection thisConnection;
    SqlCommand thisCommand;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();        

        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        thisConnection.Close();
        Response.Redirect("../index.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("reporte.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("cambios.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("lista.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("incidentes.aspx");        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("usuarios.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand insertando = new SqlCommand("INSERT INTO INCIDENTES  (NOMBRE_INCIDENTE, DESCRIPCION_INCIDENTE, FECHA_INCIDENTE, AREA_ID)" +
            "VALUES ('"+TextBox1.Text+"', '"+TextBox3.Text+"', '"+TextBox2.Text+"', '" + DropDownList2.SelectedValue + "')", thisConnection);
            //"VALUES ('aaa','bbb','12/12/09','6')", thisConnection);
            insertando.ExecuteNonQuery();
            Label11.Text = "Dato Insertado!!!";
            thisConnection.Close();
        
        }
        catch (SqlException)
        {         
   
            //Response.Redirect("cambios.aspx");
            Label11.Text = "Error con la base de datos";
        }
    }
}
