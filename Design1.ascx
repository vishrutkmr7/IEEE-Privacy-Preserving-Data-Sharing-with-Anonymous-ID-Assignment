<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Design1.ascx.cs" Inherits="Design1" %>

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
      <li><a href="Home2.aspx">Home</a></li>
      <li><a href="paschange.aspx">Password_Change</a></li>
      <li><a href="patientview.aspx">View Details</a></li>
      <li><a href="patientreport.aspx">View Report</a></li>
      <li><a href="Default.aspx">Logout</a></li>
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
<%--<asp:Panel ID="Panel1" runat="server" 
        style="position:absolute; top: 55px; left: 58px; width: 867px; height: 759px; background-image:url('images/bg_1.jpeg');">
<asp:Panel ID="Panel2" runat="server"         
        
        style="position:absolute; top: 4px; left: 5px; width: 857px; height: 91px; background-image:url('images/bg_2.jpg');">
        
       </asp:Panel> 
        <asp:Panel ID="Panel3" runat="server" 
             
        
        style="position:absolute; top: 89px; left: -1px; width: 867px; height: 10px;">
        <img src="images/bar.gif" width="867" height="9" /></asp:Panel>
        <table style="position:absolute; top: 98px; left: 2px; width: 863px; height: 32px; background-color:#D4E6EA">
                <tr>
                <td class="style1">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#D4E6EA" 
                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="16px" 
                        ForeColor="#990000" Height="25px" Orientation="Horizontal" 
                        StaticSubMenuIndent="10px">
                        <StaticSelectedStyle BackColor="#FFCC66" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Home2.aspx" Text="Home" Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="Password_Change" Value="Password_Change" 
                                NavigateUrl="~/paschange.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem Text="View" Value="View" NavigateUrl="~/patientview.aspx">
                                <asp:MenuItem NavigateUrl="~/patientview.aspx" Text="View Details" 
                                    Value="View Details"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/patientreport.aspx" Text="View Report" 
                                    Value="View Report"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Logout" Value="Logout">
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick"></asp:Timer>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="18px" ForeColor="#009933" Width="327px"></asp:Label>
                </ContentTemplate>
                </asp:UpdatePanel>
                </td>
                </tr>
                </table>
    </asp:Panel>--%>