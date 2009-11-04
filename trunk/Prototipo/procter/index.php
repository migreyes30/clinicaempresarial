<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Administración de Cambios</title>
<script type="text/javascript" src="menu1/stmenu.js"></script>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">

<center>

<?php
	include("headerIndex.php");
?>

<br />
<br />

<center>
<font face="Arial, Helvetica, sans-serif" size="-1">
<form action="redireccionar.php" method="post">

<table width="300" border="0" cellpadding="8" cellspacing="0" style='border-width: 1px; border-spacing: ; border-style: ridge; border-color:#EEEEEE; border-collapse: separate; background-color: white;'>
  <tr>
    <td width="150" bgcolor="#F0F0F0" align="left"><strong>Inicio de Sesión</strong></td>
    <td bgcolor="#F0F0F0">&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Usuario</td>
    <td align="left"><input type="text" size="15" name="user" /></td>
  </tr>
  <tr>
    <td align="right">Contraseña</td>
    <td align="left"><input type="password" size="15" name="passw" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="left"><input type="submit" value="Entrar" style="background:#0A479C; color:#FFFFFF; border:none; cursor:pointer;" /></td>
  </tr>
</table>
</form>
</font>
</center>

<br />
<br />

<?php
	include("footer.php");
?>

</center>


</body>
</html>
