using System;
using System.Collections.Generic;
using System.Web;
using System.IO; 


/// <summary>
/// Summary description for LeerArchivo
/// </summary>


    public class LeerArchivo
    {
        public LeerArchivo()
        {
        }

        public static Dictionary<string, string> GetProperties(string path)
        {
            string fileData = "";
            StreamReader sr = new StreamReader(path);
            { fileData = sr.ReadToEnd().Replace("\r", ""); }
            Dictionary<string, string> Properties = new Dictionary<string, string>();
            string[] kvp;
            string[] records = fileData.Split("\n".ToCharArray());
            foreach (string record in records)
            {
                kvp = record.Split("=".ToCharArray());
                Properties.Add(kvp[0], kvp[1]);
            }
            return Properties;
        }

        /*public static void Main(String[] args)
        {

            LeerArchivo e = new LeerArchivo();
            //e.leerArchivo();
            Dictionary<string, string> Properties = GetProperties("cambios_properties.txt");
            Console.WriteLine("Hello: " + Properties["CORREO_SENDER"]);
            String[] fechasFestivas = Properties["DIAS_FESTIVOS"].ToString().Split(';');
            DateTime.Parse(fechasFestivas[0]);
            Console.WriteLine(fechasFestivas[0] + fechasFestivas[1]);
            //Console.ReadKey();

        }*/
    }
