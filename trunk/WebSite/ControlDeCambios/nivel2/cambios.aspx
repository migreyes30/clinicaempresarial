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
                                    Text="Área de Soporte" Font-Italic="True"></asp:Label>
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
                                                    NOMBRE_DEPTO:
                                                    <asp:TextBox ID="NOMBRE_DEPTOTextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_DEPTO") %>' />
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
                                                    NOMBRE_DEPTO:
                                                    <asp:TextBox ID="NOMBRE_DEPTOTextBox" runat="server" 
                                                        Text='<%# Bind("NOMBRE_DEPTO") %>' />
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
                                                    NOMBRE_DEPTO:
                                                    <asp:Label ID="NOMBRE_DEPTOLabel" runat="server" 
                                                        Text='<%# Bind("NOMBRE_DEPTO") %>' />
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
                                                SelectCommand="select NOMBRE_CAMBIO, TIPO_CAMBIO, DEPARTAMENTO.NOMBRE_DEPTO, AREA.NOMBRE_AREA, NIVEL1_HSE.FECHA_ASIGNACION  
from DEPARTAMENTO, CAMBIO, NIVEL1_HSE, AREA
 where CAMBIO.CAMBIO_ID = ? and CAMBIO.CAMBIO_ID = NIVEL1_HSE.CAMBIO_ID and AREA.AREA_ID = CAMBIO.AREA_ID and  AREA.DEPTO_ID = DEPARTAMENTO.DEPTO_ID;
 ">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" 
                                                        PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                        
                                            </asp:SqlDataSource>
                                            
                                            <!--SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="AREA_ID" 
                                                        PropertyName="Text" Type="Int32" />
                                                </SelectParameters-->
                                            <br />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" 
                                                Text="Comentarios Jefe de Departamento"></asp:Label>
                                        </td>

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
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" Text="Comentarios HSE"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:FormView ID="FormView3" runat="server" BackColor="White" 
                                                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                DataSourceID="SqlDataSource4" GridLines="Both">
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
                                          
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                
                                                SelectCommand="SELECT [COMENTARIOS] FROM [NIVEL1_HSE] WHERE ([CAMBIO_ID] = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label28" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" Text="Comentarios QA"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:FormView ID="FormView4" runat="server" BackColor="White" 
                                                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                DataSourceID="SqlDataSource5" GridLines="Both">
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
                                          
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                
                                                SelectCommand="SELECT [COMENTARIOS] FROM [NIVEL1_QA] WHERE ([CAMBIO_ID] = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                                                Font-Names="Arial Narrow" Font-Size="Medium" 
                                                Text="Comentarios Áreas de Soporte"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                                CellPadding="4" DataSourceID="SqlDataSource3" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Width="385px">
                                                <RowStyle BackColor="White" ForeColor="#003399" />
                                                <Columns>
                                                    <asp:BoundField DataField="NOMBRE_AREA_SOPORTE" HeaderText="ÁREA" 
                                                        SortExpression="NOMBRE_AREA_SOPORTE" />
                                                    <asp:BoundField DataField="COMENTARIOS" HeaderText="COMENTARIOS" 
                                                        SortExpression="COMENTARIOS">
                                                    <HeaderStyle Width="300px" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT     AREAS_SOPORTE.NOMBRE_AREA_SOPORTE, NIVEL2.COMENTARIOS
FROM         AREAS_SOPORTE INNER JOIN
                      NIVEL2 ON AREAS_SOPORTE.AREA_SOPORTE_ID = NIVEL2.AREA_SOPORTE_ID
WHERE     (NIVEL2.CAMBIO_ID = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label25" Name="CAMBIO_ID" PropertyName="Text" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                          
                                            <asp:TextBox ID="TextBoxComentario" Width="523px" Rows="4" runat="server" 
                                                Height="95px" TextMode="MultiLine" ></asp:TextBox>
                                                                                      
                                        </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="left">
                                            &nbsp;</td>
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
                                                Text="Rechazar" CausesValidation="true" onclick="Button8_Click" />
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
                                <br />
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
        
        </center>
        
        </form>
</body>
</html>
