﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="incidentes.aspx.cs" Inherits="admin_incidentes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            width: 317px;
        }
        .style4
        {
            width: 150px;
        }
        #TextArea1
        {
            width: 515px;
            height: 181px;
        }
        .style5
        {
            width: 525px;
        }
    </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function TextArea1_onclick() {

        }

// ]]>
    </script>
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
                    <asp:Button ID="Button4" runat="server" Text="Incidentes" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" ForeColor="Black" Width="180px" 
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
                                <asp:Label ID="Label5" runat="server" Text="Incidentes" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellpadding="4" style="width:100%;" cellspacing="2">
                                    <tr>
                                        <td class="style4" align="left" bgcolor="#F9F9F7" valign="top">
                                            <asp:Label ID="Label6" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Nombre de Incidente"></asp:Label>
                                        </td>
                                        <td class="style5" align="left" valign="top">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="380px"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style4" align="left" bgcolor="#F9F9F7" valign="top">
                                            <asp:Label ID="Label7" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Fecha"></asp:Label>
                                        </td>
                                        <td class="style5" align="left" valign="top">
                                            <asp:DropDownList ID="DropDownList6" runat="server">
                                                <asp:ListItem Selected="True">1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem>13</asp:ListItem>
                                                <asp:ListItem>14</asp:ListItem>
                                                <asp:ListItem>15</asp:ListItem>
                                                <asp:ListItem>16</asp:ListItem>
                                                <asp:ListItem>17</asp:ListItem>
                                                <asp:ListItem>18</asp:ListItem>
                                                <asp:ListItem>19</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>21</asp:ListItem>
                                                <asp:ListItem>22</asp:ListItem>
                                                <asp:ListItem>23</asp:ListItem>
                                                <asp:ListItem>24</asp:ListItem>
                                                <asp:ListItem>25</asp:ListItem>
                                                <asp:ListItem>26</asp:ListItem>
                                                <asp:ListItem>27</asp:ListItem>
                                                <asp:ListItem>28</asp:ListItem>
                                                <asp:ListItem>29</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                                <asp:ListItem>31</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList7" runat="server">
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
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem>2009</asp:ListItem>
                                                <asp:ListItem Selected="True">2010</asp:ListItem>
                                                <asp:ListItem>2011</asp:ListItem>
                                                <asp:ListItem>2012</asp:ListItem>
                                                <asp:ListItem>2013</asp:ListItem>
                                                <asp:ListItem>2014</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style4" align="left" bgcolor="#F9F9F7" valign="top">
                                            <asp:Label ID="Label8" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Departamento"></asp:Label>
                                        </td>
                                        <td class="style5" align="left" valign="top">
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource1" DataTextField="NOMBRE_DEPTO" 
                                                DataValueField="DEPTO_ID" 
                                                onselectedindexchanged="DropDownList4_SelectedIndexChanged"
                                                 OnDataBound="DropDownList4_SelectedIndexChanged" >
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style4" align="left" bgcolor="#F9F9F7" valign="top">
                                            <asp:Label ID="Label9" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Area"></asp:Label>
                                        </td>
                                        <td class="style5" align="left" valign="top">
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource2" DataTextField="NOMBRE_AREA" 
                                                DataValueField="AREA_ID">
                                </asp:DropDownList>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style4" align="left" bgcolor="#F9F9F7" valign="top">
                                            <asp:Label ID="Label10" runat="server" Font-Names="Arial Narrow" 
                                                Font-Size="Medium" Text="Comentarios"></asp:Label>
                                        </td>
                                        <td class="style5" align="left">
                                            <asp:TextBox ID="TextBox3" runat="server" Height="140px" TextMode="MultiLine" 
                                                Width="508px"></asp:TextBox>
                                        </td>
                                        <td align="left">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" />
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4" align="left" valign="top">
                                            <asp:Label ID="Label11" runat="server"></asp:Label>
                                        </td>
                                        <td class="style5" align="left">
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                                Text="Aceptar" CausesValidation="true"/>
                                               <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                                Text="Insertar otro incidente" CausesValidation="false" Visible="false"/>
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;</td>
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
