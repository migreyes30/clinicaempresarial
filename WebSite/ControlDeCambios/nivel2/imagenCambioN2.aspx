<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imagenCambioN2.aspx.cs" Inherits="nivel2_imagenCambioN2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<img id="imagen_cambio1" alt="" src="imageHandlerN2.ashx?ID=<% Response.Write(Session["cambioID"]); %>" />
</body>
</html>
