<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewOrders.aspx.cs" Inherits="ASPFinal.ReviewOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Your Order</title>
</head>
<body>
    <form id="frmReviewOrder" runat="server">
        <div>
            <asp:Label ID="lblYourOrderNum" runat="server" Text="Label" />
            <asp:ListBox ID="lbYourProducts" runat="server" />
            <asp:Label ID="lblOrderStatus" runat="server" Text="Label" />
            <asp:Button ID="btnBackToFront" runat="server" Text="Back To Front" />
        </div>
    </form>
</body>
</html>
