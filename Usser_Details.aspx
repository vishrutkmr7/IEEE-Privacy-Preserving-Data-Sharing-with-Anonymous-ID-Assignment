<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usser_Details.aspx.cs" Inherits="Usser_Details" %>

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
            
            style="position:absolute; top: 295px; left: 316px; height: 165px; width: 468px;" 
            runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="ID" />
                <asp:BoundField DataField="nam" HeaderText="Name" />
                <asp:BoundField DataField="mail" HeaderText="Mail_ID" />
                <asp:BoundField DataField="mob" HeaderText="cell" />
                <asp:BoundField DataField="citys" HeaderText="Place" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
