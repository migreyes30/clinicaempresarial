<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">

<center>

<?php
	include("headerIndex.php");
?>

Redireccionando...

<?php


	if($_POST["user"]=="ana"){
	
		echo "<script>window.location='reportes.php'</script>";	
	}else
	
	if($_POST["user"]=="nivel0"){
	
		echo "<script>window.location='listaNivel.php?n=0'</script>";
	}else
	
	if($_POST["user"]=="nivel1"){
	
		echo "<script>window.location='listaNivel.php?n=1'</script>";			
	}else
	
	if($_POST["user"]=="nivel2"){	
	
		echo "<script>window.location='listaNivel.php?n=2'</script>";				
	}else{
	
		echo "<script>window.location='index.php'</script>";					
	}



	echo "Nombre: ".$_POST["user"];
	echo "     Pass: ".$_POST["passw"];	

	include("footer.php");
?>

</center>

</body>
</html>
