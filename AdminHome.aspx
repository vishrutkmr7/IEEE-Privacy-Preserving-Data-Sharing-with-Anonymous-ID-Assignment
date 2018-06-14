<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Designs.ascx" TagName="Header" TagPrefix="wuc" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy Preserving Updates to Anonymous and Confidential Database</title>
    <%--<link rel="icon" href="images/Logo.gif"/>--%>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>
</head>
<body background="images/bgs.jpeg">
    <form id="form1" runat="server">
    <div>
    <wuc:Header ID="Header1" runat="server" />
    <table style="position:absolute; top: 375px; left: 304px;">
    <tr>
    <td>
    <font size="20" color="white" face="Comic Sans MS">Welcome</font>
    </td>
    </tr>
    </table>
    <asp:Image ID="Image1" runat="server" 
            style="position:absolute; top: 281px; left: 470px;" 
            ImageUrl="~/images/administrator.png" />
    </div>
    </form>
</body>
</html>
