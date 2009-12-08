using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Threading;
using System.IO;
using System.Configuration;




    public class Envio
    {
        SqlConnection thisConnection;
        SendEmail mandarCorreos;

        public Envio()
        {
            thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ControlCambiosConnectionString1"].ToString());
            thisConnection.Open();
            mandarCorreos = new SendEmail();

        }
        public void sendCorreos()
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
            mandarABacks("SELECT DISTINCT (NIVEL1_QA.NIVEL1_QA_ID), USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, "
                + " CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_QA.FECHA_ASIGNACION "
                + " FROM NIVEL1_QA, USUARIO, CAMBIO WHERE NIVEL1_QA.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " NIVEL1_QA.STATUS = 'Pendiente' AND NIVEL1_QA.N1QA_ACEPTADO = '1' "
                + " AND USUARIO.PERFIL_USUARIO LIKE 'n1qa' AND USUARIO.PRINCIPAL = '0';");
        }

        public void mandarCorreosAN1HSE()
        {
            mandarANiveles("SELECT USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_HSE.FECHA_ASIGNACION FROM NIVEL1_HSE, AREA, DEPARTAMENTO, USUARIO, CAMBIO WHERE NIVEL1_HSE.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " AREA.NOMBRE_AREA LIKE 'HSE' AND AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID AND DEPARTAMENTO.RESPONSABLE_ID = USUARIO.USUARIO_ID AND NIVEL1_HSE.STATUS LIKE ('Pendiente') "
                + " AND (NIVEL1_HSE.N1HSE_ACEPTADO = '1');");
        }

        public void mandarCorreosAN1HSEBack()
        {
            mandarABacks("SELECT DISTINCT (NIVEL1_HSE.NIVEL1_HSE_ID), USUARIO.CORREO_USUARIO, USUARIO.NOMBRE_USUARIO, "
                + " CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, NIVEL1_HSE.FECHA_ASIGNACION "
                + " FROM NIVEL1_HSE, USUARIO, CAMBIO WHERE NIVEL1_HSE.CAMBIO_ID = CAMBIO.CAMBIO_ID AND "
                + " NIVEL1_HSE.STATUS = 'Pendiente' AND NIVEL1_HSE.N1HSE_ACEPTADO = '1' "
                + " AND USUARIO.PERFIL_USUARIO LIKE 'n1hse' AND USUARIO.PRINCIPAL = '0';");
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
                    Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + "Se le manda correo" + "    " + myReader["CAMBIO_ID"].ToString() +
                        ": " + myReader["NOMBRE_CAMBIO"].ToString());
                     mandarCorreos.MandarBack(myReader["CORREO_USUARIO"].ToString(), myReader["CAMBIO_ID"].ToString() +
                            ": " + myReader["NOMBRE_CAMBIO"].ToString());

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("No se pudo mandar a N0" + ex.Message);
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
                    DateTime fechaAsignacion = DateTime.Parse(myReader["FECHA_ASIGNACION"].ToString());
                    DateTime fechaCur = fechaAsignacion;
                    int daysOff = 0;
                    while (fechaCur <= DateTime.Now.ToUniversalTime())
                    {
                        if (!(fechaCur.DayOfWeek == DayOfWeek.Saturday ||
                            fechaCur.DayOfWeek == DayOfWeek.Sunday ||
                            this.isFestivo(fechaCur)))
                        {
                            daysOff += 1;
                        }
                        fechaCur = fechaCur.AddDays(1);
                    }
                    if (daysOff > 2)
                    {
                        Console.WriteLine(myReader["CORREO_USUARIO"].ToString() + "Se le manda correo" + "    " + myReader["CAMBIO_ID"].ToString() +
                        ": " + myReader["NOMBRE_CAMBIO"].ToString());
                        mandarCorreos.MandarBack(myReader["CORREO_USUARIO"].ToString(), myReader["CAMBIO_ID"].ToString() +
                              ": " + myReader["NOMBRE_CAMBIO"].ToString());
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

        public bool isFestivo(DateTime diaActual)
        {
            Dictionary<string, string> Properties = LeerArchivo.GetProperties("cambios_properties.txt");
            String[] fechasFestivas = Properties["DIAS_FESTIVOS"].ToString().Split(';');
            foreach(String fecha in fechasFestivas)
            {
                Console.WriteLine(fecha);
                if (DateTime.Parse(fecha) == diaActual)
                {
                    return true;
                }
            }
            return false;
        }

        public static void Main(String[] args)
        {
            Envio e = new Envio();
            e.sendCorreos();
        }

    }
