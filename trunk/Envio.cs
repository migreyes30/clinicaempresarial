using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Threading;

namespace WebService2.ejem01
{
    public class Envio
    {
        SqlConnection thisConnection;
        SqlCommand thisCommand;

        public Envio()
        {
            thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
//            thisConnection.Open();

        }
        public void mandarCorreo(String sender, String receiver, String bodyMail, String asunto)
        {
            DateTime d = DateTime.Now.ToUniversalTime();

            if (!(d.DayOfWeek == DayOfWeek.Saturday || d.DayOfWeek == DayOfWeek.Sunday))
            {
                SqlComand checkArea = new SqlCommand("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, NIVEL0.FECHA_ASIGNACION FROM NIVEL0, " 
                    + "AREA, DEPARTAMENTO, USUARIO WHERE NIVEL0.AREA_ID = AREA.AREA_ID ANDAREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID "
                    + "AND DEPARTAMENTO.RESPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL0.STATUS = 'Pendiente';", thisConnection);
                SqlDataReader myReader = checkArea.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Console.WriteLine(myReader.GetString(0) + " " + myReader.GetString(1) + " " + myReader.GetString(2));
                       // myReader.GetString(0);
                    }
                }
                finally
                {
                    myReader.Close();
                    myConnection.Close();
                }

            }

            while(DateTime.Now.ToUniversalTime()<d.AddMinutes(1)) 
                //DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss").Equals("19/11/2009 06:03:49")==false )
            {
                Thread.Sleep(5000);
            Console.WriteLine("esperando");
            }
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
                    Console.WriteLine("enviado");

                }
                catch (Exception ex)
                {
                    //LabelError.Text = "ERROR: " + ex.Message;
                    Console.WriteLine("no se envio"+ ex.Message);
                }


            
        }
        public static void Main(String[] args)
        {
            Envio e = new Envio();
            e.mandarCorreo("jessyc48@yahoo.com", "foreveri_22@hotmail.com", "probando", "prueba");

        }

    }
   
}