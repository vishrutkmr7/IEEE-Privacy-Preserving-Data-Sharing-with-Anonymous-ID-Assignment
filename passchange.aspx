<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passchange.aspx.cs" Inherits="passchange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Design.ascx" TagName="Heading" TagPrefix="wuc" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>Privacy Preserving Updates to Anonymous and Confidential Databases</title>
    <link rel="icon" href="images/Logo.gif"/>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>    
        <style type="text/css">
            .style2
            {
            }
            .style3
            {
                width: 149px;
            }
            </style>
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Heading ID="Header1" runat="server" />
    <table style="position:absolute; top: 345px; left: 514px; width: 542px;">
    <tr>
    <td align="center" class="style2" colspan="2">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
            Font-Size="Larger" ForeColor="White" Text="Password Change"></asp:Label>
    
    </td>
    <td>
    
    </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Agency FB" 
            Font-Size="Large" ForeColor="White" Text="Old Password"></asp:Label>
    
    </td>
    <td class="style3">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#99FFCC" 
            BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" TextMode="Password" 
            Width="147px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Your Old Password" 
            Font-Bold="True"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Agency FB" 
            Font-Size="Large" ForeColor="White" Text="New Password"></asp:Label>
    
    </td>
    <td class="style3">
    
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#99FFCC" 
            BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" TextMode="Password" 
            Width="147px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Your New Password" 
            Font-Bold="True"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Agency FB" 
            Font-Size="Large" ForeColor="White" Text="Confirm New Password"></asp:Label>
    
    </td>
    <td class="style3">
    
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#99FFCC" 
            BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" TextMode="Password" 
            Width="147px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Correct Confirm Password" 
            Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
            ErrorMessage="Password Mismatched" Font-Bold="True"></asp:CompareValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="right" class="style3">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" Width="96px" 
            CausesValidation="False" ImageUrl="~/images/Back.png" 
            onclick="ImageButton1_Click" />
    
    </td>
    <td align="center" class="style3">
    
        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="27px" 
            Width="99px" ImageUrl="~/images/change.png" onclick="ImageButton2_Click" />
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
