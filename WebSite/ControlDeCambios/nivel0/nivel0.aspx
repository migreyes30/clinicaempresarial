<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nivel0.aspx.cs" Inherits="nivel0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                    <br />
                    <asp:GridView ID="GridListaNivelCero" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                        DataSourceID="NivelCeroDataSource" 
                        EmptyDataText="No tienes cambios por aprobar" 
<<<<<<< .mine
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" CellPadding="4" 
                        Font-Names="Arial Narrow" Font-Size="Medium" Width="880px" 
                        ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
=======
                        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                         Font-Names="Arial Narrow" Font-Size="Medium" Width="880px" 
                         ForeColor="#333333" GridLines="None" PageSize="30">
>>>>>>> .r110
                        <Columns>
<<<<<<< .mine
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="FOLIO" ReadOnly="True" 
=======
                            <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" >
                            <HeaderStyle BackColor="#F9F8F4" />
                            </asp:CommandField>
                            <asp:BoundField DataField="CAMBIO_ID" HeaderText="FOLIO" ReadOnly="True" 
>>>>>>> .r110
                                SortExpression="CAMBIO_ID" >
<<<<<<< .mine
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
=======
                             <HeaderStyle BackColor="#F9F8F4" ForeColor="#0B479D" />
>>>>>>> .r110
                            </asp:BoundField>
<<<<<<< .mine
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE DEL CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" >
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="AREA" 
=======
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" >
                             <HeaderStyle BackColor="#F9F8F4" ForeColor="#0B479D" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE AREA" 
>>>>>>> .r110
                                SortExpression="NOMBRE_AREA" >
<<<<<<< .mine
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
=======
                             <HeaderStyle BackColor="#F9F8F4" ForeColor="#0B479D" />
>>>>>>> .r110
                            </asp:BoundField>
<<<<<<< .mine
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO" 
=======
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO_CAMBIO" 
>>>>>>> .r110
                                SortExpression="TIPO_CAMBIO" >
<<<<<<< .mine
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
=======
                            <HeaderStyle BackColor="#F9F8F4" ForeColor="#0B479D" />
>>>>>>> .r110
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_ASIGNACION" HeaderText="FECHA ASIGNACION" 
                                SortExpression="FECHA_ASIGNACION" >
<<<<<<< .mine
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
=======
                             <HeaderStyle BackColor="#F9F8F4" ForeColor="#0B479D" />
>>>>>>> .r110
                            </asp:BoundField>
                        </Columns>
<<<<<<< .mine
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
=======
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
>>>>>>> .r110
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="NivelCeroDataSource">
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
        <br />
    
        </center>
    
    </form>
</body>
</html>
