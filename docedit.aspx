<%@ Page Language="C#" AutoEventWireup="true" CodeFile="docedit.aspx.cs" Inherits="docedit" %>

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
    <table style="position:absolute; top: 295px; left: 452px; width: 374px;">
   <tr>
   <td align="center" colspan="2">
   
       <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
           Font-Size="Larger" ForeColor="White" Text="Doctor Details"></asp:Label>
   
   </td>
   </tr>
   <tr>
   <td>
   
       &nbsp;</td>
   <td>
   
       &nbsp;</td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Patient ID"></asp:Label>
   
   </td>
   <td>
   
       <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow"></asp:Label>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="User ID"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Name"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Cell Number"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="EMail ID"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Address Line 1"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Address Line 2"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="City"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Date Of Borth"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
       <cc1:CalendarExtender ID="CalendarExtender2" TargetControlID="TextBox8" PopupButtonID="TextBox8" runat="server">
       </cc1:CalendarExtender>
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox8" PopupButtonID="TextBox8">
       </cc1:CalendarExtender>--%>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Blood Group"></asp:Label>
   
   </td>
   <td>
   
       <asp:TextBox ID="TextBox9" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
   </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Designation"></asp:Label>
   
       </td>
   <td>
   
       <asp:TextBox ID="TextBox10" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
       </td>
   </tr>
   <tr>
   <td>
   
       <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Cambria" 
           Font-Size="Large" ForeColor="Yellow" Text="Qualification"></asp:Label>
   
       </td>
   <td>
   
       <asp:TextBox ID="TextBox11" runat="server" BackColor="#CCFFCC" 
           BorderColor="#009933" BorderStyle="Solid" BorderWidth="2px" Height="30px" 
           Width="204px"></asp:TextBox>
   
       </td>
   </tr>
   <tr>
   <td align="right">
   
       &nbsp;</td>
   <td align="center">
   
       &nbsp;</td>
   </tr>
   <tr>
   <td align="right">
   
       <asp:Button ID="Button1" runat="server" BackColor="#006666" 
           BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" 
           Font-Names="Constantia" ForeColor="White" onclick="Button1_Click" Text="Edit" 
           Width="82px" />
   
       </td>
   <td align="center">
   
       <asp:Button ID="Button2" runat="server" BackColor="#006666" 
           BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
           Font-Names="Cambria" ForeColor="White" onclick="Button2_Click" Text="Back" 
           Width="72px" />
   
       </td>
   </tr>
   </table>
    </div>
    </form>
</body>
</html>
