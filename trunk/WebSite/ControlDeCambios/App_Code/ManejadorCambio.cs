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

    public void pasarNCero(int folio , String nombreCambio, String tipoCambio, String areaID, String fechaRecepcion, String fechaAprobacion, String fechaRealizacion, String fileUpload1)
    {
        SqlCommand insertando = new SqlCommand("INSERT INTO CAMBIO  (CAMBIO_ID, NOMBRE_CAMBIO, TIPO_CAMBIO, AREA_ID, FECHA_RECEPCION, FECHA_REALIZACION, ESTADO_CAMBIO, ARCHIVO)" +
            "VALUES ('" + (folio) + "', '" + nombreCambio + "', '" + tipoCambio + "', '" + areaID + "', CURRENT_TIMESTAMP, '" + fechaRealizacion + "', 'Pendiente', '" + fileUpload1 + "')", thisConnection);
        insertando.ExecuteNonQuery();

        SqlCommand insertadoNCero = new SqlCommand("INSERT INTO NIVEL0 (CAMBIO_ID, STATUS, AREA_ID, FECHA_ASIGNACION)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', '" + fechaRecepcion + "')", thisConnection);
        insertadoNCero.ExecuteNonQuery();
        
        //mandarCorreo("jessyc48@yahoo.com", "jessyc48@yahoo.com", "mi prueba", "prueba");



    }

    public void pasarNUno(String comentarios, int cambioID)
    {
        SqlCommand insertando = new SqlCommand("UPDATE NIVEL0 set FECHA_APROBACION = CURRENT_TIMESTAMP,"
            + " COMENTARIOS = '" + comentarios + "', STATUS = 'Autorizado'  WHERE CAMBIO_ID = '" + cambioID + "'", thisConnection);
          insertando.ExecuteNonQuery();
          insertando = new SqlCommand("INSERT INTO NIVEL1_QA (STATUS, AREA_ID, FECHA_ASIGNACION, CAMBIO_ID, NIVEL2) "
              + "VALUES ( 'Pendiente', (SELECT AREA_ID FROM CAMBIO WHERE CAMBIO_ID = '" + cambioID + "'), CURRENT_TIMESTAMP, '" + cambioID + "', 'False')", thisConnection);
          insertando.ExecuteNonQuery();
          insertando = new SqlCommand("INSERT INTO NIVEL1_HSE (STATUS, AREA_ID, FECHA_ASIGNACION, CAMBIO_ID, NIVEL2) "
                + "VALUES ( 'Pendiente', (SELECT AREA_ID FROM CAMBIO WHERE CAMBIO_ID = '" + cambioID + "'), CURRENT_TIMESTAMP, '" + cambioID + "', 'False')", thisConnection);
          insertando.ExecuteNonQuery();
        //insertando = new SqlCommand("",thisConnection);
    }

    public void pasarQANDos(String comentarios, int cambioID, Int32[] areas)
    {
        //SqlCommand insertando = new SqlCommand("UPDATE NIVEL1_QA set STATUS = 'Autorizado', FECHA_APROBACION = CURRENT_TIMESTAMP, " +
        //    " COMENTARIOS = '" + comentarios + "', NIVEL2 = 'True' where CAMBIO_ID = '" + cambioID + "'", thisConnection);
        //insertando.ExecuteNonQuery();
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
