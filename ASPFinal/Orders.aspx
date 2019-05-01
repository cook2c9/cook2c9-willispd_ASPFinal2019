<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ASPFinal.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KroMart Orders</title>
        <link rel ="stylesheet" type="text/css" href="stylesheet.css"/>
</head>
<body>
   <form id="frmOrders" runat="server">
        <div>
        <div id="banner">
            <div id="KroMart">
                <asp:Label ID="lblKromart" runat="server" Text="Kro Mart" />
            </div>
            <asp:Image ID="imgBanner" runat="server" src="images/banner.png"/>
        </div>
            <div id="SelectedStore">
                <asp:Label ID="lblStoreOrders" runat="server" Text="Store:" />
                <asp:Label ID="lblSelectedStore" runat="server" />
            </div>
            <div id="SelectProducts">
                <asp:Label ID="lblProducts" runat="server" Text="Products:"></asp:Label>
                <asp:DropDownList ID="ddlProducts" runat="server" DataSourceID="SqlDataSource1" DataTextField="Description" DataValueField="Description" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select distinct Description
From tProduct
Where not LEN(Description)=0"></asp:SqlDataSource>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                <asp:TextBox ID="tbQuantity" runat="server" >1</asp:TextBox>
                <asp:Button ID="btnAddItem" runat="server" Text="Add Item" OnClick="btnAddItem_Click"/>
            </div>
            <div id="PlaceOrder">
                <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
            </div>
            <div id="RemoveSelectedItems">
                <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" OnClick="btnRemoveSelected_Click"/>
            </div>
            <div id="RemoveAllItems">
                <asp:Button ID="btnRemoveAll" runat="server" Text="Remove All" OnClick="btnRemoveAll_Click"/>
            </div>
            <div id="ListBox">
                <asp:ListBox ID="lbSelectedItems" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
