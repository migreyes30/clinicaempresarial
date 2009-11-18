<%@ Page Language="C#" %>

<!DOCTYPE "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // Esto (en ASP.NET 2.0) no se ejecuta... si AutoEventWireup="false"
        //pregunta si la pagina se esta recargando como un evento de una ida y vuelta a server de la misma pagina
        //la primera ves es falso
        if(!IsPostBack)
        {
            txtTexto.Text = "Hola,\n" +
                "Esto es una prueba de envio de correo usando ASP.NET 2.0 (C#)\n" +
                "Saludos!!!";
            LabelError.Text = "";
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {

        mandarCorreo("jessyc48@yahoo.com", "foreveri_22@hotmail.com", "mi prueba", "prueba");
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(txtDe.Text);
        correo.To.Add(txtPara.Text);
        correo.Subject = txtAsunto.Text;
        //pone la hora y fecha de cuando le das submit
        txtTexto.Text += "\n\nFecha y hora GMT: " + 
            DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss");
        correo.Body = txtTexto.Text;
        correo.IsBodyHtml = false;
        
        correo.Priority = System.Net.Mail.MailPriority.Normal;
        //
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
        //Servidor que se va a usar
        smtp.Host = "smtp.mail.yahoo.com";
        //crenedenciales si es necesario
        
        smtp.Credentials = new System.Net.NetworkCredential("jessyc48@yahoo.com", "probando");
        try
        {
            smtp.Send(correo);
            LabelError.Text = "Mensaje enviado satisfactoriamente";
        }
        catch(Exception ex)
        {
            LabelError.Text = "ERROR: " + ex.Message;
        }
        
        
    }


    protected void mandarCorreo(String sender, String receiver, String bodyMail, String asunto)
    {
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(sender);
        correo.To.Add(new System.Net.Mail.MailAddress(receiver));
        correo.Subject = asunto;
        //pone la hora y fecha de cuando le das submit
        String body = bodyMail + "\n\nFecha y hora GMT: " +
            DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss");
        correo.Body = body;
        correo.IsBodyHtml = false;

        correo.Priority = System.Net.Mail.MailPriority.Normal;
        //
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
        //Servidor que se va a usar
        smtp.Host = "smtp.mail.yahoo.com";
        //crenedenciales si es necesario

        smtp.Credentials = new System.Net.NetworkCredential("jessyc48@yahoo.com", "probando");
        try
        {
            smtp.Send(correo);
            //LabelError.Text = "Mensaje enviado satisfactoriamente";
        }
        catch (Exception ex)
        {
            //LabelError.Text = "ERROR: " + ex.Message;
        }
    }

  

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Prueba para enviar correo usando ASP.NET 2.0 (con C#)</title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 550px">
            <tr>
                <td valign="top">
                    <asp:Label ID="Label1" runat="server" Text="De:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtDe" runat="server" Width="95%" BackColor="Gainsboro" ReadOnly="True">jessyc48@yahoo.com</asp:TextBox></td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="Label2" runat="server" Text="Para:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPara" runat="server" Width="95%">la cuenta a quien envías el mensaje</asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPara" ErrorMessage="El formato del correo no es válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="Label3" runat="server" Text="Asunto:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAsunto" runat="server" Width="95%">Prueba de envio de correo con ASP.NET 2.0 (C#)</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAsunto" ErrorMessage="Debes escribir el asunto"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="Label4" runat="server" Text="Texto:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtTexto" runat="server" Columns="50" Rows="10" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTexto" ErrorMessage="Debes escribir algo en el texto"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><asp:Button ID="btnEnviar" runat="server" Text="Enviar"  OnClick="btnEnviar_Click"  /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><asp:Label ID="LabelError" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>