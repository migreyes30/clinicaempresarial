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
                            <td align="right">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="Jefe de Departamento" Font-Italic="True"></asp:Label>
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
                                <table cellpadding="4" style="width:100%;">
                                    <tr>
                                        <td align="left" width="180">
                                            <asp:Label ID="Label8" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Folio"></asp:Label>
                                        </td>
                                        <td align="left" width="360">
                                            <asp:Label ID="Label9" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Nombre de Cambio"></asp:Label>
                                        </td>
                                        <td align="left" width="180">
                                            <asp:Label ID="Label10" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Área"></asp:Label>
                                        </td>
                                        <td align="left" width="180">
                                            <asp:Label ID="Label11" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Fecha de Aprobación"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="80px" AutoPostBack="False" 
                                                CausesValidation="True"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList9" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="NOMBRE_AREA" 
                                                DataValueField="AREA_ID" >
                                                <asp:ListItem Value="" Selected="True" Enabled="true">Juan</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT     AREA.AREA_ID, AREA.NOMBRE_AREA, DEPARTAMENTO.DEPTO_ID
FROM         AREA INNER JOIN
                      DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID
WHERE     (DEPARTAMENTO.DEPTO_ID = (SELECT     DEPTO_ID
FROM         DEPARTAMENTO
WHERE RESPONSABLE_ID = (SELECT USUARIO_ID FROM USUARIO WHERE NOMBRE_USUARIO = ?)))">
                        <SelectParameters>
                            <asp:ControlParameter DbType="String" Name="usuario" ControlID="usuarioSesion" />
                        </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="Label12" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:Label ID="Label13" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Tipo de Cambio"></asp:Label>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList7" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Pendiente</asp:ListItem>
                                                <asp:ListItem>Rechazado</asp:ListItem>
                                                <asp:ListItem>Autorizado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Cambio</asp:ListItem>
                                                <asp:ListItem>Kaizen</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                           &nbsp;</td>
                                        <td align="right">
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                                Text="Aceptar" />
                                        </td>
                                    </tr>
                                    </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
                                            <asp:Label ID="Label15" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
                                            <asp:Label ID="Label16" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
                                            <asp:Label ID="Label17" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
                                            <asp:Label ID="Label18" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
                                            <asp:Label ID="Label19" runat="server" ForeColor="White"></asp:Label>
                    <asp:SqlDataSource ID="NivelCeroDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ControlCambiosConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [NIVEL0] WHERE [NIVEL0_ID] = @NIVEL0_ID" 
                        InsertCommand="INSERT INTO [NIVEL0] ([STATUS], [AREA_ID], [FECHA_ASIGNACION], [FECHA_APROBACION], [COMENTARIOS], [CAMBIO_ID]) VALUES (@STATUS, @AREA_ID, @FECHA_ASIGNACION, @FECHA_APROBACION, @COMENTARIOS, @CAMBIO_ID)" 
                        
                        ProviderName="<%$ ConnectionStrings:ControlCambiosConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT     CAMBIO.CAMBIO_ID, AREA.NOMBRE_AREA, AREA.AREA_ID, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, CAMBIO.FECHA_APROBACION, 
                      CAMBIO.ESTADO_CAMBIO
FROM         CAMBIO INNER JOIN
                      AREA ON CAMBIO.AREA_ID = AREA.AREA_ID INNER JOIN
                      NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID
WHERE     (CAMBIO.AREA_ID IN
                          (SELECT     AREA_1.AREA_ID
                            FROM          USUARIO INNER JOIN
                                                   DEPARTAMENTO ON USUARIO.USUARIO_ID = DEPARTAMENTO.RESPONSABLE_ID INNER JOIN
                                                   AREA AS AREA_1 ON DEPARTAMENTO.DEPTO_ID = AREA_1.DEPTO_ID

                            WHERE      (USUARIO.NOMBRE_USUARIO = @user) AND CAMBIO.ESTADO_CAMBIO not IN ('Pendiente')))                            
                            AND                            
                            CAMBIO.CAMBIO_ID LIKE '%'+@FOLIO+'%'  AND
                            CAMBIO.NOMBRE_CAMBIO LIKE '%'+@NOMBRE+'%' AND
                            AREA.AREA_ID LIKE '%'+@AREA+'%' AND                            
                            CAMBIO.ESTADO_CAMBIO LIKE '%'+@ESTADO+'%' AND
                            CAMBIO.TIPO_CAMBIO LIKE '%'+@TIPO+'%'                            
                            
                            "                                                                                     
                        UpdateCommand="UPDATE [NIVEL0] SET [STATUS] = @STATUS, [AREA_ID] = @AREA_ID, [FECHA_ASIGNACION] = @FECHA_ASIGNACION, [FECHA_APROBACION] = @FECHA_APROBACION, [COMENTARIOS] = @COMENTARIOS, [CAMBIO_ID] = @CAMBIO_ID WHERE [NIVEL0_ID] = @NIVEL0_ID">
                        <SelectParameters>
                            <asp:SessionParameter DbType="String" Name="user" SessionField="user" />
                            <asp:ControlParameter ControlID="Label14" Name="FOLIO" PropertyName="Text" 
                            Type="String" ConvertEmptyStringToNull="False" />
                            <asp:ControlParameter ControlID="Label15" Name="NOMBRE" PropertyName="Text" 
                            Type="String" ConvertEmptyStringToNull="False" />
                            <asp:ControlParameter ControlID="Label16" Name="AREA" PropertyName="Text" 
                            Type="String" ConvertEmptyStringToNull="False" />
                            <asp:ControlParameter ControlID="Label18" Name="ESTADO" PropertyName="Text" 
                            Type="String" ConvertEmptyStringToNull="False" />
                            <asp:ControlParameter ControlID="Label19" Name="TIPO" PropertyName="Text" 
                            Type="String" ConvertEmptyStringToNull="False" />
                                                       
                            
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                    <asp:GridView ID="GridListaNivelCero" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                        DataSourceID="NivelCeroDataSource" 
                        EmptyDataText="There are no data records to display." 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" CellPadding="4" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Width="880px" PageSize="30">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="CAMBIO_ID" ReadOnly="True" 
                                SortExpression="CAMBIO_ID" >
                            </asp:BoundField>
                            <asp:BoundField DataField="ESTADO_CAMBIO" HeaderText="ESTADO_CAMBIO" 
                                SortExpression="ESTADO_CAMBIO" />
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE_AREA" 
                                SortExpression="NOMBRE_AREA" >
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
                        </Columns>
                    </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br />
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
