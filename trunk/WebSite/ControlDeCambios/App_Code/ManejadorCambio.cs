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




    }


}
