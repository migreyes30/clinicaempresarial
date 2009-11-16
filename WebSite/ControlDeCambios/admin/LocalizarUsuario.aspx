<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue=="1"){
        Response.Redirect("BuscarporNombre.aspx");
        }
        else if (DropDownList1.SelectedValue == "2")
        {
            Response.Redirect("buscarporDepto.aspx");
        }
    }

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

    protected void Menu1_MenuItemClick(Object sender, EventArgs e)
    {

    }
</script>



<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 317px;
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
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button6" runat="server" Text="Reporte" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False" Height="25px" OnClick="Button6_Click" />
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
                        BorderWidth="1px" Height="25px" OnClick="Button3_Click" />
                </td>
                <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <asp:Button ID="Button4" runat="server" Text="Incidentes" BackColor="#0B479D" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="White" Width="180px" 
                        BorderWidth="1px" Height="25px" />
                </td>
                 <td align="center" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                     <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" CssClass="nuevoEstilo3" 
                         DynamicVerticalOffset="2" Font-Names="Arial" Font-Size="0.9em" 
                         ForeColor="#284E98" Height="25px" onmenuitemclick="Menu1_MenuItemClick" 
                         StaticSubMenuIndent="10px" Width="180px">
                         <StaticSelectedStyle BackColor="#B5C7DE" ForeColor="White" />
                         <StaticMenuItemStyle BackColor="#0B479D" ForeColor="White" 
                             HorizontalPadding="5px" VerticalPadding="2px" />
                         <DynamicHoverStyle BackColor="#0B479D" BorderColor="#0B479D" 
                             BorderStyle="Dashed" ForeColor="White" />
                         <DynamicMenuStyle BackColor="#0B479D" />
                         <DynamicSelectedStyle BackColor="#B5C7DE" />
                         <DynamicMenuItemStyle BackColor="#0B479D" BorderColor="#0B479D" 
                             ForeColor="White" HorizontalPadding="5px" VerticalPadding="2px" />
                         <StaticHoverStyle BackColor="#0B479D" ForeColor="White" />
                         <Items>
                             <asp:MenuItem Text="Usuario" Value="Usuario">
                                 <asp:MenuItem NavigateUrl="~/ejem01/crearUsuario.aspx" Text="Crear Usuario" 
                                     Value="Crear Usuario"></asp:MenuItem>
                                 <asp:MenuItem NavigateUrl="~/ejem01/LocalizarUsuario.aspx" Selected="True" 
                                     Text="Buscar Usuario" Value="Buscar Usuario"></asp:MenuItem>
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
                            <td align="center">
                                <table cellpadding="0" cellspacing="0" style="width: 100%; height: 29px;">
                                    <tr>
                                        <td class="style16">
                                <asp:Label ID="Label5" runat="server" Text="Localizar Usuario" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
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
                            <td>
                                <table cellpadding="4" style="width:29%;">
                                    
                                    <tr>
                                        <td class="style14" align="center" bgcolor="#F9F9F7">
                                            <asp:Label ID="Label7" runat="server" Font-Names="Arial" 
                                                Font-Size="Small" Text="Buscar por: "></asp:Label>
                                        </td>
                                        <td class="style2" align="center">
                                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" >
                                                <asp:ListItem Value="0">Elige un opción...</asp:ListItem>
                                                <asp:ListItem Value="1">Nombre</asp:ListItem>
                                                <asp:ListItem Value="2">Departamento</asp:ListItem>
                                                                                       
                                            </asp:DropDownList>
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
               
                
    </form>
</body>
</html>

