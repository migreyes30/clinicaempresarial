<%@ Page Language="C#" AutoEventWireup="true" CodeFile="historial.aspx.cs" Inherits="nivel0_historial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style16
        {
            width: 706px;
        }
        .style17
        {
            height: 24px;
        }
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    
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
                            <td align="right" class="style17">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="QA" Font-Italic="True"></asp:Label>
                            </td>
                            <td class="style17">
                                </td>
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
                    <asp:Button ID="Button6" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    width="180">
                    <asp:Button ID="Button2" runat="server" Text="Historial" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button2_Click" />
                </td>
                <td colspan="2" align="center" 
                    
                    
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
                    <table cellpadding="4" style="width:100%;">
                        <tr>
                            <td align="left">
                                <table cellpadding="0" cellspacing="0" style="width: 100%; height: 29px;">
                                    <tr>
                                        <td class="style16">
                                <asp:Label ID="Label5" runat="server" Text="Historial" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width:100%;">
                                    <tr>
                                        <td>
                                            Fecha</td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                    <asp:GridView ID="GridListaNivelCero" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                        DataSourceID="NivelCeroDataSource" 
                        EmptyDataText="There are no data records to display." 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" CellPadding="4" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Width="880px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ESTADO_CAMBIO" HeaderText="ESTADO_CAMBIO" 
                                SortExpression="ESTADO_CAMBIO" />
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="CAMBIO_ID" 
                                SortExpression="CAMBIO_ID" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE_CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" >
                            </asp:BoundField>
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO_CAMBIO" 
                                SortExpression="TIPO_CAMBIO" >
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA_APROBACION" 
                                SortExpression="FECHA_APROBACION" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE_AREA" 
                                SortExpression="NOMBRE_AREA" >
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                    <asp:SqlDataSource ID="NivelCeroDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ControlCambiosConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [NIVEL0] WHERE [NIVEL0_ID] = @NIVEL0_ID" 
                        InsertCommand="INSERT INTO [NIVEL0] ([STATUS], [AREA_ID], [FECHA_ASIGNACION], [FECHA_APROBACION], [COMENTARIOS], [CAMBIO_ID]) VALUES (@STATUS, @AREA_ID, @FECHA_ASIGNACION, @FECHA_APROBACION, @COMENTARIOS, @CAMBIO_ID)" 
                        
                        ProviderName="<%$ ConnectionStrings:ControlCambiosConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT     CAMBIO.ESTADO_CAMBIO, NIVEL1_QA.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, CAMBIO.FECHA_APROBACION, AREA.NOMBRE_AREA                      
FROM         CAMBIO INNER JOIN
                      NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID INNER JOIN
                      AREA ON NIVEL1_QA.AREA_ID = AREA.AREA_ID" 
                        
                        
                                    
                                    
                                    
                                    UpdateCommand="UPDATE [NIVEL0] SET [STATUS] = @STATUS, [AREA_ID] = @AREA_ID, [FECHA_ASIGNACION] = @FECHA_ASIGNACION, [FECHA_APROBACION] = @FECHA_APROBACION, [COMENTARIOS] = @COMENTARIOS, [CAMBIO_ID] = @CAMBIO_ID WHERE [NIVEL0_ID] = @NIVEL0_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="NIVEL0_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="STATUS" Type="String" />
                            <asp:Parameter Name="AREA_ID" Type="Int32" />
                            <asp:Parameter Name="FECHA_ASIGNACION" Type="DateTime" />
                            <asp:Parameter Name="FECHA_APROBACION" Type="DateTime" />
                            <asp:Parameter Name="COMENTARIOS" Type="String" />
                            <asp:Parameter Name="CAMBIO_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="STATUS" Type="String" />
                            <asp:Parameter Name="AREA_ID" Type="Int32" />
                            <asp:Parameter Name="FECHA_ASIGNACION" Type="DateTime" />
                            <asp:Parameter Name="FECHA_APROBACION" Type="DateTime" />
                            <asp:Parameter Name="COMENTARIOS" Type="String" />
                            <asp:Parameter Name="CAMBIO_ID" Type="Int32" />
                            <asp:Parameter Name="NIVEL0_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
        
                </td>
            </tr>
        </table>
        </form>
</center>        
</body>
</html>
