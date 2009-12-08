using System;
using System.Collections.Generic;


using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


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


        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
        thisConnection.Open();


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select max(CAMBIO_ID) as Last from CAMBIO";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            folio = (int)thisReader["Last"]+1;
            Label22.Text = folio.ToString();
            Session["folio"] = folio;
            selectDeptos();
        }

        if (Session["cambioAceptado"].Equals(false))
        {
            Button7.Visible = false;
            Button8.Visible = true;
        }

        thisReader.Close();

        thisConnection.Close();

       

    }

    public void selectDeptos()
    {

        try
        {

            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

            SqlDataSource1.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

            SqlDataSource1.SelectCommand = "SELECT [DEPTO_ID], [NOMBRE_DEPTO] FROM [DEPARTAMENTO]";

        }
        catch (Exception)
        {

        }

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
        thisConnection.Close();
        Response.Redirect("reporte.aspx");        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Session["cambioAceptado"] = true;
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
        Session["cambioAceptado"] = true;
        Response.Redirect("incidentes.aspx");        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Response.Redirect("usuarios.aspx");        
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ConnectionString;

        SqlDataSource2.ProviderName = ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ProviderName;

        SqlDataSource2.SelectCommand = "SELECT [AREA_ID], [NOMBRE_AREA], [DEPTO_ID] FROM [AREA] WHERE ([DEPTO_ID] =" + DropDownList4.SelectedValue + ")";

        Label24.Text = "";

    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        /****/
        try
        {

            // validar que sea una imagen el archivo seleccionado
            if (Session["cambioAceptado"].Equals(true))
            {

                if (FileUpload1.PostedFile.ContentType.StartsWith("image"))
                {
                    // Obtener el nombre de la Imagen enviada para observar el detalle del cambio

                    byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                    HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                    uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);

                    string extension_file = FileUpload1.FileName.Split('.').GetValue(1).ToString();
                    string file_system_name = folio + "." + extension_file;

                    ManejadorCambio miManejador = new ManejadorCambio();
                    String fechaCambio = DropDownList6.SelectedValue + "/" + DropDownList7.SelectedValue
                           + "/" + DropDownList8.SelectedValue;
                    miManejador.pasarNCero(folio, TextBox1.Text, DropDownList1.SelectedItem.Value, DropDownList5.SelectedValue, fechaCambio, file_system_name, imageSize);

                    Label24.Text = "Dato Insertado!!!";
                    // Asignar color al mensaje de exito
                    Label24.ForeColor = System.Drawing.Color.Blue;

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "clientscript", "document.getElementById('imageDiv').style.visibility = 'visible';", true);
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "clientscript", "document.getElementById('Button7').Enable = 'visible';", true);
                    Button7.Visible = false;
                    Button8.Visible = true;
                    Session["cambioAceptado"] = false;

                    /*********    ENVIANDO EMAIL    *************
                                        
                        miManejador.nuevoCambio(miManejador.getMailUser(DropDownList4.SelectedValue));

                    /********************************************/

                }
                else
                {
                    // Exception lanzada por error en tipo de archivo
                    throw new System.ArgumentException("* El Archivo enviado debe ser una imagen de la hoja del cambio");
                }
            }
            else
            {
                throw new System.ArgumentException("* El cambio ya ha sido agregado");
            }
        }
        catch (SqlException)
        {

            Label24.Text = "* Error con la base de datos";
            // Asignar color al mensaje de error
            Label24.ForeColor = System.Drawing.Color.Red;

        }
        // capturar el error por subir un archivo que no es imagen
        catch (ArgumentException e1)
        {
            // Asignar mensaje de error
            Label24.Text = "* Error con servidor";
            // Asignar color al mensaje de error
            Label24.ForeColor = System.Drawing.Color.Red;

        }
        catch (FormatException)
        {
            // Asignar mensaje de error
            Label24.Text = "* La fecha no es valida";
            // Asignar color al mensaje de error
            Label24.ForeColor = System.Drawing.Color.Red;
        }
        catch (Exception)
        {
            // Asignar mensaje de error
            Label24.Text = "* Error al guardar archivo en el servidor";
            // Asignar color al mensaje de error
            Label24.ForeColor = System.Drawing.Color.Red;
        }

        /****/
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        thisConnection.Close();
        Session["cambioAceptado"] = true;
        Response.Redirect("cambios.aspx");
    }

    protected void reset_Error_Message(object sender, EventArgs e)
    {
        Label24.Text = "";
    }

}
