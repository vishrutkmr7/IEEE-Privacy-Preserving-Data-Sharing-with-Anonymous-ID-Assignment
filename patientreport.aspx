<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patientreport.aspx.cs" Inherits="patientreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Design1.ascx" TagName="Heading1" TagPrefix="wuc" %>
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
                width: 264px;
            }
        </style>
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Heading1 ID="Header1" runat="server" />
    <table style="position:absolute; top: 229px; left: 347px; height: 759px; width: 595px;">
    <tr>
    <td align="center" class="style2" colspan="2">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
            Font-Size="Larger" ForeColor="White" Text="Medical Report" 
            style="font-family: Batang; font-size: xx-large"></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Doctor Name:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Patient ID:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Patient Name:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Admission Date:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Disease Name"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="ECG Test Result:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Scan Test Result:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="X-Ray Test Result:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Urine Test Result:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Blood Group:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Health Condition:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Discharge Date:"></asp:Label>
        </td>
    <td>
    
        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="center" class="style3">
    
        <asp:Button ID="Button1" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            ForeColor="White" onclick="Button1_Click" Text="Back" Width="50px" />
        </td>
    <td>
    
        <asp:Button ID="Button2" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            ForeColor="White" onclick="Button2_Click" Text="Generalization" 
            Width="106px" />
        </td>
    </tr>
    <tr>
    <td class="style3">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style3">
    
        <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Century" 
            Font-Size="Large" ForeColor="Fuchsia" Text="Security Code:"></asp:Label>
        </td>
    <td>
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#D9E6F2" 
            BorderColor="#336699" BorderStyle="Solid" BorderWidth="2px" Height="25px" 
            TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td align="center" class="style3">
    
        <asp:Button ID="Button3" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            ForeColor="White" Text="Back" Width="50px" onclick="Button3_Click" />
        </td>
    <td>
    
        <asp:Button ID="Button4" runat="server" BackColor="#006666" 
            BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            ForeColor="White" Text="Activate" Width="71px" onclick="Button4_Click" />
        </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
