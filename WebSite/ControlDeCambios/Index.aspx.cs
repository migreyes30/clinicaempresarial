
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page 
{    

    String usuario;
    String perfil;
    String correo_sesion;
    String user_principal;
    SqlConnection thisConnection;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
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
            thisCommand.CommandText = "select nombre_usuario, correo_usuario, contrasena_usuario, perfil_usuario,principal from usuario where correo_usuario = '" + user + "'";
            SqlDataReader thisReader = thisCommand.ExecuteReader();

            if (thisReader.Read())
            {

                if (pass == thisReader["contrasena_usuario"].ToString())
                {
                    usuario = thisReader["nombre_usuario"].ToString();
                    perfil = thisReader["perfil_usuario"].ToString();
                    correo_sesion = thisReader["correo_usuario"].ToString();
                    user_principal = thisReader["principal"].ToString();
                    correcto = true;
                }
            }
            
            thisConnection.Close();

            if (correcto)
            {
                ManejadorCambio miManejadorMail = new ManejadorCambio();
                String depto = "Administrador";
                statusConnection.Text = usuario;
                Session["user"] = usuario;
                Session["correo"] = correo_sesion;
                Session["perfil"] = perfil;
                Session["userPrincipal"] = user_principal;
                if(miManejadorMail.getDepto(correo_sesion).Equals("")){
                    Session["depto"] = depto;
                }else{
                    Session["depto"] = miManejadorMail.getDepto(correo_sesion);
                }
                switch (perfil)
                {
                    case "admin":
                        Response.Redirect("admin/reporte.aspx");
                    break;

                    case "n0":
                        Response.Redirect("nivel0/nivel0.aspx");
                    break;

                    case "n1hse":
                        Response.Redirect("nivel1hse/nivel1hse.aspx");
                    break;

                    case "n1qa":
                        Response.Redirect("nivelqa/nivel1qa.aspx");
                    break;

                    case "n2":
                        Response.Redirect("nivel2/nivel2.aspx");
                    break;

                    case "backup":
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
