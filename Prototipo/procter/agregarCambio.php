<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Agregar Cambios</title>
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
	Agregar Nuevo Cambio
	</font>
	</td>
  </tr>  
</table>

<br />

<center>

<table width="100%" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>

	<tr><td align="center">

	<table width="100%" border="0">

  <tr>
    <td width="400" valign="top">
	
		<table width="100%" border="0">
		  <tr>
			<td align="left" valign="middle">Nombre del cambio</td>
			<td align="left"><input type="text" name="" size="37" /></td>
		  </tr>
		  <tr>
			<td align="left" valign="middle">Tipo</td>
			<td align="left">
				<select name="">
					<option value="">Cambio</option>
					<option value="">Keizen</option>
				</select>	
			</td>
		
		  </tr>
		  <tr>
			<td align="left" valign="middle">Fecha planeada para el cambio</td>
			<td align="left"><input type="text" maxlength="8" size="8" name="" /></td>
		  </tr>
		</table>
		
	</td>
    <td valign="top">
	
		<table width="100%" border="0">
		  <tr>
			<td align="left" valign="middle">Departamento</td>
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
		  </tr>
		  
		  <tr>
			<td align="left" valign="middle">Área</td>
			<td align="left">
			
				<select name="">
					<option value="">Área Dep 1</option>
					<option value="">Área Dep 1</option>
				</select>
						
			</td>
		  </tr>
		  
		  
		  <tr>
			<td align="left" valign="middle">Originador</td>
			<td align="left"><input type="text" name="" size="37" /></td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>			
		  </tr>
		</table>
	
	
	</td>
  </tr>

	</table>

	</td></tr>

</table>

</center>

<br />

<table width="100%" border="0" cellpadding="2">
  <tr>
    <td width="50%" height="20" bgcolor="#EAEAEA" align="center"><strong>Tipo</strong></td>
    <td width="10%" bgcolor="#EAEAEA" align="center"><strong>SI</strong></td>
    <td bgcolor="#EAEAEA"></td>
    <td bgcolor="#EAEAEA"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFDD">Diagrama de flujo DTI's / Layouts</td>
    <td align="center" bgcolor="#FFFFDD"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#F5FAFF">Diagramas eléctricos</td>
    <td align="center" bgcolor="#F5FAFF"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFDD">Diagramas lógicos / URD's</td>
    <td align="center" bgcolor="#FFFFDD"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#F5FAFF">SOP's</td>
    <td align="center" bgcolor="#F5FAFF"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFDD">IQ / OQ</td>
    <td align="center" bgcolor="#FFFFDD"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#F5FAFF">PQ</td>
    <td align="center" bgcolor="#F5FAFF"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFDD">Prácticas seguras</td>
    <td align="center" bgcolor="#FFFFDD"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#F5FAFF">Manufacturing Standards / FC's / MPMS's / IPS / IPMS / IRMS</td>
    <td align="center" bgcolor="#F5FAFF"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFDD">Licencias / Permisos</td>
    <td align="center" bgcolor="#FFFFDD"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#F5FAFF">Recetas de amalgamas</td>
    <td bgcolor="#F5FAFF" align="center"><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


<br />

<center>


<table width="100%" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>

  <tr>
    <td align="right" valign="top" width="100">Descripcion</td>
    <td align="left"><textarea name="" cols="80" rows="8"></textarea></td>
  </tr>
  <tr>
    <td align="right" valign="top" >Imagen</td>
    <td align="left"><input type="file" name="" size="50" /></td>
  </tr>

</table>
<br />
<table width="100%" border="0">
  <tr>
    <td width="600"></td>
    <td width="100"><input type="submit" name="" value="Cancelar" style="background:#0A479C; 
					color:#FFFFFF; border:none; cursor:pointer; font-weight:600;" /></td>
    <td width="100"><input type="submit" name="" value="Aceptar" style="background:#0A479C; 
					color:#FFFFFF; border:none; cursor:pointer; font-weight:600;" /></td>	
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
