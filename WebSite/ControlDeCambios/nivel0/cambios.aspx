﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cambios.aspx.cs" Inherits="cambios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style14
        {
            width: 592px;
        }
        .style16
        {
            width: 706px;
        }
        #TextArea1
        {
            height: 73px;
            width: 597px;
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
                    bgcolor="#0B479D" height="25" width="180">
                    <asp:Button ID="Button6" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" width="180">
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
                                                    <td width="500">
                                                        <table cellpadding="4" cellspacing="4" width="600">
                                                            <tr>
                                                                <td bgcolor="#F9F9F7" width="150">
                                                                    <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Nombre del cambio"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#F4F3EE" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="400px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Tipo de cambio"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#F4F3EE" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Área"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#F5F4EF" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Fecha de asignación"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#F5F4EF" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#F9F9F7">
                                                                    <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium" Text="Imagen"></asp:Label>
                                                                </td>
                                                                <td>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"><asp:Label ID="Label35" runat="server"></asp:Label>
</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="White">
                                            <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" Text="Comentarios"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="White">
                                            
                                            <!--SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="AREA_ID" 
                                                        PropertyName="Text" Type="Int32" />
                                                </SelectParameters-->
                                            <asp:TextBox ID="TextBoxComentario" Width="850px" Rows="4" runat="server" 
                                                Height="95px" TextMode="MultiLine"></asp:TextBox>
                                            <br />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="left">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <table style="width:100%;" cellpadding="4">
                                    <tr>
                                        <td align="left">
                                            
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                                Text="Aceptar" CausesValidation="true" style="height: 26px" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                            <asp:Button ID="Button8" runat="server" 
                                                Text="Rechazar" CausesValidation="false" onclick="Button8_Click" />
                                            <asp:Button ID="Button3" runat="server" 
                                                Text="Regresar a Cambios" CausesValidation="false" onclick="Button3_Click" Visible="false"/>
                                            <br />
                                            <br />
                                            <asp:Label ID="Label24" runat="server"></asp:Label>
                                            <asp:ValidationSummary id="valSummary" runat="server"
                                            HeaderText="Errors:"
                                            ShowSummary="true" DisplayMode="List" Font-Names="Arial Narrow" />
                                        </td>
                                    </tr>
                                </table>
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
