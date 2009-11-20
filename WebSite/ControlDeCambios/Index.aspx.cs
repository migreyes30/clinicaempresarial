using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{    

    String usuario;
    String perfil;
    SqlConnection thisConnection;

    protected void Page_Load(object sender, EventArgs e)
    {

        
        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        login(user.Text, pass.Text);        
    }



    //**************************** M E T O D O S ****************************


    public void login(String user, String pass)
    {
        Boolean correcto = false;        

        try
        {

            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "select nombre_usuario, correo_usuario, contrasena_usuario, perfil_usuario from usuario where correo_usuario = '" + user + "'";
            SqlDataReader thisReader = thisCommand.ExecuteReader();

            if (thisReader.Read())
            {

                if (pass == thisReader["contrasena_usuario"].ToString())
                {
                    usuario = thisReader["nombre_usuario"].ToString();
                    perfil = thisReader["perfil_usuario"].ToString();
                    correcto = true;
                }
            }
            
            thisConnection.Close();

            if (correcto)
            {
                statusConnection.Text = usuario;
                switch (perfil)
                {
                    case "admin":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("admin/reporte.aspx");
                    break;

                    case "n0":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("nivel0/nivel0.aspx");
                    break;

                    case "n1hse":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("nivel1hse/nivel1hse.aspx");
                    break;

                    case "n1qa":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("nivelqa/nivel1qa.aspx");
                    break;

                    case "n2":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("nivel2/nivel2.aspx");
                    break;

                    case "backup":
                        Session["user"] = usuario;
                        Session["perfil"] = perfil;
                        Response.Redirect("backup.aspx");
                    break;
                }
            }
            else
            {
                statusConnection.Text = "Usuario y/o Contraseña Inválidos";
            }

        }
        catch (SqlException e)
        {
            statusConnection.Text = e.Message;
        }

    }


}
