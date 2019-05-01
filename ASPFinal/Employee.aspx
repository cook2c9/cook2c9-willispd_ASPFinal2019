<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="ASPFinal.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
        <link rel ="stylesheet" type="text/css" href="stylesheet.css"/>
</head>
<body>
    <form id="frmEmployee" runat="server">
       <div>
            <div id="banner">
            <div id="KroMart">
                <asp:Label ID="lblKromart" runat="server" Text="Kro Mart" />
            </div>
            <asp:Image ID="imgBanner" runat="server" src="images/banner.png"/>
        </div>
            <div id="EmplOpenOrders">
                <asp:Label ID="lblOpenOrders" runat="server" Text="Open Orders:" />
            </div>
            <div id="EmplContent">
                <div id="EmplLblOrderNums">
                    <asp:Label ID="lblOrderNums" runat="server" Text="Order Numbers:" />
                </div>
                <asp:DropDownList ID="ddlOrderNum" runat="server"/>
                <div id="EmployeeSelectedProducts">
                    <div id="EmplLblSelectedProducts">
                        <asp:Label ID="lblSelectedProducts" runat="server" Text="Selected Products" />
                    </div>
                    <asp:ListBox ID="lbSelectedProducts" runat="server" />
                </div>
                <div id="EmplButtonsAndStatus">
                    <div id="EmplStatus">
                    <asp:Label ID="lblCurrentStatus" runat="server" Text="Status:" />
                    <asp:Label ID="lblStatusOpenClosed" runat="server" Text="<>" />
                </div>
                    <div id="EmplButtonClose">
                        <asp:Button ID="btnCloseOrder" runat="server" Text="Close Order" OnClick="btnCloseOrder_Click"/>
                    </div>
                    <asp:Button ID="btnReopenOrder" runat="server" Text="Reopen Order" OnClick="btnReopenOrder_Click"/>
                </div>
            </div>
    </div>
    </form>
</body>
</html>
