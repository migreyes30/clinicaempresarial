<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listaCambios.aspx.cs" Inherits="nivel0_cambioHistorial" %>

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
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="Administrador" Font-Italic="True"></asp:Label>
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
                    bgcolor="#0B479D" height="25" width="180">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
                    &nbsp;</td>
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
                                <asp:Label ID="Label5" runat="server" Text="Detalle Cambio" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label23" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Large" Text="Folio:"></asp:Label>
&nbsp;<asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding="4" style="width:100%;">
                                    <tr>
                                        <td class="style14" align="left" bgcolor="White">
                                            <table width="850">
                                                <tr>
                                                    <td bgcolor="White" width="500">
                                                        <table cellpadding="4" cellspacing="4" width="500">
                                                            <tr>
                                                                <td bgcolor="#F9F9F7" width="150">
                                                                    <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Nombre del Cambio"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Tipo de Cambio"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Departamento"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Área"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Fecha de Aprobación"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Fecha de Recepción"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox7" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Fecha de Realización"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox8" runat="server" BorderColor="#F6F5F0" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="Label39" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                            
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
                                                Width="880px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                <RowStyle BackColor="#EFF3FB" />
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" 
                                                        SortExpression="USUARIO" ReadOnly="True" >
                                                    <HeaderStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA DE APROBACIÓN" 
                                                        SortExpression="FECHA_APROBACION" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" >
                                                    <HeaderStyle Width="330px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <AlternatingRowStyle BackColor="White" />
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
                                                AutoGenerateColumns="False" Width="880px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="#333333" 
                                                GridLines="None">
                                                <RowStyle BackColor="#EFF3FB" />
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" ReadOnly="True" 
                                                        SortExpression="USUARIO" >
                                                    <HeaderStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA DE APROBACIÓN" 
                                                        SortExpression="FECHA" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" >
                                                    <HeaderStyle Width="330px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <AlternatingRowStyle BackColor="White" />
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
                                                AutoGenerateColumns="False" Width="880px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="#333333" 
                                                GridLines="None">
                                                <RowStyle BackColor="#EFF3FB" />
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" ReadOnly="True" 
                                                        SortExpression="USUARIO" >
                                                    <HeaderStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA DE APROBACIÓN" 
                                                        SortExpression="FECHA" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" >
                                                    <HeaderStyle Width="330px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <AlternatingRowStyle BackColor="White" />
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
                                                AutoGenerateColumns="False" Width="880px" CellPadding="4" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="#333333" 
                                                GridLines="None">
                                                <RowStyle BackColor="#EFF3FB" />
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA_SOPORTE" HeaderText="ÁREA DE SOPORTE" 
                                                        SortExpression="NOMBRE_AREA_SOPORTE" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" ReadOnly="True" 
                                                        SortExpression="USUARIO" >
                                                    <HeaderStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA DE APROBACIÓN" 
                                                        SortExpression="FECHA_APROBACION" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" >
                                                    <HeaderStyle Width="330px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <AlternatingRowStyle BackColor="White" />
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
