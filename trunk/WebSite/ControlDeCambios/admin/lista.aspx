<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lista.aspx.cs" Inherits="lista" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 317px;
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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/logoPG.jpg" 
                        style="margin-left: 0px" />
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
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Width="50px" 
                                    style="height: 26px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1" align="right">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="Administrador" Font-Italic="True"></asp:Label>
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
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button6" runat="server" Text="Reporte" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button2" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button2_Click" />
                </td>
                <td colspan="2" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button3" runat="server" Text="Lista" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button3_Click" />
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button4" runat="server" Text="Incidentes" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button4_Click" />
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button5" runat="server" Text="Usuarios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <table cellpadding="4" style="width:100%;">
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label5" runat="server" Text="Reporte General" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#F7F7F3">
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
                                                Font-Size="Medium" Text="Tipo de Cambio"></asp:Label>
                                        </td>
                                        <td align="left" width="180">
                                            <asp:Label ID="Label11" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Fecha"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList6" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="Cambio">Cambio</asp:ListItem>
                                                <asp:ListItem Value="Kaizen">Kaizen</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#F7F7F3">
                                <table style="width:100%;">
                                    <tr>
                                        <td width="180">
                                            <asp:Label ID="Label12" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado Cambio"></asp:Label>
                                        </td>
                                        <td width="180">
                                            <asp:Label ID="Label13" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado N0"></asp:Label>
                                        </td>
                                        <td width="180">
                                            <asp:Label ID="Label14" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado QA"></asp:Label>
                                        </td>
                                        <td width="180">
                                            <asp:Label ID="Label15" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado HSE"></asp:Label>
                                        </td>
                                        <td width="180">
                                            <asp:Label ID="Label16" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado N2"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownList5" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Pendiente</asp:ListItem>
                                                <asp:ListItem>Proceso</asp:ListItem>
                                                <asp:ListItem>Autorizado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                                                <asp:ListItem Value="Autorizado">Autorizado</asp:ListItem>
                                                <asp:ListItem Value="Rechazado">Rechazado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList7" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                                                <asp:ListItem Value="Autorizado">Autorizado</asp:ListItem>
                                                <asp:ListItem Value="Rechazado">Rechazado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                                                <asp:ListItem Value="Autorizado">Autorizado</asp:ListItem>
                                                <asp:ListItem Value="Rechazado">Rechazado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList9" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                                                <asp:ListItem Value="Autorizado">Autorizado</asp:ListItem>
                                                <asp:ListItem Value="Rechazado">Rechazado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click1" 
                                                Text="Aceptar" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <table style="width:100%;">
                                    <tr>
                                        <td height="20">
                                            <asp:Label ID="Label17" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label24" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                    
                                    SelectCommand="SELECT     CAMBIO.CAMBIO_ID, CAMBIO.NOMBRE_CAMBIO, CAMBIO.TIPO_CAMBIO, CAMBIO.ESTADO_CAMBIO, NIVEL0.STATUS AS NIVEL0, 
                      NIVEL1_HSE.STATUS AS HSE, NIVEL1_QA.STATUS AS QA, NIVEL2_STATUS.STATUS AS NIVEL2
FROM         CAMBIO INNER JOIN
                      NIVEL0 ON CAMBIO.CAMBIO_ID = NIVEL0.CAMBIO_ID INNER JOIN
                      NIVEL1_HSE ON CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID INNER JOIN
                      NIVEL1_QA ON CAMBIO.CAMBIO_ID = NIVEL1_QA.CAMBIO_ID INNER JOIN
                      NIVEL2_STATUS ON CAMBIO.CAMBIO_ID = NIVEL2_STATUS.CAMBIO_ID
                      
                      WHERE 
                      CAMBIO.CAMBIO_ID LIKE '%' + ? + '%'
                    AND CAMBIO.NOMBRE_CAMBIO LIKE '%' + ? + '%'
                    AND CAMBIO.TIPO_CAMBIO LIKE '%' + ? + '%'
                    AND CAMBIO.ESTADO_CAMBIO LIKE '%' + ? + '%'
                    AND NIVEL0.STATUS LIKE '%' + ? + '%'
                    AND NIVEL1_HSE.STATUS LIKE '%' + ? + '%'
                    AND NIVEL1_QA.STATUS LIKE '%' + ? + '%'
                    AND NIVEL2_STATUS.STATUS LIKE '%' + ? + '%'
                      
                      
                      "
                      
                    >
                    
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label17" Name="FOLIO" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label18" Name="NOMBRE" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label19" Name="TIPO_CAMBIO" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label20" Name="EDO_CAMBIO" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label21" Name="EDO_N0" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label22" Name="EDO_QA" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />                   
                    <asp:ControlParameter ControlID="Label23" Name="EDO_HSE" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />           
                    <asp:ControlParameter ControlID="Label24" Name="EDO_N2" PropertyName="Text" 
                    Type="String" ConvertEmptyStringToNull="False" />
                </SelectParameters>
                    
                    
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                                    DataSourceID="SqlDataSource1" Width="880px" CellPadding="4" 
                                    Font-Names="Arial Narrow" Font-Size="Medium" HorizontalAlign="Left" 
                                    PageSize="30" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                    ForeColor="#333333" GridLines="None">
                                    <RowStyle BackColor="#EFF3FB" />
                                    <Columns>
                                        
                                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                                        <asp:BoundField DataField="CAMBIO_ID" HeaderText="FOLIO" ReadOnly="True" 
                                            SortExpression="CAMBIO_ID" />
                                        <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE DE CAMBIO" 
                                            SortExpression="NOMBRE_CAMBIO" />
                                        <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO DE CAMBIO" 
                                            SortExpression="TIPO_CAMBIO" />
                                        <asp:BoundField DataField="ESTADO_CAMBIO" HeaderText="ESTADO" 
                                            SortExpression="ESTADO_CAMBIO" />
                                        <asp:BoundField DataField="NIVEL0" HeaderText="NIVEL0" 
                                            SortExpression="NIVEL0" />
                                        <asp:BoundField HeaderText="HSE" DataField="HSE" SortExpression="HSE"/>
                                        <asp:BoundField HeaderText="QA" DataField="QA" SortExpression="QA"/>
                                        <asp:BoundField HeaderText="NIVEL2" DataField="NIVEL2" SortExpression="NIVEL2"/>
                                    </Columns>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                                <br />
                            </td>
                        </tr>
                    </table>
        
                    <br />
                </td>
            </tr>
        </table>
        <br />
        
        <br />
        <br />
    
        </center>
    
    </form>
</body>
</html>
