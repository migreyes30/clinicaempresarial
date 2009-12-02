<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 91px;
        }
        </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <center>
    
        <table style="width:900px;" cellpadding="1" cellspacing="0" border="0">
            <tr>
                <td align="left" 
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    height="100">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/logoPG.jpg" />
                </td>
            </tr>
            <tr>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" 
                    bgcolor="#0B479D" height="25">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        Font-Names="Arial Narrow" Font-Size="Small" ForeColor="White" 
                        Text="Coloque Nombre de Usuario y Contraseña para entrar al sistema."></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" 
                    
                    
                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                    <br />
                    <br />
    
    
        <table cellpadding="4" cellspacing="4" border="0" width="400">
            <tr>
                <td  align="right">
                    <asp:Label ID="Label1" runat="server" Text="Usuario" Font-Names="Arial Narrow"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="user" runat="server" Width="134px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña" 
                        Font-Names="Arial Narrow"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="buttonEntrar" runat="server" onclick="Button1_Click" 
                        Text="Entrar" />                        
                        <br />                        
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

        
                    <asp:Label ID="statusConnection" runat="server" ForeColor="Red" 
                        Font-Names="Arial Narrow" Font-Bold="True" Font-Size="Smaller"></asp:Label>
                    <br />
        
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
        </center>
    
    </div>
    </form>
</body>
</html>
