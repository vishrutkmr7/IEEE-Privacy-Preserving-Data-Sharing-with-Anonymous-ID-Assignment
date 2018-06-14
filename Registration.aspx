<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Designers.ascx" TagName="Header" TagPrefix="wuc" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Privacy Preserving Updates to Anonymous and Confidential Databases</title>
    <link rel="icon" href="images/Logo.gif"/>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>
    <style type="text/css">
        .style1
        {
            width: 172px;
        }
        .style2
        {
            width: 227px;
        }
        .style4
        {
            width: 236px;
        }
        .style5
        {
            width: 229px;
        }
    </style>
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Header ID="Header2" runat="server" />
    <table style="position:absolute; top: 274px; left: 349px; height: 518px; width: 599px;">
    <tr>
    <td class="style1">
    
    </td>
    <td class="style5">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
            Font-Size="Larger" ForeColor="White" Text="Doctor Registration" 
            style="font-size: large"></asp:Label>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Doctor ID"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Verdana" 
            ForeColor="Blue" Font-Size="Large"></asp:Label>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Name"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Qualification"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Your Qualification" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Designation"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Your Designation" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Mobile No."></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox4" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Enter Your Name" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="EMail ID"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox5" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Enter Your EMail ID" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Address Line 1"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox6" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Enter Your Address" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Address Line 2"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox7" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Enter Your Address" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="City"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox8" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Enter Your City" Font-Bold="True" 
            Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="D.O.B"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox9" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="TextBox9" TargetControlID="TextBox9">
        </cc1:CalendarExtender>
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="TextBox9" ErrorMessage="Enter Your Date Of Birth" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Blood Group"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox10" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="TextBox10" ErrorMessage="Enter Your Blood Group" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="User ID"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox11" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="Enter Your User ID" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Password"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox12" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px" TextMode="Password"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="TextBox12" ErrorMessage="Enter Your Password" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="Large" ForeColor="White" Text="Confirm Password"></asp:Label>
    
    </td>
    <td class="style5">
    
        <asp:TextBox ID="TextBox13" runat="server" BackColor="#AAFFAA" 
            BorderColor="#003300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="14px" ForeColor="#CC3300" Height="23px" 
            Width="217px" TextMode="Password"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="TextBox13" ErrorMessage="Enter Your Correct Password" 
            Font-Bold="True" Font-Names="Agency FB" Font-Size="Large"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox12" ControlToValidate="TextBox13" 
            ErrorMessage="Password Mismatched" Font-Bold="True" Font-Names="Agency FB" 
            Font-Size="Large"></asp:CompareValidator>
    
    </td>
    </tr>
    <tr>
    <td align="right" class="style1">
    
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
            Height="25px" ImageUrl="~/images/Back.png" onclick="ImageButton2_Click" 
            Width="102px" />
    
    </td>
    <td align="center" class="style5">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" 
            ImageUrl="~/images/Reg.png" Width="106px" onclick="ImageButton1_Click" />
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="TextBox9" TargetControlID="TextBox9" TodaysDateFormat="dd-MMMM-yyyy">
        </cc1:CalendarExtender>
    </div>
    </form>
</body>
</html>
