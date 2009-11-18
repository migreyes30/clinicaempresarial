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
        .style2
        {
            width: 144px;
        }
        .style3
        {
            width: 94px;
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
                            <td>
                                <table cellpadding="4" style="width:100%;">
                                    <tr>
                                        <td class="style2" align="left">
                                            <asp:Label ID="Label6" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Fecha Inicio"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:Label ID="Label7" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Fecha Fin"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                    SelectCommand="SELECT [CAMBIO_ID], [NOMBRE_CAMBIO], [TIPO_CAMBIO], [FECHA_RECEPCION], [ESTADO_CAMBIO] FROM [CAMBIO]">
                                </asp:SqlDataSource>
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                                    DataSourceID="SqlDataSource1" Width="880" CellPadding="4" CellSpacing="2" 
                                    Font-Names="Arial Narrow" Font-Size="Medium" HorizontalAlign="Left" 
                                    PageSize="20">
                                    <Columns>
                                        
                                        <asp:CommandField SelectText="Ver" ShowSelectButton="True"  />
                                        <asp:BoundField DataField="CAMBIO_ID" HeaderText="Folio" 
                                            InsertVisible="False" ReadOnly="True" SortExpression="CAMBIO_ID" />
                                        <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="Nombre de Cambio" 
                                            SortExpression="NOMBRE_CAMBIO" />
                                        <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="Tipo" 
                                            SortExpression="TIPO_CAMBIO" />
                                        <asp:BoundField DataField="FECHA_RECEPCION" HeaderText="Fecha" 
                                            SortExpression="FECHA_RECEPCION" />
                                        <asp:BoundField DataField="ESTADO_CAMBIO" HeaderText="Estado" 
                                            SortExpression="ESTADO_CAMBIO" />
                                        <asp:BoundField HeaderText="Nivel 0"/>
                                        <asp:BoundField HeaderText="Nivel 1"/>
                                        <asp:BoundField HeaderText="Nivel 2"/>
                                    </Columns>
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
