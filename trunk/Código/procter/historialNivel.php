<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Lista</title>
</head>

<style type="text/css">
a{text-decoration: none;} 
a:link {color: #000000}     /* unvisited link */
a:visited {color: #000000}  /* visited link */
a:hover {color: #FF0000}   /* mouse over link */
a:active {color: #999999}   /* selected link */
</style>

<body topmargin="0" leftmargin="0" rightmargin="0">

<center>
<?php
	include("headerNiveles.php");
?>

<font face="Arial, Helvetica, sans-serif" size="-1">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <td align="left" height="25" valign="bottom">
	<font face="Arial, Helvetica, sans-serif" size="+1">
	Historial de Cambios
	</font>
	</td>
  </tr>  
</table>

<br />





<table width="100%" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>
  <tr><td align="center">
  
<table width="100%" border="0">
  <tr>
    <td align="left" width="160">Inicio</td>
    <td align="left" width="160">Fin</td>
    <td align="left">Nivel</td>
    <td align="left">Estatus</td>
    <td align="left">Tipo</td>
  </tr>
  <tr>
    <td align="left"><input type="text" name="" size="8" /></td>
    <td align="left"><input type="text" name="" size="8" /></td>
    <td align="left">
		<select name="">
		<option value="">Todos</option>
		<option value="">N0</option>
		<option value="">N1</option>		
		<option value="">N2</option>		
		</select>
	</td>
    <td align="left">
		<select name="">
			<option value="">Todos</option>
			<option value="">Rechazados</option>			
			<option value="">Aprobador</option>			
			<option value="">Pendientes</option>									
		</select>	
	</td>
    <td align="left">
		<select name="">
			<option value="">Kaizen</option>
			<option value="">Cambio</option>			
		</select>	
	</td>	
  </tr>
  <tr>
    <td align="left">Folio</td>		
    <td align="left">Origionador</td>
    <td align="left"></td>
  </tr>
  <tr>
    <td align="left"><input type="text" name="" /></td>
    <td align="left"><input type="text" name="" /></td>
    <td align="left">
		<input type="submit" name=""	 value="Aceptar" />
	</td>
  </tr>
</table>
  
  
  </td></tr>
</table>

<br />

<table width="100%" border="1" cellpadding="2" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>

  <tr>
    <td width="30"  height="25" bgcolor="#F2F2F2"><strong>Folio</strong></td>
    <td width="70"  height="25" bgcolor="#F2F2F2"><strong>Fecha</strong></td>
    <td width="200" height="25" bgcolor="#F2F2F2"><strong>Título</strong></td>
    <td width="150" height="25" bgcolor="#F2F2F2"><strong>Departamento</strong></td>
    <td width="100" height="25" bgcolor="#F2F2F2"><strong>Área</strong></td>
    <td height="25" bgcolor="#F2F2F2"><strong>N0</strong></td>	
    <td height="25" bgcolor="#F2F2F2"><strong>N1</strong></td>
    <td height="25" bgcolor="#F2F2F2"><strong>N2</strong></td>
    <td height="25" bgcolor="#F2F2F2"><strong>Estado</strong></td>
  </tr>
  <tr>
    <td>156</td>
    <td>14/05/2009</td>
    <td><a href="detalleHistorialNivel.php"><u>Paviemntación de Predi</u></a></td>
    <td>Servicios</td>
    <td>QA</td>
    <td bgcolor="#00CC66">&nbsp;</td>	
    <td bgcolor="#00CC66">&nbsp;</td>
    <td bgcolor="#FF0000">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>155</td>
    <td>24/04/2009</td>
    <td><a href="#"><u>Modificación a la bomba de autoclave</u></a></td>
    <td>Making</td>
    <td>Consap</td>
    <td bgcolor="#00CC66">&nbsp;</td>
    <td bgcolor="#00CC66">&nbsp;</td>	
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
</table>

</font>

<?php
	include("footer.php");
?>
</center>

</body>
</html>
