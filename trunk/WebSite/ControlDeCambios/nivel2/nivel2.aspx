<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nivel2.aspx.cs" Inherits="nivel1qa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 373px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <center>
    
        <table style="width:900px;" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td colspan="3" align="left" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    height="100">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/logoPG.jpg" />
                </td>
                <td colspan="3" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    height="100">
                    <table style="width:100%;">
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label3" runat="server" Text="Bienvenido(a): " 
                                    Font-Names="Arial Narrow"></asp:Label>
        <asp:Label ID="usuarioSesion" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>                
        
                            </td>
                            <td align="right" width="100">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Salir" BackColor="#F9F9F7" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Width="50px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="perfilLabel" runat="server" Font-Names="Arial Narrow" 
                                    Text="Área de Soporte" Font-Italic="True"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td width="80">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    width="180">
                    <asp:Button ID="Button6" runat="server" Text="Cambios" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    width="180">
                    <asp:Button ID="Button2" runat="server" Text="Historial" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button2_Click" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="6" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSourceQA" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        AllowSorting="True" CellPadding="4" Font-Names="Arial Narrow" 
                        Font-Size="Medium" Width="880px">
                        <Columns>
                            <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                                SortExpression="STATUS" />
                            <asp:BoundField DataField="FECHA_ASIGNACION" HeaderText="FECHA_ASIGNACION" 
                                SortExpression="FECHA_ASIGNACION" />
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="CAMBIO_ID" 
                                SortExpression="CAMBIO_ID" />
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE_CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" />
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO_CAMBIO" 
                                SortExpression="TIPO_CAMBIO" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSourceQA" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                        
                        
                        
                        SelectCommand="SELECT NIVEL2.STATUS, NIVEL2.FECHA_ASIGNACION, NIVEL2.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO FROM NIVEL2 INNER JOIN AREAS_SOPORTE ON NIVEL2.AREA_SOPORTE_ID = AREAS_SOPORTE.AREA_SOPORTE_ID INNER JOIN CAMBIO ON NIVEL2.CAMBIO_ID = CAMBIO.CAMBIO_ID WHERE (NIVEL2.STATUS = 'Pendiente') AND (AREAS_SOPORTE.REPONSABLE_ID = (SELECT USUARIO_ID FROM USUARIO WHERE (NOMBRE_USUARIO = ?))) OR (NIVEL2.STATUS = 'Pendiente') AND (AREAS_SOPORTE.BACKUP_ID = (SELECT USUARIO_ID FROM USUARIO AS USUARIO_1 WHERE (NOMBRE_USUARIO = ?)))" >
                         <SelectParameters>
                             <asp:ControlParameter ControlID="usuarioSesion" DbType="String" Name="user" 
                                 PropertyName="Text" />
                             <asp:ControlParameter ControlID="usuarioSesion" Name="?" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
    
                    <br />
        
                    <br />
                </td>
            </tr>
        </table>
        <br />
    
        </center>
    
    </form>
</body>
</html>
