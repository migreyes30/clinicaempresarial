using System;
using System.Collections.Generic;


using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cambios : System.Web.UI.Page
{
    public String[] aaaaa;

    public void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        
        Label25.Text = Request.QueryString["cambioID"];
        

        try
        {

//            String[] aaaaa;

            ManejadorCambio miManejador = new ManejadorCambio();



            aaaaa = miManejador.cambiosDatos(Int32.Parse(Label25.Text));

            Label26.Text = aaaaa[0];
            Label27.Text = aaaaa[1];
            Label28.Text = aaaaa[2];
            Label29.Text = aaaaa[3];
            Label30.Text = aaaaa[4];

            //Image2.ImageUrl = "C:\\cambios_file\\" + aaaaa[4];


            //Label24.Text = "Dato Insertado!!!";

        }catch(SqlException){

         //   Response.Redirect("cambios.aspx");
            Label24.Text = "Error con la base de datos para cargar datos";

        }        

            //Int32.Parse(Session["cambioID"].ToString());


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;        
        Response.Redirect("../index.aspx");
        

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("nivel0.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("historial.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        
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
            ManejadorCambio miManejador = new ManejadorCambio();
            miManejador.pasarNUno(TextBoxComentario.Text, Int32.Parse(Label25.Text));
            Label24.Text = "Dato Insertado!!!";

        }catch(SqlException){

         //   Response.Redirect("cambios.aspx");
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
            miManejador.rechazarNCero(TextBoxComentario.Text, Int32.Parse(Label25.Text));
            Label24.Text = "Se ha rechazado correctamente";

        }
        catch (SqlException)
        {

            //Response.Redirect("cambios.aspx");
            Label24.Text = "Error con la base de datos";

        }

    }
    protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
    {

    }
}
