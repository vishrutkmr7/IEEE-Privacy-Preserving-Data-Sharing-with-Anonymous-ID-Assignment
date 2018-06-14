<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Designers.ascx" TagName="Header" TagPrefix="wuc" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy Preserving Updates to Anonymous and Confidential Databases</title>
    <%--<link rel="icon" href="images/Logo.gif"/>--%>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>
    <style type="text/css">
        .style5
        {
            width: 125px;
        }
        .style6
        {
            width: 180px;
        }
    </style>
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Header ID="Header1" runat="server" />
    <table style="position:absolute; top: 232px; left: 67px; width: 848px;">
    <tr>
    <td>
    
    </td>
    </tr>
    </table>
        <%--<asp:Image ID="Image1" runat="server" 
            style="position:absolute; top: 493px; left: 589px; height: 252px; width: 321px;" 
            ImageUrl="~/images/care.png" />--%>
    <table style="position:absolute; top: 277px; left: 599px; height: 25px; width: 425px;">
    <tr>
    <td class="style5">
    </td>
    <td class="style6">
        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Bauhaus 93" 
            Font-Size="Larger" ForeColor="White" Text="Login"></asp:Label>
    </td>
    <td>
    </td>
    </tr>
    <tr>
    <td class="style5">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="DigifaceWide" ForeColor="White" Text="User Name" 
            Font-Size="Large"></asp:Label>
    </td>
    <td class="style6">
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFDD" 
            BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" Width="179px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter User Name" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td class="style5">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" 
            Font-Names="DigifaceWide" ForeColor="White" Text="Password" 
            Font-Size="Large"></asp:Label>
    </td>
    <td class="style6">
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFDD" 
            BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" TextMode="Password" 
            Width="179px"></asp:TextBox>
    </td>
    <td>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style5">
        &nbsp;</td>
    <td class="style6">
        &nbsp;</td>
    <td>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style5">
        &nbsp;</td>
    <td class="style6">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" 
            ImageUrl="~/images/Login.png" Width="120px" 
            onclick="ImageButton1_Click" />
    </td>
    <td>
        &nbsp;</td>
    </tr>
    </table>
        <asp:Image ID="Image1" runat="server" 
            style="position:absolute; top: 281px; left: 250px;" 
            ImageUrl="~/images/images11.jpg" />
    </div>
    </form>
</body>
</html>
