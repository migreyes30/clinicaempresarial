using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ManejadorCambio
/// </summary>
public class ManejadorCambio
{
    SqlConnection thisConnection;
    SqlCommand thisCommand;

	public ManejadorCambio()
	{
        thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
        thisConnection.Open();

	}


    public String[] cambiosDatos(int cambioID)
    {
        String []campos = new String[5];

        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select NOMBRE_CAMBIO, TIPO_CAMBIO, AREA.NOMBRE_AREA, NIVEL0.FECHA_ASIGNACION, ARCHIVO  from CAMBIO, NIVEL0,  AREA where CAMBIO.CAMBIO_ID = '" + cambioID + "' and CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID and AREA.AREA_ID = CAMBIO.AREA_ID;";
        SqlDataReader thisReader = thisCommand.ExecuteReader();

        if(thisReader.Read())
        {
            campos[0] = thisReader["NOMBRE_CAMBIO"].ToString();
            campos[1] = thisReader["TIPO_CAMBIO"].ToString();
            campos[2] = thisReader["NOMBRE_AREA"].ToString();
            campos[3] = thisReader["FECHA_ASIGNACION"].ToString();
            campos[4] = thisReader["ARCHIVO"].ToString();
        }

        return campos;
    }

    public void pasarNCero(int folio , String nombreCambio, String tipoCambio, String areaID, String fechaRealizacion, String fileUpload1)
    {
        SqlCommand insertando = new SqlCommand("INSERT INTO CAMBIO  (CAMBIO_ID, NOMBRE_CAMBIO, TIPO_CAMBIO, AREA_ID, FECHA_RECEPCION, FECHA_REALIZACION, ESTADO_CAMBIO, ARCHIVO)" +
            "VALUES ('" + (folio) + "', '" + nombreCambio + "', '" + tipoCambio + "', '" + areaID + "', CURRENT_TIMESTAMP, '" + fechaRealizacion + "', 'Pendiente', '" + fileUpload1 + "')", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("INSERT INTO NIVEL0 (CAMBIO_ID, STATUS, AREA_ID, FECHA_ASIGNACION)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', CURRENT_TIMESTAMP)", thisConnection);
        insertando.ExecuteNonQuery();
        

        /********/

        insertando = new SqlCommand("INSERT INTO NIVEL1_HSE (CAMBIO_ID, STATUS, AREA_ID, NIVEL2, N1HSE_ACEPTADO)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', 'False', 'False')", thisConnection);
        insertando.ExecuteNonQuery();

        insertando = new SqlCommand("INSERT INTO NIVEL1_QA (CAMBIO_ID, STATUS, AREA_ID, NIVEL2, N1QA_ACEPTADO)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', 'False', 'False')", thisConnection);
        insertando.ExecuteNonQuery();


        insertando = new SqlCommand("INSERT INTO NIVEL2_STATUS (CAMBIO_ID, STATUS, AREA_ID)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "')", thisConnection);
        insertando.ExecuteNonQuery();


        //mandarCorreo("jessyc48@yahoo.com", "jessyc48@yahoo.com", "mi prueba", "prueba");

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
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, " +
            " COMENTARIOS = '" + comentarios + "', NIVEL2 = 'True'  where CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
        SqlCommand insertAreas;
        SqlCommand checkArea;
            foreach(Int32 areaSopID in areas){
                if (areaSopID != 0){
                
                checkArea = new SqlCommand("SELECT CASE COUNT(*) WHEN NULL THEN 0 ELSE COUNT(*) END AS CUENTA FROM NIVEL2 where AREA_SOPORTE_ID = '" + areaSopID + "' and CAMBIO_ID = '" + cambioID + "';", thisConnection);
                SqlDataReader areaexist = checkArea.ExecuteReader();

                if (areaexist.Read())
                {
                    if (areaexist["CUENTA"].ToString().Equals("0"))
                    {
                        areaexist.Close();
                        checkArea = new SqlCommand("INSERT INTO NIVEL2 (STATUS, FECHA_ASIGNACION, CAMBIO_ID, AREA_SOPORTE_ID) VALUES " +
                            " ('Pendiente', CURRENT_TIMESTAMP, '" + cambioID + "', '" + areaSopID + "');", thisConnection);
                        checkArea.ExecuteNonQuery();

                    }
                }
                areaexist.Close();
            
            }                     

        }
       
    }


    public void pasarHSENDos(String comentarios, int cambioID, Int32[] areas)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_HSE set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, " +
            " COMENTARIOS = '" + comentarios + "', NIVEL2 = 'True' where CAMBIO_ID = '" + cambioID + "'", thisConnection);
        insertando.ExecuteNonQuery();
        SqlCommand insertAreas;
        SqlCommand checkArea;
        foreach (Int32 areaSopID in areas)
        {
            if (areaSopID != 0)
            {

                checkArea = new SqlCommand("SELECT CASE COUNT(*) WHEN NULL THEN 0 ELSE COUNT(*) END AS CUENTA FROM NIVEL2 where AREA_SOPORTE_ID = '" + areaSopID + "' and CAMBIO_ID = '" + cambioID + "';", thisConnection);
                SqlDataReader areaexist = checkArea.ExecuteReader();

                if (areaexist.Read())
                {
                    if (areaexist["CUENTA"].ToString().Equals("0"))
                    {
                        areaexist.Close();
                        checkArea = new SqlCommand("INSERT INTO NIVEL2 (STATUS, FECHA_ASIGNACION, CAMBIO_ID, AREA_SOPORTE_ID) VALUES " +
                            " ('Pendiente', CURRENT_TIMESTAMP, '" + cambioID + "', '" + areaSopID + "');", thisConnection);
                        checkArea.ExecuteNonQuery();
                    }
                }
                areaexist.Close();

            }

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

}
