<%@ Page Language="C#" AutoEventWireup="true" CodeFile="historial.aspx.cs" Inherits="nivel0_historial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style16
        {
            width: 706px;
        }
        .style17
        {
            height: 24px;
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
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Salir" BackColor="#F9F9F7" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Width="50px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial Narrow" 
                                    Text="HSE" Font-Italic="True"></asp:Label>
                            </td>
                            <td class="style17">
                                </td>
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
                    <asp:Button ID="Button6" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click" />
                </td>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    width="180">
                    <asp:Button ID="Button2" runat="server" Text="Historial" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
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
                                <asp:Label ID="Label5" runat="server" Text="Historial" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width:100%;">
                                    <tr>
                                        <td>
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
                                            <asp:Label ID="Label11" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Departamento"></asp:Label>
                                        </td>
                                        <td align="left" width="180">
                                            <asp:Label ID="Label10" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Área"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                                        </td>
                                       <td align="left">
                                              <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource2" DataTextField="NOMBRE_DEPTO" 
                                                DataValueField="DEPTO_ID" >
                                                <asp:ListItem Value="" Selected="True" Enabled="true">Todos</asp:ListItem>
                                            </asp:DropDownList>                                            
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT [DEPTO_ID], [NOMBRE_DEPTO] FROM [DEPARTAMENTO]" 
                                              >
                                            </asp:SqlDataSource>
                                        </td>
                                        <td align="left">
                                <asp:DropDownList ID="DropDownList9" runat="server"
                                                DataSourceID="SqlDataSource1" DataTextField="NOMBRE_AREA" AutoPostBack="True"
                                                DataValueField="AREA_ID" >
                                                <asp:ListItem Value="" Selected="True" Enabled="true">Todos</asp:ListItem>
                                </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                                                SelectCommand="SELECT [AREA_ID], [NOMBRE_AREA], [DEPTO_ID] FROM [AREA] WHERE ([DEPTO_ID] = ?)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList10" DefaultValue="" Name="DEPTO_ID" 
                                                        PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="Label12" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Estado"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:Label ID="Label13" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Tipo de Cambio"></asp:Label>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList7" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Pendiente</asp:ListItem>
                                                <asp:ListItem>Rechazado</asp:ListItem>
                                                <asp:ListItem>Autorizado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Cambio</asp:ListItem>
                                                <asp:ListItem>Kaizen</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                        <td align="right">
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                                Text="Aceptar" />
                                        </td>
                                    </tr>
                                    </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                    <asp:GridView ID="GridListaNivelCero" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CAMBIO_ID" 
                        DataSourceID="NivelHSEDataSource" 
                        EmptyDataText="Busque por campo o presione el boton Aceptar para ver todo el Historial" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" CellPadding="4" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Width="880px" ForeColor="#333333" GridLines="None" 
                                                PageSize="30">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                             <asp:BoundField DataField="CAMBIO_ID" HeaderText="CAMBIO_ID" 
                                SortExpression="CAMBIO_ID" >
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMBRE_CAMBIO" HeaderText="NOMBRE_CAMBIO" 
                                SortExpression="NOMBRE_CAMBIO" >
                            </asp:BoundField>
							<asp:BoundField DataField="NOMBRE_DEPTO" HeaderText="NOMBRE_DEPTO" 
                                SortExpression="NOMBRE_DEPTO" />
                            <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE_AREA" 
                                SortExpression="NOMBRE_AREA" >
                            </asp:BoundField>
                            <asp:BoundField DataField="TIPO_CAMBIO" HeaderText="TIPO_CAMBIO" 
                                SortExpression="TIPO_CAMBIO" >
                            </asp:BoundField>
                            <asp:BoundField DataField="FECHA_APROBACION" HeaderText="FECHA_APROBACION" 
                                SortExpression="FECHA_APROBACION" > 
                            </asp:BoundField>
							<asp:BoundField DataField="STATUS" HeaderText="STATUS_HSE" 
                                SortExpression="STATUS" />
                            <asp:BoundField DataField="ESTADO_CAMBIO" HeaderText="ESTADO_CAMBIO" 
                                SortExpression="ESTADO_CAMBIO" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br />
                    <asp:SqlDataSource ID="NivelHSEDataSource" runat="server" />
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
