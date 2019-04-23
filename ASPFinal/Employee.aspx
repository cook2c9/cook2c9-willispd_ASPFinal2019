<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="ASPFinal.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
</head>
<body>
    <form id="frmEmployee" runat="server">
        <div>
            <asp:DropDownList ID="ddlOrderNum" runat="server" />
            <asp:ListBox ID="lbSelectedProducts" runat="server" />
            <asp:Label ID="lblCurrentStatus" runat="server" Text="Label" />
            <asp:Button ID="btnCloseOrder" runat="server" Text="Close Order" />
            <asp:Button ID="btnReopenOrder" runat="server" Text="Reopen Order" />
        </div>
    </form>
</body>
</html>
