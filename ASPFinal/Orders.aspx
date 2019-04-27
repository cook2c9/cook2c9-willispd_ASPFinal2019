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
            <div id="SelectedStore">
                <asp:Label ID="lblStoreOrders" runat="server" Text="Store:" />
                <asp:Label ID="lblSelectedStore" runat="server" />
            </div>
            <div id="SelectProducts">
                <asp:Label ID="lblProducts" runat="server" Text="Products:"></asp:Label>
                <asp:DropDownList ID="ddlProducts" runat="server" />
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                <asp:TextBox ID="tbQuantity" runat="server" />
                <asp:Button ID="btnAddItem" runat="server" Text="Add Item" />
            </div>
            <div id="PlaceOrder">
                <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
            </div>
            <div id="RemoveSelectedItems">
                <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" />
            </div>
            <div id="RemoveAllItems">
                <asp:Button ID="btnRemoveAll" runat="server" Text="Remove All" />
            </div>
            <div id="ListBox">
                <asp:ListBox ID="lbSelectedItems" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
