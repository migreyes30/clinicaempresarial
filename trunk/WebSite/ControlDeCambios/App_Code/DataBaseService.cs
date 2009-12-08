using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DataBaseService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class DataBaseService : System.Web.Services.WebService {

    String juanelo;

    public DataBaseService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public void connection()
    {

        
    }

    [WebMethod]
    public String login(String user, String pass)
    {


        Boolean correcto = false;
        String userName = "";        
        

        try
        {
            SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
            thisConnection.Open();
            
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "select nombre_usuario, correo_usuario, contrasena_usuario, perfil_usuario from usuario where correo_usuario = '" + user + "'";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            
            if (thisReader.Read())
            {

                if (pass == thisReader["contrasena_usuario"].ToString())
                {
                    userName = thisReader["nombre_usuario"].ToString();
                    correcto = true;
                }

            }

            thisReader.Close();             
            thisConnection.Close();

            if (correcto)
            {                
                return userName;
            }
            else
            {
                return "Usuario y/o Contraseña Inválidos";
            }

        }
        catch (SqlException e)
        {            
            return e.Message;
        }    


    }

    

}

