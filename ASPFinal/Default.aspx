<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPFinal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KroMart</title>
</head>
<body>
    <form id="frmDefault" runat="server">
        <div accesskey="text">
            <asp:TextBox ID="tbLoyaltyNumber" runat="server" />
            <asp:DropDownList ID="ddlStore" runat="server" />
            <asp:Button ID="btnFindStore" runat="server" Text="Button" />
            <asp:ListBox ID="lbCurrentlyClosed" runat="server" />
            <asp:ListBox ID="lbPermClosed" runat="server" />
        </div>
    </form>
</body>
</html>
