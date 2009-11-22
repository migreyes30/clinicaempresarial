using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_usuarios : System.Web.UI.Page
{
    SqlConnection thisConnection;
    SqlCommand thisCommand;
    int user1 = 0, user2 = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("../index.aspx");
        }
        usuarioSesion.Text = Session["user"].ToString();

        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();
//        administradores();

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["perfil"] = null;
        thisConnection.Close();
        Response.Redirect("../index.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList4.SelectedValue.Equals("0"))
        {
            Label11.Text = "Usuario Principal";
            Label12.Text = "Usuario BackUp";
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false;
            DropDownList5.Enabled = false;
            
            administradores();
            
        }else
            if (DropDownList4.SelectedValue.Equals("1"))
            {
                Label11.Text = "Usuario Principal";
                Label12.Text = "Usuario BackUp";
                DropDownList3.Enabled = false;                
                DropDownList2.Enabled = true;
                DropDownList5.Enabled = false;

                nivel0();
                
            }else
                if (DropDownList4.SelectedValue.Equals("2"))
                {

                    Label11.Text = "Usuario Principal";
                    Label12.Text = "Usuario BackUp";               
                    DropDownList5.Enabled = true;                    
                    DropDownList2.Enabled = false;
                    DropDownList3.Enabled = false;

                    nivel1HSE();                    

                }
                else
                    if (DropDownList4.SelectedValue.Equals("3"))
                    {
                        Label11.Text = "Usuario Principal";
                        Label12.Text = "Usuario BackUp";
                        DropDownList2.Enabled = false;
                        DropDownList3.Enabled = true;
                        DropDownList5.Enabled = false;
                        nivel2a();

                    }
                    else
                    {
                        TextBox8.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";

                        TextBox9.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";

                        DropDownList2.Enabled = false;
                        DropDownList3.Enabled = false;
                        DropDownList5.Enabled = false;
                    }
        
    }


    public void nivel0()
    {
        int responsable = 0, backup = 0;

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT RESPONSABLE_ID, BACKUP_ID FROM DEPARTAMENTO WHERE DEPTO_ID = '" + DropDownList2.SelectedValue + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            responsable = (int)thisReader["RESPONSABLE_ID"];
            backup = (int)thisReader["BACKUP_ID"];

            TextBox8.Text = responsable.ToString();
            TextBox9.Text = backup.ToString();

        }

        if (responsable != 0)
        {
            thisReader.Close();
            thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE USUARIO_ID = '" + responsable + "'";
            thisReader = thisCommand.ExecuteReader();

            if (thisReader.Read())
            {
                TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
                TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
                TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
            }
            else
            {
                TextBox2.Text = "No hay usuario";
            }

        }

        if (backup != 0)
        {
            thisReader.Close();
            thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE USUARIO_ID = '" + backup + "'";
            thisReader = thisCommand.ExecuteReader();


            if (thisReader.Read())
            {
                TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
                TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
                TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();

            }
            else
            {
                TextBox5.Text = "No hay usuario";
            }

        }

        thisReader.Close();

    }

    public void nivel1HSE()
    {
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1hse' and PRINCIPAL = 'True'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            TextBox8.Text = thisReader["USUARIO_ID"].ToString();
            TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox8.Text = "";
            TextBox2.Text = "No hay usuario";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        
        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1hse' and PRINCIPAL = 'False'";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            TextBox9.Text = thisReader["USUARIO_ID"].ToString();
            TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox9.Text = "";
            TextBox5.Text = "No hay usuario";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        thisReader.Close();           

    }


    public void nivel1QA()
    {
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1qa' and PRINCIPAL = 'True'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            TextBox8.Text = thisReader["USUARIO_ID"].ToString();
            TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox8.Text = "";
            TextBox2.Text = "No hay usuario";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1qa' and PRINCIPAL = 'False'";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            TextBox9.Text = thisReader["USUARIO_ID"].ToString();
            TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox9.Text = "";
            TextBox5.Text = "No hay usuario";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        thisReader.Close();

    }
    
    
    public void nivel2()
    {
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'admin'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            user1 = (int)thisReader["USUARIO_ID"];
            TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox2.Text = "No hay usuario";
        }

        if (thisReader.Read())
        {
            user2 = (int)thisReader["USUARIO_ID"];
            TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox5.Text = "No hay usario";
        }

        thisReader.Close();
    }
    

    public void administradores()
    {
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT USUARIO_ID, NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'admin'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {            
            TextBox8.Text = thisReader["USUARIO_ID"].ToString();
            TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox8.Text = "";
            TextBox2.Text = "No hay usuario";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        if (thisReader.Read())
        {
            TextBox9.Text = thisReader["USUARIO_ID"].ToString();
            TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
            TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
            TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();
        }
        else
        {
            TextBox9.Text = "";
            TextBox5.Text = "No hay usario";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        thisReader.Close();        
    }



    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        nivel0();
    }




    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        



    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        nivel2a();
    }

    public void nivel2a()
    {

        int responsable = 0, backup = 0;

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT REPONSABLE_ID, BACKUP_ID FROM AREAS_SOPORTE WHERE AREA_SOPORTE_ID = '" + DropDownList3.SelectedValue + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            responsable = (int)thisReader["REPONSABLE_ID"];
            backup = (int)thisReader["BACKUP_ID"];
            TextBox8.Text = responsable.ToString();
            TextBox9.Text = backup.ToString();
        }

        if (responsable != 0)
        {
            thisReader.Close();
            thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE USUARIO_ID = '" + responsable + "'";
            thisReader = thisCommand.ExecuteReader();

            if (thisReader.Read())
            {
                TextBox2.Text = thisReader["NOMBRE_USUARIO"].ToString();
                TextBox3.Text = thisReader["CORREO_USUARIO"].ToString();
                TextBox4.Text = thisReader["CONTRASENA_USUARIO"].ToString();
            }
            else
            {
                TextBox8.Text = "";
                TextBox2.Text = "No hay usuario";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }

        }

        if (backup != 0)
        {
            thisReader.Close();
            thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT NOMBRE_USUARIO, CORREO_USUARIO, CONTRASENA_USUARIO FROM USUARIO WHERE USUARIO_ID = '" + backup + "'";
            thisReader = thisCommand.ExecuteReader();


            if (thisReader.Read())
            {
                TextBox5.Text = thisReader["NOMBRE_USUARIO"].ToString();
                TextBox6.Text = thisReader["CORREO_USUARIO"].ToString();
                TextBox7.Text = thisReader["CONTRASENA_USUARIO"].ToString();

            }
            else
            {
                TextBox9.Text = "";
                TextBox5.Text = "No hay usario";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }

        }

        thisReader.Close();


    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlCommand updateUser;

        if(!TextBox8.Text.Equals(""))
        {
            updateUser = new SqlCommand("UPDATE USUARIO set NOMBRE_USUARIO = '" + TextBox2.Text + "', CORREO_USUARIO = '" + TextBox3.Text + "', CONTRASENA_USUARIO = '" + TextBox4.Text + "'  WHERE USUARIO_ID = '" + Int32.Parse(TextBox8.Text) + "'", thisConnection);
            updateUser.ExecuteNonQuery();
        }

        if (!TextBox9.Text.Equals(""))
        {
            updateUser = new SqlCommand("UPDATE USUARIO set NOMBRE_USUARIO = '" + TextBox5.Text + "', CORREO_USUARIO = '" + TextBox6.Text + "', CONTRASENA_USUARIO = '" + TextBox7.Text + "'  WHERE USUARIO_ID = '" + Int32.Parse(TextBox9.Text) + "'", thisConnection);
            updateUser.ExecuteNonQuery();
        }

        Label19.Text = "Datos Actualizados";
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedValue.Equals("1"))
        {
            nivel1HSE();
        }
        else
        {
            nivel1QA();
        }
    }
}
