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
                                &nbsp;</td>
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
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" height="25" width="180">
                    &nbsp;</td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
                    &nbsp;</td>
                <td colspan="1" align="center" 
                    
                    
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
                                            &nbsp;</td>
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
                                        <td class="style14" align="left">
                                                        <table cellpadding="4" cellspacing="4" width="650">
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label51" runat="server" Text="Nombre de cambio" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="400px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label52" runat="server" Text="Tipo de cambio" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label53" runat="server" Text="Departamento" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label31" runat="server" Text="Área" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label32" runat="server" Text="Fecha Asignación" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="150" bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label34" runat="server" Text="Imagen" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton1_Click" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"><asp:Label ID="Label33" runat="server"></asp:Label>
</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                            
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="center">
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Large"></asp:Label>
                                            &nbsp;
&nbsp;&nbsp;
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
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" ReadOnly="True" 
                                                        SortExpression="USUARIO" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA" 
                                                        SortExpression="FECHA_APROBACION" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" >
                                                    <ControlStyle BackColor="Yellow" />
                                                    <HeaderStyle Width="350px" />
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
                                                    <asp:BoundField DataField="USUARIO" HeaderText="REPONSABLE" 
                                                        SortExpression="USUARIO" ReadOnly="True" >
                                                    <HeaderStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" 
                                                        SortExpression="FECHA" >
                                                    <HeaderStyle Width="100px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" >
                                                    <HeaderStyle Width="350px" />
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
                            WHERE      (PERFIL_USUARIO = 'n1hse') and USUARIO.PRINCIPAL = 'true') AS USUARIO, NIVEL1_HSE.CAMBIO_ID
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
                                                        SortExpression="NOMBRE_AREA" />
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" 
                                                        SortExpression="USUARIO" ReadOnly="True" />
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" />
                                                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" 
                                                        SortExpression="FECHA" />
                                                    <asp:BoundField DataField="COMMENTS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMMENTS" />
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
                            WHERE      (PERFIL_USUARIO = 'n1qa') and USUARIO.PRINCIPAL = 'true') AS USUARIO, NIVEL1_QA.CAMBIO_ID
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
                                                    <asp:BoundField DataField="NOMBRE_AREA_SOPORTE" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA_SOPORTE" />
                                                    <asp:BoundField DataField="USUARIO" HeaderText="RESPONSABLE" ReadOnly="True" 
                                                        SortExpression="USUARIO" />
                                                    <asp:BoundField DataField="STATUS" HeaderText="ESTADO" 
                                                        SortExpression="STATUS" />
                                                    <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA" 
                                                        SortExpression="FECHA_APROBACION" />
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS" />
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
        
                </td>
            </tr>
        </table>
        
        </form>
</center>        
</body>
</html>
