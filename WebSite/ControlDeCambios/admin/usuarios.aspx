<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usuarios.aspx.cs" Inherits="admin_usuarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            width: 317px;
        }
        #TextArea1
        {
            width: 447px;
            height: 147px;
        }
        .style2
        {
            width: 179px;
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
                    <asp:Button ID="Button5" runat="server" Text="Usuarios" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
                        BorderWidth="1px" Height="25px" onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <table cellpadding="4" style="width:100%;">
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label5" runat="server" Text="Usuarios" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding="4" cellspacing="2" style="width:100%;">
                                    <tr>
                                        <td align="left" class="style2">
                                            <asp:Label ID="Label6" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Seleccione Perfil"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">--Seleccionar--</asp:ListItem>
                                                <asp:ListItem Value="0">Administrador</asp:ListItem>
                                                <asp:ListItem Value="1">Nivel 0</asp:ListItem>
                                                <asp:ListItem Value="2">Nivel 1</asp:ListItem>
                                                <asp:ListItem Value="3">Nivel 2</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td align="left" class="style2" width="150">
                                            <asp:Label ID="Label20" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Seleccione Tipo"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                                Enabled="False" onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                                                <asp:ListItem Value="1">HSE</asp:ListItem>
                                                <asp:ListItem Value="2">QA</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style2" width="150">
                                            <asp:Label ID="Label7" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Selecciona Departamento"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource1" DataTextField="NOMBRE_DEPTO" 
                                                DataValueField="DEPTO_ID" Enabled="False" 
                                                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                SelectCommand="SELECT [NOMBRE_DEPTO], [DEPTO_ID] FROM [DEPARTAMENTO]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style2" width="150">
                                            <asp:Label ID="Label8" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Área de Soporte"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource2" DataTextField="NOMBRE_AREA_SOPORTE" 
                                                DataValueField="AREA_SOPORTE_ID" Enabled="False" 
                                                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                SelectCommand="SELECT [AREA_SOPORTE_ID], [NOMBRE_AREA_SOPORTE], [REPONSABLE_ID] FROM [AREAS_SOPORTE]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style2" width="150">
                                            &nbsp;</td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Panel ID="Panel1" runat="server">
                                    <table style="width:100%;" cellpadding="4" cellspacing="2">
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                                                    Font-Names="Arial Narrow" Font-Size="Medium" Text="Usuario Principal"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" ForeColor="White" 
                                                    ReadOnly="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label13" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Nombre"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label14" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Correo"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label15" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Contraseña"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                                                    Font-Names="Arial Narrow" Font-Size="Medium" Text="Usuario BackUp"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" ForeColor="White" 
                                                    ReadOnly="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label16" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Nombre"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox5" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label17" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Correo"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox6" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                <asp:Label ID="Label18" runat="server" Font-Names="Arial Narrow" 
                                                    Font-Size="Medium" Text="Contraseña"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="TextBox7" runat="server" style="margin-bottom: 0px" 
                                                    Width="325px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style2">
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Button ID="Button7" runat="server" Text="Modificar" 
                                                    onclick="Button7_Click" UseSubmitBehavior="False" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                                    Font-Names="Arial Narrow"></asp:Label>
                            </td>
                        </tr>
                        </table>
        
                </td>
            </tr>
        </table>
        </center>
      </form>
</body>
</html>
