<%@ Page Language="C#"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Lista.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("LocalizarUsuario.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reporte.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("cambios.aspx");
    }
    protected void Menu1_MenuItemClick(Object sender, EventArgs e){
    
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 236px;
        }
    .style2
        {
            width: 320px;
        }
        .style14
        {
            width: 154px;
        }
        .style16
        {
            width: 706px;
        }
        .style17
        {
            width: 706px;
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
            color: #000000;
        }
        .nuevoEstilo1
        {
            display: list-item;
            list-style-type: lower-alpha;
        }
        .nuevoEstilo2
        {
            background-color: #000080;
        }
        .nuevoEstilo3
        {
            background-color: #0B479D;
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
    <asp:Button ID="Button1" runat="server" Text="Salir" BackColor="#F9F9F7" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Width="50px" />
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
                        <tr>
                <td align="center" 
                    
                    
                                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                                class="style1">
                    <asp:Button ID="Button6" runat="server" Text="Reporte" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" onclick="Button6_Click"/>
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button2" runat="server" Text="Cambios" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" OnClick="Button2_Click"/>
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
                        BorderWidth="1px" Height="25px" OnClick="Button4_Click"/>
                </td>
                 <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    
                     <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" ForeColor="#284E98" 
                         Width="180px" Height="25px" 
                         onmenuitemclick="Menu1_MenuItemClick" DynamicVerticalOffset="2" 
                         Font-Names="Arial" Font-Size="0.9em" StaticSubMenuIndent="10px" 
                         CssClass="nuevoEstilo3">
                         <StaticSelectedStyle BackColor="#B5C7DE" ForeColor="White" />
                         <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
                             BackColor="#0B479D" ForeColor="White" />
                         <DynamicHoverStyle BackColor="#0B479D" ForeColor="White" BorderColor="#0B479D" 
                             BorderStyle="Dashed" />
                         <DynamicMenuStyle BackColor="#0B479D" />
                         <DynamicSelectedStyle BackColor="#B5C7DE" />
                         <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
                             BackColor="#0B479D" BorderColor="#0B479D" ForeColor="White" />
                         <StaticHoverStyle BackColor="#0B479D" ForeColor="White" />
                         <Items>
                             <asp:MenuItem Text="Usuario" Value="Usuario">
                                 <asp:MenuItem Text="Crear Usuario" Value="Crear Usuario" 
                                     NavigateUrl="~/ejem01/crearUsuario.aspx" ></asp:MenuItem>
                                 <asp:MenuItem Text="Buscar Usuario" Value="Buscar Usuario" 
                                     NavigateUrl="~/ejem01/LocalizarUsuario.aspx" Selected="True"></asp:MenuItem>
                             </asp:MenuItem>
                         </Items>
                     </asp:Menu>
                    
                     
                    
                     
                    
                     
                    
                    </td>
            </tr> 
                    </table>
                </td>
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
                                <asp:Label ID="Label5" runat="server" Text="Agregar Usuario" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label23" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Large" Text="Folio:"></asp:Label>
&nbsp;<asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                <td colspan="6" align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <table cellpadding="4" style="width:100%;">
                        <tr>
                            <td align="left">
                                <table cellpadding="0" cellspacing="0" style="width: 100%; height: 29px;">
                                    <tr>
                                        <td class="style17">
                                            Llenar los datos que a continuación se piden</td>
                                      
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding="4" style="width:100%;">
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label6" runat="server" Font-Names="Arial" 
                                                Font-Size="Small" Text="Nombre"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="234px"></asp:TextBox>
                                        </td>
                                        
                                       
                                    </tr>
                                    <tr>
                                        <td class="style14" align="left" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label7" runat="server" Font-Names="Arial" 
                                                Font-Size="Small" Text="Departamento"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Consap/Pailas/RG</asp:ListItem>
                                                <asp:ListItem>Secadores</asp:ListItem>
                                                <asp:ListItem>Líneas</asp:ListItem>
                                                <asp:ListItem>Planta piloto/TDO-NI</asp:ListItem>
                                                <asp:ListItem>Servicios</asp:ListItem>
                                                <asp:ListItem>MPS/MPR/DRP/PE</asp:ListItem>
                                                <asp:ListItem>laboratorio QA</asp:ListItem>
                                                <asp:ListItem>Reproceso</asp:ListItem>
                                                <asp:ListItem>Glicerina</asp:ListItem>
                                                <asp:ListItem>Sulfatación</asp:ListItem>
                                                <asp:ListItem>HSE</asp:ListItem>
                                                <asp:ListItem>Bodegas</asp:ListItem>


                                                
                                            </asp:DropDownList>
                                        </td>
                                        

                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label8" runat="server" Text="Área" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                         <asp:DropDownList ID="DropDownList2" runat="server">
                                               
                                                <asp:ListItem>Área 1</asp:ListItem>
                                                <asp:ListItem>Área 2</asp:ListItem>
                                               
                                                
                                            </asp:DropDownList>
                                           
                                            
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label9" runat="server" Text="Nivel" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                               
                                                <asp:ListItem>Administrador</asp:ListItem>
                                                <asp:ListItem>Nivel 0</asp:ListItem>
                                                <asp:ListItem>Nivel 1</asp:ListItem>
                                                <asp:ListItem>Nivel 2</asp:ListItem>
                                               
                                                
                                            </asp:DropDownList>
                                        
                                        </td>
                                        
                                        
                                    </tr>
                                    <tr>
                                    <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label1" runat="server" Text="Teléfono" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox2" runat="server" Width="234px"></asp:TextBox>
                                        </td>
                                        </tr>
                                        
                                          <tr>
                                    <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label2" runat="server" Text="E-Mail" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="234px"></asp:TextBox>
                                        </td>
                                        </tr>
                                        
                                          <tr>
                                    <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label10" runat="server" Text="Contraseña" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="234px"></asp:TextBox>
                                        </td>
                                        </tr>
                                          <tr>
                                    <td class="style14" bgcolor="#F9F9F7" align="left">
                                            <asp:Label ID="Label11" runat="server" Text="Confirmar contraseña" Font-Names="Arial" 
                                                Font-Size="Small"></asp:Label>
                                        </td>
                                        <td class="style2" align="left">
                                            <asp:TextBox ID="TextBox5" runat="server" Width="234px"></asp:TextBox>
                                        </td>
                                        </tr>
                                </table>
                                <table style="width:100%;" cellpadding="4">
                                    <tr>
                                        <td align="left">
                                            
                                            <asp:Button ID="Button7" runat="server"
                                                Text="Aceptar" />
                                            <br />
                                            <br />
                                            <br />
                                        </td>
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
                </center>
               
                
    <div>
    
    </div>
    </form>
</body>
</html>
