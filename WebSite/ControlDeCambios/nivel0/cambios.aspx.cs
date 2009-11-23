using System;
using System.Collections.Generic;


using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cambios : System.Web.UI.Page
{
    public String[] datos;
    public String deptoId;
    public String cambioNombre;

    public void Page_Load(object sender, EventArgs e)
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

//            String[] aaaaa;

            ManejadorCambio miManejador = new ManejadorCambio();



            datos = miManejador.cambiosDatos(Int32.Parse(Label25.Text));

            

            cambioNombre = datos[0];


            TextBox1.Text = datos[0];
            TextBox2.Text = datos[1];
            TextBox3.Text = datos[2];
            TextBox4.Text = datos[3];

            Label35.Text = datos[4];

            deptoId = datos[4];


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
        Response.Redirect("nivel0.aspx");
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
            Button7.Visible = false;
            Button8.Visible = false;
            Button3.Visible = true;

            /*SendEmail correo = new SendEmail();

            correo.NuevoCambio(miManejador.getMailQA(), cambioNombre);

            correo.NuevoCambio(miManejador.getMailHSE(), cambioNombre);*/
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
            miManejador.rechazarNCero(TextBoxComentario.Text, Int32.Parse(Label25.Text));
            Label24.Text = "Se ha rechazado correctamente";

            miManejador.mailRechazar();
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
    protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('imagenCambioN0.aspx?cambioID=" + Session["cambioID"] + "','_blank');</script>");
    }
}
