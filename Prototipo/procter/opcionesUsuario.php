<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
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
	Opciones Usuario
	</font>
	</td>
  </tr>  
</table>


<!-- FILTROS -->
<br />
<center>
<table width="80%" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>

<tr><td align="center">

<form action="opcionesUsuario.php" method="post">

	<table width="80%" border="0" cellpadding="4">
	  <tr>
		<td height="25">&nbsp;</td>
	    <td align="left" bgcolor="#F4F4F4"><strong>Elige el criterio de búsqueda</strong></td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td width="100" align="right">Nombre</td>
		<td align="left"><input type="text" size="40" name="" /></td>
		<td align="left"><input type="submit" name="porNombre" value="Buscar" /></td>
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
					<option value="">Dodegas</option>
				</select>
						
		</td>
		<td align="left"><input type="submit" name="" value="Buscar" /></td>
	  </tr>
	</table>	

</form>

 </td>
 </tr>
   
</table>

<br />

<?php

	if(isset($_POST["porNombre"])){

//		echo "<table width='100%' border='1' cellpadding='4'>";
echo "<table width='80%' border='1' cellpadding='4' cellspacing='0' style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>";
		echo "  <tr>";
		echo "    <td width='200' align='left' bgcolor='#F4F4F4' height='25'><strong>Departamento</strong></td>";
		echo "    <td width='300' align='left' bgcolor='#F4F4F4'><strong>Nombre</strong></td>";
		echo "    <td bgcolor='#F4F4F4'>&nbsp;</td>";
		echo "    <td bgcolor='#F4F4F4'>&nbsp;</td>";		
		echo "  </tr>";
		
		echo "  <tr>";
		echo "    <td align='left'>Secadores</td>";
		echo "    <td align='left'>Rubén Sotelo</td>";
		echo "    <td><a href='#'><u>Modificar</u></a></td>";
		echo "    <td><a href='#'><u>Eliminar</u></a></td>";		
		echo "  </tr>";
		
		echo "  <tr>";
		echo "    <td align='left'>Bodegas</td>";
		echo "    <td align='left'>Javier Zermeño</td>";
		echo "    <td><a href='#'><u>Modificar</u></a></td>";
		echo "    <td><a href='#'><u>Eliminar</u></a></td>";		
		echo "  </tr>";
		
		echo "</table>";
		
	}

?> 



</center>

</font>

<?php
	include("footer.php");
?>

</center>


</body>
</html>
