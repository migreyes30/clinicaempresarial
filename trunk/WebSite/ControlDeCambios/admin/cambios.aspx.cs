using System;
using System.Collections.Generic;


using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cambios : System.Web.UI.Page
{

    SqlConnection thisConnection;
    SqlCommand thisCommand;
    int folio;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();        


        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select max(CAMBIO_ID) as Last from CAMBIO";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            folio = (int)thisReader["Last"]+1;
            Label22.Text = "0000"+folio.ToString();
        }

        thisReader.Close();

        //thisConnection.Close();

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
        Response.Redirect("reporte.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("lista.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("incidentes.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("usuarios.aspx");
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
            SqlCommand insertando = new SqlCommand("INSERT INTO CAMBIO  (CAMBIO_ID, NOMBRE_CAMBIO, TIPO_CAMBIO, AREA_ID, FECHA_RECEPCION, FECHA_APROBACION, FECHA_REALIZACION, ESTADO_CAMBIO, ARCHIVO)" +
            "VALUES ('"+(folio)+"', '" + TextBox1.Text + "', '" + DropDownList1.SelectedItem + "', '" + DropDownList5.SelectedValue + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', 'Pendiente', '" + FileUpload1 + "')", thisConnection);
            insertando.ExecuteNonQuery();
            Label24.Text = "Dato Insertado!!!";

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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
