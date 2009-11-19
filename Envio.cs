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

        public Envio()
        {
            thisConnection = new SqlConnection(@"Network Library=DBMSSOCN;Data Source=localhost,2798;database=ControlCambios;User id=sa;Password=oracle;");
            thisConnection.Open();

        }
        public void mandarCorreo(String sender, String receiver, String bodyMail, String asunto)
        {
            DateTime d = DateTime.Now.ToUniversalTime();

            if (!(d.DayOfWeek == DayOfWeek.Saturday || d.DayOfWeek == DayOfWeek.Sunday))
            {

                mandarCorreosAN0();
                mandarCorreosAN0Back();
                mandarCorreosAN1QA();
                mandarCorreosAN1QABack();
                mandarCorreosAN1HSE();
                mandarCorreosAN1HSEBack();
                mandarCorreosAAreasSoporte();
                mandarCorreosAAreasSoporteBack();
                thisConnection.Close();

            }

            while(DateTime.Now.ToUniversalTime()<d.AddSeconds(10)) 
                //DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss").Equals("19/11/2009 06:03:49")==false )
            {
                Thread.Sleep(5000);
            Console.WriteLine("esperando");
            }
            
            /*
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

            */
            
        }

        public void mandarCorreosAN0()
        {

            mandarANiveles("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.NOMBRE_CAMBIO, CAMBIO.CAMBIO_ID, NIVEL0.FECHA_ASIGNACION FROM NIVEL0, AREA, "
                + " DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL0.CAMBIO_ID = CAMBIO.CAMBIO_ID AND NIVEL0.AREA_ID = AREA.AREA_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND "
                + " DEPARTAMENTO.RESPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL0.STATUS LIKE ('Pendiente');");

        }

        public void mandarCorreosAN0Back()
        {
            mandarABacks("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL0.FECHA_ASIGNACION FROM NIVEL0, AREA, "
                + " DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL0.CAMBIO_ID = CAMBIO.CAMBIO_ID AND NIVEL0.AREA_ID = AREA.AREA_ID AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND "
                + " DEPARTAMENTO.BACKUP_ID = USUARIO.USUARIO_ID AND NIVEL0.STATUS LIKE ('Pendiente');");

        }

        public void mandarCorreosAN1QA()
        {
            mandarANiveles("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_QA.FECHA_ASIGNACION FROM NIVEL1_QA, AREA, "
                + " DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL1_QA.CAMBIO_ID = CAMBIO.CAMBIO_ID AND AREA.NOMBRE_AREA LIKE 'QA' AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND "
                + " DEPARTAMENTO.RESPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL1_QA.STATUS LIKE ('Pendiente') AND (NIVEL1_QA.N1QA_ACEPTADO = '1');");
        }

        public void mandarCorreosAN1QABack()
        {
            mandarABacks("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_QA.FECHA_ASIGNACION FROM NIVEL1_QA, AREA, DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL1_QA.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " AREA.NOMBRE_AREA LIKE 'QA' AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND DEPARTAMENTO.BACKUP_ID = USUARIO.USUARIO_ID AND NIVEL1_QA.STATUS LIKE ('Pendiente') "
                + " AND (NIVEL1_QA.N1QA_ACEPTADO = '1');");
        }

        public void mandarCorreosAN1HSE()
        {
            mandarANiveles("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_HSE.FECHA_ASIGNACION FROM NIVEL1_HSE, AREA, DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL1_HSE.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " AREA.NOMBRE_AREA LIKE 'HSE' AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND DEPARTAMENTO.RESPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL1_HSE.STATUS LIKE ('Pendiente') "
                + " AND (NIVEL1_HSE.N1HSE_ACEPTADO = '1');");
        }

        public void mandarCorreosAN1HSEBack()
        {
            mandarABacks("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_HSE.FECHA_ASIGNACION FROM NIVEL1_HSE, AREA, DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL1_HSE.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " AREA.NOMBRE_AREA LIKE 'HSE' AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND DEPARTAMENTO.BACKUP_ID = USUARIO.USUARIO_ID AND NIVEL1_HSE.STATUS LIKE ('Pendiente') "
                + " AND (NIVEL1_HSE.N1HSE_ACEPTADO = '1');");
        }

        public void mandarCorreosAAreasSoporte()
        {
            mandarANiveles("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL2.FECHA_ASIGNACION FROM NIVEL2, CAMBIO, AREAS_SOPORTE, USUARIO WHERE NIVEL2.CAMBIO_ID = CAMBIO.CAMBIO_ID AND AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID "
                + " AND AREAS_SOPORTE.REPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL2.STATUS LIKE ('Pendiente')");
        }

        public void mandarCorreosAAreasSoporteBack()
        {
            mandarABacks("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL2.FECHA_ASIGNACION FROM NIVEL2, CAMBIO, AREAS_SOPORTE, USUARIO WHERE NIVEL2.CAMBIO_ID = CAMBIO.CAMBIO_ID AND AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID "
                + " AND AREAS_SOPORTE.BACKUP_ID = USUARIO.USUARIO_ID AND NIVEL2.STATUS LIKE ('Pendiente')");
        }

        public void mandarANiveles(String querie)
        {
            SqlCommand checkArea = new SqlCommand(querie, thisConnection);
            SqlDataReader myReader = checkArea.ExecuteReader();
            try
            {
                while (myReader.Read())
                {
                    //Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + " " + myReader["NOMBRE_USUARIO"].ToString() + " " +
                      //  myReader["NOMBRE_CAMBIO"].ToString() + " " + myReader["CAMBIO_ID"].ToString() + " " + myReader["FECHA_ASIGNACION"].ToString());
                    // myReader.GetString(0);
                    //DateTime fecha = DateTime.Parse(myReader["FECHA_ASIGNACION"].ToString());
                    //Console.WriteLine(fecha.ToString());
                    Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + "Se le manda correo");

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("no se pudo mandar a N0" + ex.Message);
            }
            finally
            {
                myReader.Close();
            }
        }

        public void mandarABacks(String querie)
        {
            SqlCommand checkArea = new SqlCommand(querie, thisConnection);
            SqlDataReader myReader = checkArea.ExecuteReader();
            try
            {
                while (myReader.Read())
                {
                    //Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + " " + myReader["NOMBRE_USUARIO"].ToString() + " " +
                      //  myReader["NOMBRE_CAMBIO"].ToString() + " " + myReader["CAMBIO_ID"].ToString() + " " + myReader["FECHA_ASIGNACION"].ToString());
                    DateTime fecha = DateTime.Parse(myReader["FECHA_ASIGNACION"].ToString());
                    //Console.WriteLine(fecha.ToString());
                    if (fecha.DayOfWeek == DayOfWeek.Thursday)
                    {
                        if (fecha < DateTime.Now.ToUniversalTime().AddDays(-4))
                        {
                            Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + "Se le manda correo");
                        }
                    }
                    else if (fecha.DayOfWeek == DayOfWeek.Friday)
                    {
                        if (fecha < DateTime.Now.ToUniversalTime().AddDays(-4))
                        {
                            Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + "Se le manda correo");
                        }
                    }
                    else
                    {
                        if (fecha < DateTime.Now.ToUniversalTime().AddDays(-2))
                        {
                            Console.WriteLine( myReader["CORREO_USUARIO"].ToString() + "Se le manda correo");
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("no se pudo mandar a Back" + ex.Message);
            }
            finally
            {
                myReader.Close();              
            }
        }

        public static void Main(String[] args)
        {
            Envio e = new Envio();
            e.mandarCorreo("jessyc48@yahoo.com", "foreveri_22@hotmail.com", "probando", "prueba");

        }

    }
   
}