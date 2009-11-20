<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imagenCambioN0.aspx.cs" Inherits="imagenCambioN0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<img id="imagen_cambio1" alt="" src="imageHandlerN0.ashx?ID=<% Response.Write(Session["cambioID"]); %>" />
</body>
</html>
