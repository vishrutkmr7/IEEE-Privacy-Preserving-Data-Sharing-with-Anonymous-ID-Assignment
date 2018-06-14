<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patientedit.aspx.cs" Inherits="patientedit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Design.ascx" TagName="Heading" TagPrefix="wuc" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>Privacy Preserving Updates to Anonymous and Confidential Databases</title>
    <link rel="icon" href="images/Logo.gif"/>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>    
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Heading ID="Header1" runat="server" />
    <table style="position:absolute; top: 220px; left: 357px; width: 542px;">
    <tr>
    <td>
    
    </td>
    <td class="style2">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
            Font-Size="Larger" ForeColor="White" Text="Patient Details Edit"></asp:Label>
    
    </td>
    <td>
    
    </td>
    </tr>
    <tr>
    <td style="margin-left: 40px">
    
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Patient ID"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            BackColor="#CCFFFF" Font-Names="Cambria" Font-Size="Large" Height="25px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="186px">
            <asp:ListItem>- Select ID -</asp:ListItem>
        </asp:DropDownList>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox3" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox3_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Doctor Name"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550"></asp:Label>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox2" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"
            AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Doctor ID"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550"></asp:Label>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Patient Name"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550"></asp:Label>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox4" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox4_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Admission Date"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="TextBox1" TargetControlID="TextBox1">
        </cc1:CalendarExtender>
        <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="TextBox1" TargetControlID="TextBox1">
        </cc1:CalendarExtender>--%>
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox5" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox5_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Disease Name"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox6" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox6_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="ECG Result"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox7" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox7_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Scan Result"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox4" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox8" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox8_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="X Ray Result"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox5" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox9" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox9_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Urine Test"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox6" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox10" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox10_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Blood Test"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox7" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox11" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF"  
            AutoPostBack="True" oncheckedchanged="CheckBox11_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Health Condition"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox8" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox12" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox12_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Candara" 
            Font-Size="Large" ForeColor="#E7C550" Text="Discharge Date"></asp:Label>
    
    </td>
    <td class="style2">
    
        <asp:TextBox ID="TextBox9" runat="server" BackColor="#EAFFFF" 
            BorderColor="#9900CC" BorderStyle="Solid" BorderWidth="2px" Height="23px" 
            Width="188px"></asp:TextBox>
            <cc1:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="TextBox9" TargetControlID="TextBox9">
        </cc1:CalendarExtender>
    
    </td>
    <td>
    
        <asp:CheckBox ID="CheckBox13" runat="server" Font-Names="Consolas" 
            Font-Size="Large" ForeColor="#0099FF" 
            AutoPostBack="True" oncheckedchanged="CheckBox13_CheckedChanged" />
    
    </td>
    </tr>
    <tr>
    <td>
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="right">
    
        <asp:Button ID="Button2" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Corbel" Font-Size="Large" ForeColor="White" Height="26px" 
            Text="Back" Width="72px" onclick="Button2_Click" />
    
        </td>
    <td class="style2">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button1" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Names="Corbel" Font-Size="Large" ForeColor="White" Height="26px" 
            Text="Update" Width="71px" onclick="Button1_Click" />
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
