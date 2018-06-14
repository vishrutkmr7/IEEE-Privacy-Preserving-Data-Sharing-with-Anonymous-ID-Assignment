<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Designs.ascx.cs" Inherits="Designs" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Privacy Preserving Data Sharing With
Anonymous ID Assignment</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="csst/style/style.css" />


    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>


</head>
<body>
<div id="main">
  <div id="logo">
    <h2><a href="http://all-free-download.com/free-website-templates/">
        <span class="style1">Privacy Preserving Data Sharing&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        -&nbsp; With Anonymous ID Assignment</span></a></h2>
  </div>
  <div id="menu">
    <ul>
      <li><a href="AdminHome.aspx">Home</a></li>
      <li><a href="Usser_Details.aspx">User_Details</a></li>
      <li><a href="Admin_Details.aspx">Doctor_Details</a></li>
      <li><a href="Default.aspx">Logout</a></li>
      <%--<li><a href="http://all-free-download.com/free-website-templates/">contact</a></li>--%>
    </ul>
  </div>
  <div id="site_content">
    <div id="first_column">
    </div>
    <div id="content">
      <div class="disignBoxSecond">
      </div>
      <div class="disignBoxSecond">
        <%--<div class="boxContent">
          <h1>&nbsp;</h1>
          <p>&nbsp;</p>
        </div>--%>
      </div>
    </div>
  </div>
  <div id="footer">
    </div>
</div>
</body>
</html>

<%--<style type="text/css">
    .style1
    {
        width: 161px;
    }
    .style2
    {
        width: 159px;
    }
    .style3
    {
        width: 154px;
    }
    .style4
    {
        width: 177px;
    }
</style>

<asp:Panel ID="Panel1" runat="server" 
    style="position:absolute; top: 55px; left: 58px; width: 867px; height: 699px; background-image:url('images/bg_1.jpeg');">
    
        <asp:Panel ID="Panel2" runat="server"         
        style="position:absolute; top: 4px; left: 5px; width: 857px; height: 102px; background-image:url('images/bg_2.jpg');">
        
        <asp:Panel ID="Panel3" runat="server" 
             style="position:absolute; top: 96px; left: -6px; width: 867px; height: 3px;">
        <img src="images/bar.gif" width="867" height="9" /></asp:Panel>
                <table style="position:absolute; top: 108px; left: -4px; width: 864px; height: 32px; background-color:#D4E6EA">
                <tr>
                <td class="style1">                
                
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
                        onclick="ImageButton1_Click" Width="81px" CausesValidation="False" ImageUrl="images/Home.png" />
                
                </td>
                <td class="style2">                
                
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="22px" 
                        onclick="ImageButton2_Click" Width="161px" CausesValidation="False" ImageUrl="images/Doctor.png" />
                
                </td>
                <td class="style3">                
                
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" 
                        onclick="ImageButton3_Click" Width="161px" CausesValidation="False" ImageUrl="images/patient.png" />
                
                </td>
                <td class="style1">                
                
                    <asp:ImageButton ID="ImageButton4" runat="server" 
    Height="17px" Width="80px" CausesValidation="False" 
    ImageUrl="~/images/Logout_1.png" onclick="ImageButton4_Click" />
                
                </td>                               
                <td> 
                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick"></asp:Timer>
               
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Names="Calibri" 
                        Font-Size="18px" ForeColor="#009933" Width="350px"></asp:Label>
                </ContentTemplate>
                </asp:UpdatePanel>
                </td>
                </tr>
                </table>
        </asp:Panel>
</asp:Panel>
--%>