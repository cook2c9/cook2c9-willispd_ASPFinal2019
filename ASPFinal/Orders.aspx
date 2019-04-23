<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ASPFinal.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KroMart Orders</title>
</head>
<body>
    <form id="frmOrders" runat="server">
        <div>
            <asp:DropDownList ID="ddlProducts" runat="server" />
            <asp:TextBox ID="tbQuantity" runat="server" />
            <asp:Button ID="btnAddItem" runat="server" Text="Add Item" />
            <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" />
            <asp:Button ID="btnRemoveAll" runat="server" Text="Remove All" />
            <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" />
            <asp:ListBox ID="lbSelectedItems" runat="server" />
        </div>
    </form>
</body>
</html>
