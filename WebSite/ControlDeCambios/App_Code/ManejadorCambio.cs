using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Configuration;

/// <summary>
/// Summary description for ManejadorCambio
/// </summary>
public class ManejadorCambio
{
    SqlConnection thisConnection;
    SqlCommand thisCommand;
    String mail;


    public ManejadorCambio()
	{

        thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
        thisConnection.Open();
        //thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");        

	}

    public void mailRechazar()
    {
        
    }

    public String getMailNivel2(String area_soporte)
    {

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT (SELECT CORREO_USUARIO FROM USUARIO WHERE USUARIO_ID = REPONSABLE_ID) AS CORREO FROM AREAS_SOPORTE WHERE AREA_SOPORTE_ID = '"+area_soporte+"'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        thisReader.Read();

        mail = thisReader["CORREO"].ToString();

        thisReader.Close();

        return mail;
    }


    public String getMailQA()
    {

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT CORREO_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1qa' and PRINCIPAL = 'True'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        thisReader.Read();

        mail = thisReader["CORREO_USUARIO"].ToString();

        thisReader.Close();

        return mail;

    }


    public String getMailHSE()
    {

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT CORREO_USUARIO FROM USUARIO WHERE PERFIL_USUARIO = 'n1hse' and PRINCIPAL = 'True'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        thisReader.Read();

        mail = thisReader["CORREO_USUARIO"].ToString();

        thisReader.Close();

        return mail;
        
    }


    public String getMailUser(String depto)
    {

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT (SELECT CORREO_USUARIO FROM USUARIO WHERE USUARIO_ID = RESPONSABLE_ID) AS CORREO FROM DEPARTAMENTO WHERE DEPTO_ID = '" + depto + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        thisReader.Read();

        mail = thisReader["CORREO"].ToString();

        thisReader.Close();

        return mail;


    }
/*
    public String[] historialCambiosDatos(int cambioId)
    {

    }
    */

    public String[] cambiosDatos(int cambioID)
    {
        String []campos = new String[6];

        SqlCommand thisCommand = thisConnection.CreateCommand();
        //thisCommand.CommandText = "select NOMBRE_CAMBIO, TIPO_CAMBIO, AREA.NOMBRE_AREA, NIVEL0.FECHA_ASIGNACION, ARCHIVO  from CAMBIO, NIVEL0,  AREA where CAMBIO.CAMBIO_ID = '" + cambioID + "' and CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID and AREA.AREA_ID = CAMBIO.AREA_ID;";
        thisCommand.CommandText = "SELECT     CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, AREA.NOMBRE_AREA, NIVEL0.FECHA_ASIGNACION, CAMBIO.ARCHIVO, AREA.DEPTO_ID FROM         CAMBIO INNER JOIN NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID INNER JOIN AREA ON CAMBIO.AREA_ID = AREA.AREA_ID WHERE     (CAMBIO.CAMBIO_ID = '"+cambioID+"')";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if(thisReader.Read())
        {
            campos[0] = thisReader["NOMBRE_CAMBIO"].ToString();
            campos[1] = thisReader["TIPO_CAMBIO"].ToString();
            campos[2] = thisReader["NOMBRE_AREA"].ToString();
            campos[3] = thisReader["FECHA_ASIGNACION"].ToString();
            campos[4] = thisReader["ARCHIVO"].ToString();
            campos[5] = thisReader["DEPTO_ID"].ToString();
        }

        thisReader.Close();

        return campos;
    }


    public String[] listaCambiosAdmin(int cambioID)
    {
        String[] campos = new String[9];

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT     CAMBIO.NOMBRE_CAMBIO, CAMBIO.ESTADO_CAMBIO, CAMBIO.TIPO_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, CAMBIO.FECHA_APROBACION, CAMBIO.FECHA_RECEPCION, CAMBIO.FECHA_REALIZACION, CAMBIO.ARCHIVO, CAMBIO.CAMBIO_ID FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE     (CAMBIO.CAMBIO_ID = '"+ cambioID +"')";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            campos[0] = thisReader["NOMBRE_CAMBIO"].ToString();
            campos[1] = thisReader["ESTADO_CAMBIO"].ToString();
            campos[2] = thisReader["TIPO_CAMBIO"].ToString();
            campos[3] = thisReader["NOMBRE_DEPTO"].ToString();
            campos[4] = thisReader["NOMBRE_AREA"].ToString();
            campos[5] = thisReader["FECHA_APROBACION"].ToString();
            campos[6] = thisReader["FECHA_RECEPCION"].ToString();
            campos[7] = thisReader["FECHA_REALIZACION"].ToString();
            campos[8] = thisReader["ARCHIVO"].ToString();
            
        }

        thisReader.Close();

        return campos;
    }
    /*
    public String[] cambiosN2(int cambioID)
    {
        
    }
    */
    public String[] cambiosQA(int cambioID)
    {
        String[] campos = new String[6];
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT     CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, CAMBIO.ARCHIVO, CAMBIO.CAMBIO_ID, NIVEL1_QA.FECHA_ASIGNACION FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID INNER JOIN NIVEL1_QA ON AREA.AREA_ID = NIVEL1_QA.AREA_ID AND CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID WHERE     (CAMBIO.CAMBIO_ID = '" + cambioID + "')";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            campos[0] = thisReader["NOMBRE_CAMBIO"].ToString();
            campos[1] = thisReader["TIPO_CAMBIO"].ToString();
            campos[2] = thisReader["NOMBRE_DEPTO"].ToString();
            campos[3] = thisReader["NOMBRE_AREA"].ToString();
            campos[4] = thisReader["ARCHIVO"].ToString();
            campos[5] = thisReader["FECHA_ASIGNACION"].ToString();
        }

        thisReader.Close();

        return campos;
    }



    public String[] cambiosHSE(int cambioID)
    {
        String[] campos = new String[6];

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT     CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, CAMBIO.ARCHIVO, CAMBIO.CAMBIO_ID, NIVEL1_HSE.FECHA_ASIGNACION FROM         AREA INNER JOIN CAMBIO ON AREA.AREA_ID = CAMBIO.AREA_ID INNER JOIN DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID INNER JOIN NIVEL1_HSE ON AREA.AREA_ID = NIVEL1_HSE.AREA_ID AND CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID WHERE     (CAMBIO.CAMBIO_ID = '"+ cambioID +"')";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            campos[0] = thisReader["NOMBRE_CAMBIO"].ToString();
            campos[1] = thisReader["TIPO_CAMBIO"].ToString();
            campos[2] = thisReader["NOMBRE_DEPTO"].ToString();
            campos[3] = thisReader["NOMBRE_AREA"].ToString();
            campos[4] = thisReader["ARCHIVO"].ToString();
            campos[5] = thisReader["FECHA_ASIGNACION"].ToString();            
        }

        thisReader.Close();

        return campos;
    }



      public void pasarNCero(int folio, String nombreCambio, String tipoCambio, String areaID, String fechaRealizacion, String fileUpload1, byte[] imageFile)
      {
        CultureInfo MyCultureInfo = new CultureInfo("es-MX");
        DateTime MyDateTime = DateTime.Parse(fechaRealizacion, MyCultureInfo);
        CultureInfo culture = new CultureInfo("en-US");
        SqlCommand insertando = new SqlCommand("INSERT INTO CAMBIO  (CAMBIO_ID, NOMBRE_CAMBIO, TIPO_CAMBIO, AREA_ID, FECHA_RECEPCION, FECHA_REALIZACION, ESTADO_CAMBIO, ARCHIVO, ARCHIVO_CONTENT)" +
            "VALUES ('" + (folio) + "', '" + nombreCambio + "', '" + tipoCambio + "', '" + areaID + "', CURRENT_TIMESTAMP, '" + MyDateTime.ToString("d",culture) + "', 'Pendiente', '" + fileUpload1 + "',@Image)", thisConnection);

        SqlParameter UploadedImage = new SqlParameter("@Image", SqlDbType.Image, imageFile.Length);
        UploadedImage.Value = imageFile;
        insertando.Parameters.Add(UploadedImage);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("INSERT INTO NIVEL0 (CAMBIO_ID, STATUS, AREA_ID, FECHA_ASIGNACION)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', CURRENT_TIMESTAMP)", thisConnection);
        insertando.ExecuteNonQuery();
        

        /********/

        insertando = new SqlCommand("INSERT INTO NIVEL1_HSE (CAMBIO_ID, STATUS, AREA_ID, NIVEL2, N1HSE_ACEPTADO, LIBERAR_CAMBIO)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', 'False', 'False', 'False')", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("INSERT INTO NIVEL1_QA (CAMBIO_ID, STATUS, AREA_ID, NIVEL2, N1QA_ACEPTADO, LIBERAR_CAMBIO)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', 'False', 'False', 'False')", thisConnection);
        insertando.ExecuteNonQuery();


        insertando = new SqlCommand("INSERT INTO NIVEL2_STATUS (CAMBIO_ID, STATUS, AREA_ID)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "')", thisConnection);
        insertando.ExecuteNonQuery();

        //*****************************************
        //mandarCorreo("jessyc48@yahoo.com", "jessyc48@yahoo.com", "mi prueba", "prueba");
        //*****************************************

    }

    public void pasarNUno(String comentarios, int cambioID)
    {
        int area = 0;

        SqlCommand insertando = new SqlCommand("UPDATE NIVEL0 set FECHA_APROBACION = CURRENT_TIMESTAMP,"
            + " COMENTARIOS = '" + comentarios + "', STATUS = 'Autorizado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
          insertando.ExecuteNonQuery();

        //************************************************************************s
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT AREA_ID FROM CAMBIO WHERE CAMBIO_ID = '" + cambioID + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        thisReader.Read();
        area = (int)thisReader["AREA_ID"];
        thisReader.Close();
        //***************************************************************************

        insertando = new SqlCommand("UPDATE NIVEL1_HSE set FECHA_ASIGNACION = CURRENT_TIMESTAMP, N1HSE_ACEPTADO = 'True' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL1_QA set FECHA_ASIGNACION = CURRENT_TIMESTAMP, N1QA_ACEPTADO = 'True' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();


        /*
        insertando = new SqlCommand("INSERT INTO NIVEL1_QA (STATUS, AREA_ID, FECHA_ASIGNACION, CAMBIO_ID, NIVEL2) "
              + "VALUES ( 'Pendiente', '"+ area +"', CURRENT_TIMESTAMP, '" + cambioID + "', 'False')", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("INSERT INTO NIVEL1_HSE (STATUS, AREA_ID, FECHA_ASIGNACION, CAMBIO_ID, NIVEL2) "
              + "VALUES ( 'Pendiente', '" + area + "', CURRENT_TIMESTAMP, '" + cambioID + "', 'False')", thisConnection);          
        insertando.ExecuteNonQuery();        
        */
    }

    public void pasarQANDos(String comentarios, int cambioID, Int32[] areas)
    {

        //if()
        SqlCommand insertandoLiberado;
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, " +
            " COMENTARIOS = '" + comentarios + "', NIVEL2 = 'True'  where CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
        SqlCommand insertAreas;
        SqlCommand checkArea, checkHSE;
        SqlDataReader areaexist, hseLibera;
        bool libera = true;


            foreach(Int32 areaSopID in areas){
                if (areaSopID != 0){
                
                checkArea = new SqlCommand("SELECT CASE COUNT(*) WHEN NULL THEN 0 ELSE COUNT(*) END AS CUENTA FROM NIVEL2 where AREA_SOPORTE_ID = '" + areaSopID + "' and CAMBIO_ID = '" + cambioID + "';", thisConnection);
                areaexist = checkArea.ExecuteReader();

                if (areaexist.Read())
                {
                    if (areaexist["CUENTA"].ToString().Equals("0"))
                    {
                        areaexist.Close();
                        checkArea = new SqlCommand("INSERT INTO NIVEL2 (STATUS, FECHA_ASIGNACION, CAMBIO_ID, AREA_SOPORTE_ID) VALUES " +
                            " ('Pendiente', CURRENT_TIMESTAMP, '" + cambioID + "', '" + areaSopID + "');", thisConnection);
                        checkArea.ExecuteNonQuery();

                        libera = false;

                        //SendEmail correo = new SendEmail();

                        //correo.NuevoCambio(getMailNivel2(areaSopID.ToString()), "CAMBIO");

                    }
                }
                areaexist.Close();
            
            }                     

        }


            if (libera)
            {

                insertando = new SqlCommand("UPDATE NIVEL1_QA set LIBERAR_CAMBIO = 'True' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                insertando.ExecuteNonQuery();

                checkHSE = new SqlCommand("SELECT LIBERAR_CAMBIO FROM NIVEL1_HSE WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                hseLibera = checkHSE.ExecuteReader();
                

                if (hseLibera.Read())
                {                    

                    if (hseLibera["LIBERAR_CAMBIO"].ToString().Equals("True"))                    
                    {
                        hseLibera.Close();
                        insertandoLiberado = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                        insertandoLiberado.ExecuteNonQuery();


                        insertandoLiberado = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                        insertandoLiberado.ExecuteNonQuery();

                    }

                }

                hseLibera.Close();
            }


       
    }


    public void pasarHSENDos(String comentarios, int cambioID, Int32[] areas)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_HSE set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, " +
            " COMENTARIOS = '" + comentarios + "', NIVEL2 = 'True' where CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        SqlCommand checkArea, checkQA;
        SqlDataReader areaexist, qaLibera;
        bool libera = true;


        foreach (Int32 areaSopID in areas)
        {
            if (areaSopID != 0)
            {

                checkArea = new SqlCommand("SELECT CASE COUNT(*) WHEN NULL THEN 0 ELSE COUNT(*) END AS CUENTA FROM NIVEL2 where AREA_SOPORTE_ID = '" + areaSopID + "' and CAMBIO_ID = '" + cambioID + "';", thisConnection);
                areaexist = checkArea.ExecuteReader();

                if (areaexist.Read())
                {
                    if (areaexist["CUENTA"].ToString().Equals("0"))
                    {
                        areaexist.Close();
                        checkArea = new SqlCommand("INSERT INTO NIVEL2 (STATUS, FECHA_ASIGNACION, CAMBIO_ID, AREA_SOPORTE_ID) VALUES " +
                            " ('Pendiente', CURRENT_TIMESTAMP, '" + cambioID + "', '" + areaSopID + "');", thisConnection);
                        checkArea.ExecuteNonQuery();

                        libera = false;

                        //SendEmail correo = new SendEmail();

                        //correo.NuevoCambio(getMailNivel2(areaSopID.ToString()),"CAMBIO");

                    }
                }
                areaexist.Close();

            }

        }

        if (libera)
        {

            insertando = new SqlCommand("UPDATE NIVEL1_HSE set LIBERAR_CAMBIO = 'True' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
            insertando.ExecuteNonQuery();

            checkQA = new SqlCommand("SELECT LIBERAR_CAMBIO FROM NIVEL1_QA WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
            qaLibera = checkQA.ExecuteReader();

            if (qaLibera.Read())
            {
                if (qaLibera["LIBERAR_CAMBIO"].ToString().Equals("True"))
                {
                    qaLibera.Close();
                    insertando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                    insertando.ExecuteNonQuery();


                    insertando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
                    insertando.ExecuteNonQuery();


                }
                
            }

            qaLibera.Close();
        }

    }


    public void rechazarNCero(String comentarios, int cambioID)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL0 set STATUS = 'Rechazado', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = '"+ comentarios +"' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL1_HSE set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();


        insertando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Rechazado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
    }


    public void rechazarN1HSE(String comentarios, int cambioID)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_HSE set STATUS = 'Rechazado', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = '" + comentarios + "' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = '---------', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = 'RECHAZADO POR HSE' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Rechazado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
    }



    public void rechazarN1QA(String comentarios, int cambioID)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = 'Rechazado', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = '" + comentarios + "' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL1_HSE set STATUS = '---------', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = 'RECHAZADO POR QA' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = '---------' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();


        insertando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Rechazado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
    }


    public void aceptarAreaSoporte(String comentarios, int cambioID, int areaSoporte)
    {

        SqlCommand insertando = new SqlCommand("UPDATE NIVEL2 set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = '" + comentarios + "' WHERE AREA_SOPORTE_ID = '" + areaSoporte + "' AND CAMBIO_ID = '"+ cambioID +"'", thisConnection);
        insertando.ExecuteNonQuery();

        
        int totalAreas = 0;
        int totalAutorizados = 0;


        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS TOTALES_CAMBIOS FROM NIVEL2 WHERE CAMBIO_ID = '"+ cambioID +"'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalAreas = (int)thisReader["TOTALES_CAMBIOS"];
        }

        thisReader.Close();

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT COUNT(*) AS AUTORIZADOS FROM NIVEL2 WHERE STATUS = 'Autorizado' AND CAMBIO_ID = '"+ cambioID +"'";
        thisReader = thisCommand.ExecuteReader();

        if (thisReader.Read())
        {
            totalAutorizados = (int)thisReader["AUTORIZADOS"];
        }

        thisReader.Close();

        

        if (totalAreas == totalAutorizados)
        {
            insertando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
            insertando.ExecuteNonQuery();
            insertando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = 'Autorizado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
            insertando.ExecuteNonQuery();
        }

    }

    public void rechazarAreaSoporte(String comentarios, int cambioID, int areaSoporte)
    {
              

        SqlCommand rechazando = new SqlCommand("UPDATE NIVEL2 set STATUS = 'Rechazado' WHERE CAMBIO_ID = '"+ cambioID +"' ", thisConnection);
        rechazando.ExecuteNonQuery();

        rechazando = new SqlCommand("UPDATE NIVEL2 set FECHA_APROBACION = CURRENT_TIMESTAMP, COMENTARIOS = '" + comentarios + "' WHERE CAMBIO_ID = '" + cambioID + "' AND AREA_SOPORTE_ID = '"+ areaSoporte +"' ", thisConnection);
        rechazando.ExecuteNonQuery();

        rechazando = new SqlCommand("UPDATE NIVEL2_STATUS set STATUS = 'Rechazado' WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        rechazando.ExecuteNonQuery();

        rechazando = new SqlCommand("UPDATE CAMBIO set ESTADO_CAMBIO = 'Rechazado', FECHA_APROBACION = CURRENT_TIMESTAMP WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
        rechazando.ExecuteNonQuery();
    }


    protected void mandarCorreo(String sender, String receiver, String bodyMail, String asunto )
    {
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(sender);
        correo.To.Add(new System.Net.Mail.MailAddress(receiver));
        correo.Subject = asunto;
        //pone la hora y fecha de cuando le das submit
        String body = bodyMail + "\n\nFecha y hora GMT: " +
            DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss");
        correo.Body = body;
        correo.IsBodyHtml = false;

        correo.Priority = System.Net.Mail.MailPriority.Normal;
        //
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
        //Servidor que se va a usar
        smtp.Host = "smtp.mail.yahoo.com";
        //crenedenciales si es necesario

        smtp.Credentials = new System.Net.NetworkCredential("jessyc48@yahoo.com", "probando");
        try
        {
            smtp.Send(correo);
            //LabelError.Text = "Mensaje enviado satisfactoriamente";
        }
        catch (Exception ex)
        {
            //LabelError.Text = "ERROR: " + ex.Message;
        }
    }

    public byte[] imageToShow(string ID)
    {

        byte[] imageResult = null;
        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "Select ARCHIVO_CONTENT from CAMBIO where CAMBIO_ID =@ID";
        thisCommand.CommandType = CommandType.Text;

        SqlParameter ImageID = new SqlParameter("@ID", System.Data.SqlDbType.Int);
        ImageID.Value = ID;
        thisCommand.Parameters.Add(ImageID);

        SqlDataReader thisReader = thisCommand.ExecuteReader();
        if (thisReader.Read())
        {
            imageResult = (byte[])thisReader["ARCHIVO_CONTENT"];
        }
        thisReader.Close();
        return imageResult;

    }

    public String getDepto(string mail) {

        String depto = "";
        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select departamento.nombre_depto as DEPTO from usuario left outer join departamento on (departamento.responsable_id = usuario.usuario_id or departamento.backup_id = usuario.usuario_id) where correo_usuario = @mail";
        thisCommand.CommandType = CommandType.Text;

        SqlParameter mailUser = new SqlParameter("@mail", System.Data.SqlDbType.VarChar);
        mailUser.Value = mail;
        thisCommand.Parameters.Add(mailUser);

        SqlDataReader thisReader = thisCommand.ExecuteReader();
        if (thisReader.Read())
        {
            depto = thisReader["DEPTO"].ToString();
        }
        thisReader.Close();
        return depto;

    }

    public String getCambiosPendientesBack(String mail,String userPrincipal)
    {
        String querieFlujoNormal = "SELECT CAMBIO.CAMBIO_ID, AREA.NOMBRE_AREA, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, NIVEL0.FECHA_ASIGNACION FROM CAMBIO INNER JOIN AREA ON CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID WHERE (CAMBIO.AREA_ID IN (SELECT AREA_1.AREA_ID FROM USUARIO INNER JOIN DEPARTAMENTO ON USUARIO.USUARIO_ID = DEPARTAMENTO.RESPONSABLE_ID OR USUARIO.USUARIO_ID = DEPARTAMENTO.BACKUP_ID INNER JOIN AREA AS AREA_1 ON DEPARTAMENTO.DEPTO_ID = AREA_1.DEPTO_ID WHERE (USUARIO.CORREO_USUARIO = @correo))) AND (NIVEL0.STATUS = 'Pendiente')";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";

        
        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieFlujoNormal;
        thisCommand.CommandType = CommandType.Text;

        SqlParameter mailUser = new SqlParameter("@correo", System.Data.SqlDbType.VarChar);
        mailUser.Value = mail;
        thisCommand.Parameters.Add(mailUser);

        SqlDataReader result = thisCommand.ExecuteReader();
               
        while (result.Read())
        {
          DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
          DateTime fechaCur = fechaAsignacion;
          int daysOff = 0;
        
          while (fechaCur <= DateTime.Now.ToUniversalTime())
          {
              if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
              {
                  daysOff += 1;
              }

              fechaCur = fechaCur.AddDays(1);
          }

          if (daysOff > 2)
          {
              accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
          }
          else {
              accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
          }
        }
        
        result.Close();

        if(accum.Equals(""))
        {
            return querieFlujoNormal;

        }else{

            if (userPrincipal.Equals("False"))
            {
                accum = accum.Substring(0, accum.LastIndexOf(" or "));

                String querieFlujoBackUp =  querieFlujoNormal + " AND (" + accum + ")";

                return querieFlujoBackUp;
            }
            else
            {
                accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

                String querieFlujoN0Delay = querieFlujoNormal + " AND (" + accumNormal + ")";

                return querieFlujoN0Delay;

            }        
        }

    }

    public String getCambiosHistBack(String mail, String userPrincipal, String lastPartQuerie)
    {
        String querieHistN0 = "SELECT CAMBIO.CAMBIO_ID, AREA.NOMBRE_AREA, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, NIVEL0.FECHA_APROBACION,NIVEL0.FECHA_ASIGNACION, NIVEL0.STATUS AS STATUS_N0, CAMBIO.ESTADO_CAMBIO FROM CAMBIO INNER JOIN AREA ON CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID WHERE (CAMBIO.AREA_ID IN (SELECT AREA_1.AREA_ID FROM USUARIO INNER JOIN DEPARTAMENTO ON USUARIO.USUARIO_ID = DEPARTAMENTO.RESPONSABLE_ID OR USUARIO.USUARIO_ID = DEPARTAMENTO.BACKUP_ID INNER JOIN AREA AS AREA_1 ON DEPARTAMENTO.DEPTO_ID = AREA_1.DEPTO_ID WHERE (USUARIO.CORREO_USUARIO = @correo) AND (NIVEL0.STATUS NOT IN ('Pendiente'))))";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieHistN0;
        thisCommand.CommandType = CommandType.Text;

        SqlParameter mailUser = new SqlParameter("@correo", System.Data.SqlDbType.VarChar);
        mailUser.Value = mail;
        thisCommand.Parameters.Add(mailUser);

        SqlDataReader result = thisCommand.ExecuteReader();

        while (result.Read())
        {
            DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
            DateTime fechaAprobacion = DateTime.Parse(result["FECHA_APROBACION"].ToString());
            DateTime fechaCur = fechaAsignacion;
            int daysOff = 0;

            while (fechaCur <= fechaAprobacion)
            {
                if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
                {
                    daysOff += 1;
                }

                fechaCur = fechaCur.AddDays(1);
            }

            if (daysOff > 2)
            {
                accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
            else
            {
                accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
        }

        result.Close();


            if (userPrincipal.Equals("False"))
            {
                accum = accum.Substring(0, accum.LastIndexOf(" or "));

                String querieFlujoBackUp = querieHistN0 + " AND (" + accum + ")" + lastPartQuerie;

                return querieFlujoBackUp;
            }
            else
            {
                accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

                String querieFlujoN0 = querieHistN0 + " AND (" + accumNormal + ")" + lastPartQuerie;

                return querieFlujoN0;

            }


    }

    public String getCambiosPendientesBackQA(String userPrincipal)
    {
        String querieFlujoNormal = "SELECT CAMBIO.CAMBIO_ID, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, NIVEL1_QA.FECHA_ASIGNACION FROM CAMBIO INNER JOIN AREA ON CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID AND AREA.AREA_ID = NIVEL1_QA.AREA_ID INNER JOIN DEPARTAMENTO ON DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (NIVEL1_QA.N1QA_ACEPTADO = '1') AND (NIVEL1_QA.STATUS = 'Pendiente')";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieFlujoNormal;
        thisCommand.CommandType = CommandType.Text;

        SqlDataReader result = thisCommand.ExecuteReader();

        while (result.Read())
        {
            DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
            DateTime fechaCur = fechaAsignacion;
            int daysOff = 0;

            while (fechaCur <= DateTime.Now.ToUniversalTime())
            {
                if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
                {
                    daysOff += 1;
                }

                fechaCur = fechaCur.AddDays(1);
            }

            if (daysOff > 2)
            {
                accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
            else
            {
                accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
        }

        result.Close();

        if (accum.Equals(""))
        {
            return querieFlujoNormal;

        }
        else
        {

            if (userPrincipal.Equals("False"))
            {
                accum = accum.Substring(0, accum.LastIndexOf(" or "));

                String querieFlujoBackUp = querieFlujoNormal + " AND (" + accum + ")";

                return querieFlujoBackUp;
            }
            else
            {
                accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

                String querieFlujoN0Delay = querieFlujoNormal + " AND (" + accumNormal + ")";

                return querieFlujoN0Delay;

            }
        }

    }

	    public String getCambiosHistBackQA(String userPrincipal, String lastPartQuerie)
    {
        String querieHistQA = "SELECT  CAMBIO.ESTADO_CAMBIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, CAMBIO.TIPO_CAMBIO, NIVEL1_QA.FECHA_APROBACION, NIVEL1_QA.FECHA_ASIGNACION,AREA.NOMBRE_AREA,NIVEL1_QA.STATUS FROM CAMBIO INNER JOIN NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID INNER JOIN AREA ON NIVEL1_QA.AREA_ID = AREA.AREA_ID AND CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN DEPARTAMENTO ON DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND NIVEL1_QA.STATUS NOT IN ('Pendiente', '---------')";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieHistQA;
        thisCommand.CommandType = CommandType.Text;

        SqlDataReader result = thisCommand.ExecuteReader();

        while (result.Read())
        {
            DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
            DateTime fechaAprobacion = DateTime.Parse(result["FECHA_APROBACION"].ToString());
            DateTime fechaCur = fechaAsignacion;
            int daysOff = 0;

            while (fechaCur <= fechaAprobacion)
            {
                if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
                {
                    daysOff += 1;
                }

                fechaCur = fechaCur.AddDays(1);
            }

            if (daysOff > 2)
            {
                accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
            else
            {
                accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
        }

        result.Close();


            if (userPrincipal.Equals("False"))
            {
                accum = accum.Substring(0, accum.LastIndexOf(" or "));

                String querieFlujoBackUp = querieHistQA + " WHERE (" + accum + ")" + lastPartQuerie;

                return querieFlujoBackUp;
            }
            else
            {
                accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

                String querieFlujoN0 = querieHistQA + " WHERE (" +accumNormal + ")" + lastPartQuerie;

                return querieFlujoN0;

            }


    }
	
	public String getCambiosPendientesBackHSE(String userPrincipal)
    {
        String querieFlujoNormal = "SELECT	CAMBIO.CAMBIO_ID, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, NIVEL1_HSE.FECHA_ASIGNACION  FROM CAMBIO INNER JOIN AREA ON CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN NIVEL1_HSE ON CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID AND AREA.AREA_ID = NIVEL1_HSE.AREA_ID INNER JOIN DEPARTAMENTO ON DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID WHERE (NIVEL1_HSE.N1HSE_ACEPTADO = '1') AND (NIVEL1_HSE.STATUS = 'Pendiente')";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";


        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieFlujoNormal;
        thisCommand.CommandType = CommandType.Text;

        SqlDataReader result = thisCommand.ExecuteReader();

        while (result.Read())
        {
            DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
            DateTime fechaCur = fechaAsignacion;
            int daysOff = 0;

            while (fechaCur <= DateTime.Now.ToUniversalTime())
            {
                if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
                {
                    daysOff += 1;
                }

                fechaCur = fechaCur.AddDays(1);
            }

            if (daysOff > 2)
            {
                accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
            else
            {
                accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
        }

        result.Close();

        if (accum.Equals(""))
        {
            return querieFlujoNormal;

        }
        else
        {

            if (userPrincipal.Equals("False"))
            {
                accum = accum.Substring(0, accum.LastIndexOf(" or "));

                String querieFlujoBackUp = querieFlujoNormal + " AND (" + accum + ")";

                return querieFlujoBackUp;
            }
            else
            {
                accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

                String querieFlujoN0Delay = querieFlujoNormal + " AND (" + accumNormal + ")";

                return querieFlujoN0Delay;

            }
        }

    }

    public String getCambiosHistBackHSE(String userPrincipal, String lastPartQuerie)
    {
        String querieHistHSE = "SELECT  CAMBIO.ESTADO_CAMBIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, CAMBIO.TIPO_CAMBIO, NIVEL1_QA.FECHA_APROBACION, NIVEL1_QA.FECHA_ASIGNACION,AREA.NOMBRE_AREA,NIVEL1_QA.STATUS FROM CAMBIO INNER JOIN NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID INNER JOIN AREA ON NIVEL1_QA.AREA_ID = AREA.AREA_ID AND CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN DEPARTAMENTO ON DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND NIVEL1_QA.STATUS NOT IN ('Pendiente', '---------')";
        String sqlPrefix = "CAMBIO.CAMBIO_ID = ";
        String accum = "";
        String accumNormal = "";

        thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = querieHistHSE;
        thisCommand.CommandType = CommandType.Text;

        SqlDataReader result = thisCommand.ExecuteReader();

        while (result.Read())
        {
            DateTime fechaAsignacion = DateTime.Parse(result["FECHA_ASIGNACION"].ToString());
            DateTime fechaAprobacion = DateTime.Parse(result["FECHA_APROBACION"].ToString());
            DateTime fechaCur = fechaAsignacion;
            int daysOff = 0;

            while (fechaCur <= fechaAprobacion)
            {
                if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday || fechaCur.DayOfWeek == DayOfWeek.Sunday))
                {
                    daysOff += 1;
                }

                fechaCur = fechaCur.AddDays(1);
            }

            if (daysOff > 2)
            {
                accum += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
            else
            {
                accumNormal += sqlPrefix + result["CAMBIO_ID"].ToString() + " or ";
            }
        }

        result.Close();


        if (userPrincipal.Equals("False"))
        {
            accum = accum.Substring(0, accum.LastIndexOf(" or "));

            String querieFlujoBackUp = querieHistHSE + " WHERE (" + accum + ")" + lastPartQuerie;

            return querieFlujoBackUp;
        }
        else
        {
            accumNormal = accumNormal.Substring(0, accumNormal.LastIndexOf(" or "));

            String querieFlujoN0 = querieHistHSE + " WHERE (" + accumNormal + ")" + lastPartQuerie;

            return querieFlujoN0;

        }


    }

}
