<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cambioHistorial.aspx.cs" Inherits="nivel0_cambioHistorial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style16
        {
            width: 706px;
        }
        .style14
        {
            width: 592px;
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
                                    Text="HSE" Font-Italic="True"></asp:Label>
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
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button6" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button2" runat="server" Text="Historial" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
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
                                <asp:Label ID="Label5" runat="server" Text="Agregar Comentario" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label23" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Large" Text="Folio:"></asp:Label>
&nbsp;<asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding="4" style="width:100%;">
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <br />
                                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                                                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                                                CellPadding="3" GridLines="Vertical">
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                <EditItemTemplate>
                                                    NOMBRE_CAMBIO:
                                                    <asp:TextBox ID="NOMBRE_CAMBIOTextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_CAMBIO") %>' />
                                                    <br />
                                                    TIPO_CAMBIO:
                                                    <asp:TextBox ID="TIPO_CAMBIOTextBox" runat="server" 
                                                        Text='<%# Bind("TIPO_CAMBIO") %>' />
                                                    <br />
                                                    NOMBRE_AREA:
                                                    <asp:TextBox ID="NOMBRE_AREATextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_AREA") %>' />
                                                    <br />
                                                    FECHA_ASIGNACION:
                                                    <asp:TextBox ID="FECHA_ASIGNACIONTextBox" runat="server" 
                                                        Text='<%# Bind("FECHA_ASIGNACION") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                        CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    NOMBRE_CAMBIO:
                                                    <asp:TextBox ID="NOMBRE_CAMBIOTextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_CAMBIO") %>' />
                                                    <br />
                                                    TIPO_CAMBIO:
                                                    <asp:TextBox ID="TIPO_CAMBIOTextBox" runat="server" 
                                                        Text='<%# Bind("TIPO_CAMBIO") %>' />
                                                    <br />
                                                    NOMBRE_AREA:
                                                    <asp:TextBox ID="NOMBRE_AREATextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_AREA") %>' />
                                                    <br />
                                                    FECHA_ASIGNACION:
                                                    <asp:TextBox ID="FECHA_ASIGNACIONTextBox" runat="server" 
                                                        Text='<%# Bind("FECHA_ASIGNACION") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                        CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    NOMBRE_CAMBIO:
                                                    <asp:Label ID="NOMBRE_CAMBIOLabel" runat="server" 
                                                        Text='<%# Bind("NOMBRE_CAMBIO") %>' />
                                                    <br />
                                                    TIPO_CAMBIO:
                                                    <asp:Label ID="TIPO_CAMBIOLabel" runat="server" 
                                                        Text='<%# Bind("TIPO_CAMBIO") %>' />
                                                    <br />
                                                    NOMBRE_AREA:
                                                    <asp:Label ID="NOMBRE_AREALabel" runat="server" 
                                                        Text='<%# Bind("NOMBRE_AREA") %>' />
                                                    <br />
                                                    FECHA_ASIGNACION:
                                                    <asp:Label ID="FECHA_ASIGNACIONLabel" runat="server" 
                                                        Text='<%# Bind("FECHA_ASIGNACION") %>' />
                                                    <br />
                                                </ItemTemplate>
                                                            
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                            
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="select NOMBRE_CAMBIO, TIPO_CAMBIO, AREA.NOMBRE_AREA, NIVEL1_HSE.FECHA_ASIGNACION  from CAMBIO, NIVEL1_HSE,  AREA
 where CAMBIO.CAMBIO_ID = ? and CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID and AREA.AREA_ID = CAMBIO.AREA_ID;">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" 
                                                        PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                        
                                            </asp:SqlDataSource>
                                            
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="center">
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="left">
                                            <asp:Label ID="Label27" runat="server" Text="Nivel Cero" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="center">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataSourceID="SqlDataSource2" Font-Names="Arial Narrow" Font-Size="Medium" 
                                                Width="850px">
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="LÍDER" ReadOnly="True" 
                                                        SortExpression="USUARIO" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA" 
                                                        SortExpression="FECHA_APROBACION" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" >
                                                    <ControlStyle BackColor="Yellow" />
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="350px" />
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT     AREA.NOMBRE_AREA, NIVEL0.STATUS, NIVEL0.FECHA_APROBACION, NIVEL0.COMENTARIOS,
                          (SELECT     NOMBRE_USUARIO
                            FROM          USUARIO
                            WHERE      (USUARIO_ID = DEPARTAMENTO.RESPONSABLE_ID)) AS USUARIO
FROM         AREA INNER JOIN
                      NIVEL0 ON AREA.AREA_ID = NIVEL0.AREA_ID INNER JOIN
                      DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID
WHERE     (NIVEL0.CAMBIO_ID = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="left">
                                            <asp:Label ID="Label28" runat="server" Text="Nivel 1 HSE" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="center">
                                            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" 
                                                AutoGenerateColumns="False" Width="850px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium">
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="LÍDER" 
                                                        SortExpression="USUARIO" ReadOnly="True" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" 
                                                        SortExpression="FECHA" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" >
                                                    <HeaderStyle BackColor="#009933" ForeColor="White" Width="350px" />
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT     NIVEL1_HSE.STATUS, NIVEL1_HSE.FECHA_APROBACION AS FECHA, NIVEL1_HSE.COMENTARIOS AS COMMENTS, AREA.NOMBRE_AREA,
                          (SELECT     NOMBRE_USUARIO
                            FROM          USUARIO
                            WHERE      (PERFIL_USUARIO = 'n1hse')) AS USUARIO, NIVEL1_HSE.CAMBIO_ID
FROM         NIVEL1_HSE INNER JOIN
                      AREA ON NIVEL1_HSE.AREA_ID = AREA.AREA_ID INNER JOIN
                      DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID
WHERE     (NIVEL1_HSE.CAMBIO_ID = ?)">
                                            
                                            <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="left">
                                            <asp:Label ID="Label29" runat="server" Text="Nivel 1 QA" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="center">
                                            <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource4" 
                                                AutoGenerateColumns="False" Width="850px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium">
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" />
                                                    <asp:BoundField DataField="USUARIO" HeaderText="LÍDER" 
                                                        SortExpression="USUARIO" ReadOnly="True" />
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" />
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" 
                                                        SortExpression="FECHA" />
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT     NIVEL1_QA.STATUS, NIVEL1_QA.FECHA_APROBACION AS FECHA, NIVEL1_QA.COMENTARIOS AS COMMENTS, AREA.NOMBRE_AREA,
                          (SELECT     NOMBRE_USUARIO
                            FROM          USUARIO
                            WHERE      (PERFIL_USUARIO = 'n1qa')) AS USUARIO, NIVEL1_QA.CAMBIO_ID
FROM         NIVEL1_QA INNER JOIN
                      AREA ON NIVEL1_QA.AREA_ID = AREA.AREA_ID INNER JOIN
                      DEPARTAMENTO ON AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID
WHERE     (NIVEL1_QA.CAMBIO_ID = ?)">
                                            
                                            <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="left">
                                            <asp:Label ID="Label30" runat="server" Text="Nicel 2" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="White" align="center">
                                            <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource5" 
                                                AutoGenerateColumns="False" Width="850px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium">
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA_SOPORTE" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA_SOPORTE" />
                                                    <asp:BoundField DataField="USUARIO" HeaderText="LÍDER" ReadOnly="True" 
                                                        SortExpression="USUARIO" />
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" />
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA" 
                                                        SortExpression="FECHA_APROBACION" />
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT AREAS_SOPORTE.NOMBRE_AREA_SOPORTE, (SELECT NOMBRE_USUARIO FROM USUARIO WHERE USUARIO_ID = AREAS_SOPORTE.REPONSABLE_ID) AS USUARIO, NIVEL2.STATUS, NIVEL2.FECHA_APROBACION, NIVEL2.COMENTARIOS, NIVEL2.CAMBIO_ID FROM AREAS_SOPORTE INNER JOIN NIVEL2 ON AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID WHERE (NIVEL2.CAMBIO_ID = ?)">
                                            
                                            <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>                                            
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                                <table style="width:100%;" cellpadding="4">
                                    <tr>
                                        <td align="left">
                                            
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                &nbsp;<br />
                            </td>
                        </tr>
                    </table>
        
                    <br />
                </td>
            </tr>
        </table>
        
        </form>
</center>        
</body>
</html>
