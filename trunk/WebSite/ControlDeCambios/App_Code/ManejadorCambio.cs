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
        SqlCommand insertando = new SqlCommand("INSERT INTO CAMBIO  (CAMBIO_ID, NOMBRE_CAMBIO, TIPO_CAMBIO, AREA_ID, FECHA_RECEPCION, FECHA_APROBACION, FECHA_REALIZACION, ESTADO_CAMBIO, ARCHIVO)" +
            "VALUES ('" + (folio) + "', '" + nombreCambio + "', '" + tipoCambio + "', '" + areaID + "', '" + fechaRecepcion + "', '" + fechaAprobacion + "', '" + fechaRealizacion + "', 'Pendiente', '" + fileUpload1 + "')", thisConnection);
        insertando.ExecuteNonQuery();

        SqlCommand insertadoNCero = new SqlCommand("INSERT INTO NIVEL0 (CAMBIO_ID, STATUS, AREA_ID, FECHA_ASIGNACION)" +
            " VALUES ('" + (folio) + "', 'Pendiente', '" + areaID + "', '" + fechaRecepcion + "')", thisConnection);
        insertadoNCero.ExecuteNonQuery();
        
        //mandarCorreo("jessyc48@yahoo.com", "jessyc48@yahoo.com", "mi prueba", "prueba");



    }

    public void pasarNUno(String comentarios, int cambioID)
    {
          SqlCommand insertando = new SqlCommand("UPDATE NIVEL0 set FECHA_APROBACION = CURRENT_TIMESTAMP," 
              + " COMENTARIOS = '"+ comentarios +"' WHERE CAMBIO_ID = '" +cambioID + "'", thisConnection);
          insertando.ExecuteNonQuery();
        //insertando = new SqlCommand("",thisConnection);
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
