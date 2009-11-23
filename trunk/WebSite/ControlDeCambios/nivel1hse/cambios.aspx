<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cambios.aspx.cs" Inherits="cambios" %>

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
                                        <td class="style14" align="left">
                                            <br />
                                            <table width="850">
                                                <tr>
                                                    <td width="500">
                                                        <br />
                                                        <table cellpadding="4" cellspacing="4" width="500">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label28" runat="server" Text="Nombre de cambio" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label29" runat="server" Text="Tipo de cambio" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label30" runat="server" Text="Departamento" Font-Bold="True" 
                                                                        Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#F2EFE9" 
                                                                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" 
                                                                        Font-Size="Medium" ReadOnly="True" Width="300px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
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
                                                                <td>
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
                                                                <td width="150">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </td>
                                                    <td align="center">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><asp:Label ID="Label33" runat="server"></asp:Label></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" 
                                                Text="Comentarios Jefe de Departamento"></asp:Label>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:FormView ID="FormView2" runat="server" BackColor="White" 
                                                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                DataSourceID="SqlDataSource2" GridLines="Both">
                                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                <RowStyle BackColor="White" ForeColor="#003399" />
                                                <EditItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:TextBox ID="COMENTARIOSTextBox" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                        CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:TextBox ID="COMENTARIOSTextBox" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                        CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:Label ID="COMENTARIOSLabel" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                </ItemTemplate>
                                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                                <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            </asp:FormView>
                                          
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT [COMENTARIOS] FROM [NIVEL0] WHERE ([CAMBIO_ID] = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" Text="Comentarios QA"></asp:Label>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:FormView ID="FormView3" runat="server" BackColor="White" 
                                                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                DataSourceID="SqlDataSource4" GridLines="Both">
                                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                <RowStyle BackColor="White" ForeColor="#330099" />
                                                <EditItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:TextBox ID="COMENTARIOSTextBox" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                        CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:TextBox ID="COMENTARIOSTextBox" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                        CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    COMENTARIOS:
                                                    <asp:Label ID="COMENTARIOSLabel" runat="server" 
                                                        Text='<%# Bind("COMENTARIOS") %>' />
                                                    <br />
                                                </ItemTemplate>
                                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT [COMENTARIOS] FROM [NIVEL1_QA] WHERE ([CAMBIO_ID] = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:TextBox ID="TextBoxComentario" Width="523px" Rows="4" runat="server" 
                                                Height="95px" TextMode="MultiLine" ></asp:TextBox>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT [AREA_SOPORTE_ID], [NOMBRE_AREA_SOPORTE] FROM [AREAS_SOPORTE]">
                                            </asp:SqlDataSource>
                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                                                DataSourceID="SqlDataSource3" DataTextField="NOMBRE_AREA_SOPORTE" 
                                                DataValueField="AREA_SOPORTE_ID">
                                            </asp:CheckBoxList>
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
                                                Text="Aceptar" CausesValidation="true" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                            <asp:Button ID="Button8" runat="server" 
                                                Text="Rechazar" CausesValidation="false" onclick="Button8_Click" />
                                                
                                            <asp:Button ID="Button3" runat="server" 
                                                Text="Regresar a Cambios" CausesValidation="false" onclick="Button3_Click" Visible="false"/>
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Label ID="Label24" runat="server"></asp:Label>
                                            <asp:ValidationSummary id="valSummary" runat="server"
                                            HeaderText="Errors:"
                                            ShowSummary="true" DisplayMode="List" />
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
