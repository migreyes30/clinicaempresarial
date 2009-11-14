<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nivel0.aspx.cs" Inherits="nivel0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 389px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <center>
    
        <table style="width:800px;" cellpadding="0" cellspacing="0" border="0">
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
                            <td align="right" class="style1">
                                <asp:Label ID="Label3" runat="server" Text="Bienvenido(a): " 
                                    Font-Names="Arial Narrow"></asp:Label>
        <asp:Label ID="usuarioSesion" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>                
        
                            </td>
                            <td align="right">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Salir" BackColor="#F9F9F7" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Width="50px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1" align="right">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="Jede de Departamento" Font-Italic="True"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
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
                    width="160">
                    <asp:Button ID="Button6" runat="server" Text="Reporte" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="160px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    width="160">
                    <asp:Button ID="Button2" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="160px" 
                        BorderWidth="1px" Height="25px" />
                </td>
                <td colspan="2" align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="6" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <br />
                    <asp:GridView ID="GridListaNivelCero" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                        DataSourceID="NivelCeroDataSource" 
                        EmptyDataText="There are no data records to display." 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="CAMBIO_ID" ReadOnly="True" 
                                SortExpression="CAMBIO_ID" Visible="False" />
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE_AREA" 
                                SortExpression="NOMBRE_AREA" />
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE_CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" />
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO_CAMBIO" 
                                SortExpression="TIPO_CAMBIO" />
                            <asp:BoundField DataField="FECHA_RECEPCION" HeaderText="FECHA_RECEPCION" 
                                SortExpression="FECHA_RECEPCION" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="NivelCeroDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ControlCambiosConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [NIVEL0] WHERE [NIVEL0_ID] = @NIVEL0_ID" 
                        InsertCommand="INSERT INTO [NIVEL0] ([STATUS], [AREA_ID], [FECHA_ASIGNACION], [FECHA_APROBACION], [COMENTARIOS], [CAMBIO_ID]) VALUES (@STATUS, @AREA_ID, @FECHA_ASIGNACION, @FECHA_APROBACION, @COMENTARIOS, @CAMBIO_ID)" 
                        ProviderName="<%$ ConnectionStrings:ControlCambiosConnectionString1.ProviderName %>" SelectCommand="select CAMBIO_ID, AREA.NOMBRE_AREA, NOMBRE_CAMBIO, TIPO_CAMBIO, FECHA_RECEPCION from CAMBIO, AREA where CAMBIO.AREA_ID in (
select AREA.AREA_ID from USUARIO, AREA, DEPARTAMENTO where NOMBRE_USUARIO = @user and DEPARTAMENTO.REPONSABLE_ID = USUARIO.USUARIO_ID 
	and DEPARTAMENTO.DEPTO_ID = AREA.DEPTO_ID
	) and AREA.AREA_ID = CAMBIO.AREA_ID;" 
                        UpdateCommand="UPDATE [NIVEL0] SET [STATUS] = @STATUS, [AREA_ID] = @AREA_ID, [FECHA_ASIGNACION] = @FECHA_ASIGNACION, [FECHA_APROBACION] = @FECHA_APROBACION, [COMENTARIOS] = @COMENTARIOS, [CAMBIO_ID] = @CAMBIO_ID WHERE [NIVEL0_ID] = @NIVEL0_ID">
                        <SelectParameters>
                            <asp:SessionParameter DbType="String" Name="user" SessionField="user" />
                        </SelectParameters>
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
                    <br />
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
