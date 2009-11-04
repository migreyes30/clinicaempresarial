<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Administración de Cambios</title>

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
	include("header.php");
?>

<font face="Arial, Helvetica, sans-serif" size="-1">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <td align="left" height="25" valign="bottom">
	<font face="Arial, Helvetica, sans-serif" size="+1">
	Agregar Usuario
	</font>
	</td>
  </tr>  
</table>


<!-- FILTROS -->
<br />
<center>
<table width="80%" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>

<tr><td align="center">


<table width="80%" border="0" cellpadding="4">
  <tr>
    <td height="25">&nbsp;</td>
    <td align="left" bgcolor="#F4F4F4"><strong>Llena los datros a continuación</strong></td>
  </tr>
  <tr>
    <td width="100" align="right">Nombre</td>
    <td align="left"><input type="text" name="" size="45" /></td>
  </tr>
  <tr>
    <td align="right">Departamento</td>
    <td align="left">
	
				<select name="">
					<option value="">Consap/Pailas/RG</option>
					<option value="">Secadores</option>
					<option value="">Líneas</option>
					<option value="">Planta piloto/TDO-NI</option>
					<option value="">Servicios</option>
					<option value="">MPS/MPR/DRP/PE</option>
					<option value="">Laboratorio QA</option>
					<option value="">Reproceso</option>
					<option value="">Glicerina</option>
					<option value="">Sulfatación</option>
					<option value="">HSE</option>
					<option value="">Bodegas</option>
				</select>
	
	
	</td>
  </tr>
  <tr>
    <td align="right">Área</td>
    <td align="left">	
				<select name="">
					<option value="">Area 1</option>
					<option value="">Area 2</option>
				</select>	
	
	</td>
  </tr>
  <tr>
    <td align="right">Nivel</td>
    <td align="left">	
				<select name="">
					<option value="">Administrador</option>
					<option value="">Nivel 0</option>
					<option value="">Nivel 1</option>
					<option value="">Nivel 2</option>										
				</select>	
		
	</td>
  </tr>
  <tr>
    <td align="right">Teléfono</td>
    <td align="left"><input type="text" name="" size="20" /></td>
  </tr>
  <tr>
    <td align="right">E-Mail</td>
    <td align="left"><input type="text" name="" size="45" /></td>
  </tr>
  <tr>
    <td align="right">Contraseña</td>
    <td align="left"><input type="text" name="" size="10" /></td>
  </tr>

  <tr>
    <td align="right">Repite Contraseña</td>
    <td align="left"><input type="text" name="" size="10" /></td>
  </tr>


  <tr>
    <td></td>
    <td height="50" align="left"><input type="submit" value="Agregar"/></td>
  </tr>

  
</table>
  
 </td>
 </tr>
   
</table>

</center>

</font>

<?php
	include("footer.php");
?>

</center>


</body>
</html>
