<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Details.aspx.cs" Inherits="Admin_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/Designs.ascx" TagName="Header" TagPrefix="wuc" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <wuc:Header ID="Header1" runat="server" />
        <asp:GridView ID="GridView1" 
            
            style="position:absolute; top: 265px; left: 335px; height: 224px; width: 430px;" 
            runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="did" HeaderText="ID" />
                <asp:BoundField DataField="nam" HeaderText="Name" />
                <asp:BoundField DataField="mail" HeaderText="Mail_ID" />
                <asp:BoundField DataField="cells" HeaderText="cell" />
                <asp:BoundField DataField="dob" HeaderText="DOB" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
