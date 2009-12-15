<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reporte.aspx.cs" Inherits="admin" %>

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
            width: 116px;
        }
        .style4
        {
            width: 138px;
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
                    <asp:Button ID="Button6" runat="server" Text="Reporte" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
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
                    <asp:Button ID="Button3" runat="server" Text="Lista" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
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
                                    </tr>
                                    <tr>
                                        <td class="style2" align="left">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="01" Selected="True">ENE</asp:ListItem>
                                                <asp:ListItem Value="02">FEB</asp:ListItem>
                                                <asp:ListItem Value="03">MAR</asp:ListItem>
                                                <asp:ListItem Value="04">ABR</asp:ListItem>
                                                <asp:ListItem Value="05">MAY</asp:ListItem>
                                                <asp:ListItem Value="06">JUN</asp:ListItem>
                                                <asp:ListItem Value="07">JUL</asp:ListItem>
                                                <asp:ListItem Value="08">AGO</asp:ListItem>
                                                <asp:ListItem Value="09">SEP</asp:ListItem>
                                                <asp:ListItem Value="10">OCT</asp:ListItem>
                                                <asp:ListItem Value="11">NOV</asp:ListItem>
                                                <asp:ListItem Value="12">DIC</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                >
                                                <asp:ListItem Selected="True">2009</asp:ListItem>
                                                <asp:ListItem>2014</asp:ListItem>
                                                <asp:ListItem>2010</asp:ListItem>
                                                <asp:ListItem>2011</asp:ListItem>
                                                <asp:ListItem>2012</asp:ListItem>
                                                <asp:ListItem>2013</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem Selected="True" Value="01">ENE</asp:ListItem>
                                                <asp:ListItem Value="02">FEB</asp:ListItem>
                                                <asp:ListItem Value="03">MAR</asp:ListItem>
                                                <asp:ListItem Value="04">ABR</asp:ListItem>
                                                <asp:ListItem Value="05">MAY</asp:ListItem>
                                                <asp:ListItem Value="06">JUN</asp:ListItem>
                                                <asp:ListItem Value="07">JUL</asp:ListItem>
                                                <asp:ListItem Value="08">AGO</asp:ListItem>
                                                <asp:ListItem Value="09">SEP</asp:ListItem>
                                                <asp:ListItem Value="10">OCT</asp:ListItem>
                                                <asp:ListItem Value="11">NOV</asp:ListItem>
                                                <asp:ListItem Value="12">DIC</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList4" runat="server">
                                                <asp:ListItem>2009</asp:ListItem>
                                                <asp:ListItem Selected="True">2010</asp:ListItem>
                                                <asp:ListItem>2011</asp:ListItem>
                                                <asp:ListItem>2012</asp:ListItem>
                                                <asp:ListItem>2013</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="style3">
                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true"
                                                oncheckedchanged="CheckBox1_CheckedChanged" Text="Todos" />
                                        </td>
                                        <td align="left">
                                            <asp:Button ID="Button7" runat="server" Text="Aceptar" 
                                                onclick="Button7_Click" Height="26px" />
                                        </td>
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
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br />
                                
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" />                                <table style="width:700px;">
                                    <tr>
                                        <td align="left" bgcolor="#F4F2E8" class="style4" height="25">
                                            <asp:Label ID="Label8" runat="server" Text="Departamento" Font-Bold="True" 
                                                Font-Names="Arial Narrow"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="Cambios"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="En Proceso"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="Aprobados"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label23" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="Rechazados"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label24" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="Cerrados"></asp:Label>
                                        </td>
                                        <td bgcolor="#F4F2E8" width="90">
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Text="Incidentes"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            
                                                <asp:Label ID="Label9" runat="server" Text="Administrativos" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                            
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label30" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label41" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label49" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label57" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label65" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label10" runat="server" Text="Almacén" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label31" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label42" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label50" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label58" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label66" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label11" runat="server" Text="Nave empaque" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label32" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label27" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label43" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label51" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label59" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label67" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label12" runat="server" Text="Making" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label33" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label44" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label52" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                           <asp:Label ID="Label60" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label68" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label13" runat="server" Text="Mezanin" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label34" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label29" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                           <asp:Label ID="Label45" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label53" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label61" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label69" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label14" runat="server" Text="MMO" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label35" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label38" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                           <asp:Label ID="Label46" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label54" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label62" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label70" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label15" runat="server" Text="QA" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label36" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label39" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label47" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label55" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                           <asp:Label ID="Label63" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label71" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label16" runat="server" Text="Servicios" 
                                                Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label37" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label40" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label48" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label56" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label64" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label72" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            &nbsp;</td>
                                        <td align="center">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style4">
                                            <asp:Label ID="Label18" runat="server" Text="Total" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label73" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label74" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label75" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label76" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label77" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label78" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium"></asp:Label></td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                        </tr>
                    </table>
        
                    <br />
                </td>
            </tr>
        </table>
        <br />
    
        </center>
    
    </form>
</body>
</html>
