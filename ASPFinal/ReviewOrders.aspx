<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewOrders.aspx.cs" Inherits="ASPFinal.ReviewOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Your Order</title>
        <link rel ="stylesheet" type="text/css" href="stylesheet.css"/>
</head>
<body>
    <form id="frmReviewOrder" runat="server">
        <div>
            <div id="ReviewOrderNumber">
                <asp:Label ID="lblYourOrderNum" runat="server" Text="Your Order Number: " />
                <asp:Label ID="lblOrderNumber" runat="server" Text="<>" />
            </div>
            <div id="ReviewStatus">
                <asp:Label ID="lblOrderStatus" runat="server" Text="Order Status:" />
                <asp:Label ID="lblStatusOpenClosed" runat="server" Text="<>" />
            </div>
            <div id="ReviewLabelProducts">
                <asp:Label ID="lblProducts" runat="server" Text="Your Products" />
                <div id="ListBoxProducts">
                    <asp:ListBox ID="lbYourProducts" runat="server" />
                </div>
            </div>
            <div id="BackToFront">
                <asp:Button ID="btnBackToFront" runat="server" Text="Back To Front" OnClick="btnBackToFront_Click"/>
            </div>
            <asp:Button ID="btnTemp" runat="server" Text="Temporary" OnClick="btnTemp_Click" />
        </div>
    </form>
</body>
</html>
