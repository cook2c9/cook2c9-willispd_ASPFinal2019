<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPFinal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KroMart</title>
    <link rel ="stylesheet" type="text/css" href="stylesheet.css"/>
</head>
<body>
    <form id="frmDefault" runat="server">
        <div id="banner">
        </div>
        <div accesskey="text">
            <div id ="EnterLoyalty">
                <asp:Label ID="lblLoyalty" runat="server" Text="Loyalty Number:"></asp:Label>
                <asp:TextBox ID="tbLoyaltyNumber" runat="server" />
            </div>
            <div id="EnterStore">
                <asp:Label ID="lblStore" runat="server" Text="Store:"></asp:Label>
                <asp:DropDownList ID="ddlStore" runat="server"/>
            </div>
            <asp:Button ID="btnFindStore" runat="server" Text="Find Store" OnClick="btnFindStore_Click" />
            <div id ="ClosedLabels">
                <asp:Label ID="lblCurrentClosed" runat="server" Text="Currently Closed" />
                <asp:Label ID="lblPermClosed" runat="server" Text="Permanently Closed" />
            </div>
            <div id="ClosedStores">
                <asp:ListBox ID="lbCurrentlyClosed" runat="server" />
                <asp:ListBox ID="lbPermClosed" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
