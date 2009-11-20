using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;

//namespace LodelCorreo.Ejemplo
//{
    public class SendEmail
    {

        public void Correo(String sender, String receiver, String bodyMail, String asunto, String cambioNombre)
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

            smtp.Credentials = new System.Net.NetworkCredential("control_de_cambios@yahoo.com", "sistema");
            try
            {
                smtp.Send(correo);

                //LabelError.Text = "Mensaje enviado satisfactoriamente";
                Console.WriteLine("enviado");

            }
            catch (Exception ex)
            {
                //LabelError.Text = "ERROR: " + ex.Message;
                Console.WriteLine("no se envio" + ex.Message);
            }

        }

        public void MandarCancelado(String receiver, String cambioNombre)
        {
            String sender = "control_de_cambios@yahoo.com";
            String body = "El cambio \"" + cambioNombre + "\" ha sido cancelado \n cualquier duda favor de consultarlo con el administrador de Sistemas de Cambio\n Gracias. \nAtte. Servicio de Cambios";
            String asunto = "Cambio cancelado";
            Correo(sender, receiver, body, asunto, cambioNombre);
        }

        public void MandarAceptado(String receiver, String cambioNombre)
        {
            String sender = "control_de_cambios@yahoo.com";
            String body = "El cambio \"" + cambioNombre + "\" ha sido aceptado \n cualquier duda favor de consultarlo con el administrador de Sistemas de Cambios.\n Gracias. \nAtte. Servicio de Cambios";
            String asunto = "Cambio Aceptado";
            Correo(sender, receiver, body, asunto, cambioNombre);
        }

        public void NuevoCambio(String receiver, String cambioNombre)
        {
            String sender = "control_de_cambios@yahoo.com";
            String body = "Un nuevo cambio llamado \""+cambioNombre + "\" se encuentra en espera para su aprobación, favor de entrar al sistema de cambios. \n Atte. Servicio de Cambios";
            String asunto = "Nuevo Cambio";
            Correo(sender, receiver, body, asunto, cambioNombre);
        }


    }
//}
