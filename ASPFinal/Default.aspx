<!--
    Name: Connor Cook and Patrick Willison
    Assignment: ASP Final Spring Semester 2019 UC Clermont
    Desciption: The classes used to design the Grocery Store Simulator webpage
    Sources: Assigned by Bill Nicholson
    -->
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
            <div id="KroMart">
                <asp:Label ID="lblKromart" runat="server" Text="Kro Mart" />
            </div>
            <asp:Image ID="imgBanner" runat="server" src="images/banner.png"/>
        </div>
        <div accesskey="text">
            <div id ="EnterLoyalty">
                 <h3 id="defaultH3">Please enter your loyalty information and select a store to shop at.</h3>
                <asp:Label ID="lblLoyalty" runat="server" Text="Loyalty Number:"></asp:Label>
                <asp:TextBox ID="tbLoyaltyNumber" runat="server" />
            </div>
            <div id="EnterStore">
                <asp:Label ID="lblStore" runat="server" Text="Store:"></asp:Label>
                <asp:DropDownList ID="ddlStore" runat="server" DataSourceID="connstring1" DataTextField="Store" DataValueField="Store"/>
                <asp:SqlDataSource ID="connstring1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="
select Store
from tStoreHistory
inner join tStore on  tStore.StoreID=tStoreHistory.StoreID
where tStoreHistory.StoreStatusID in ('1','9','11');
"></asp:SqlDataSource>
            </div>
            <asp:Button ID="btnFindStore" runat="server" Text="Find Store" OnClick="btnFindStore_Click" />
            <div id ="ClosedLabels">
                <asp:Label ID="lblCurrentClosed" runat="server" Text="Currently Closed" />
                <asp:Label ID="lblPermClosed" runat="server" Text="Permanently Closed" />
            </div>
            <div id="ClosedStores">
                <asp:ListBox ID="lbCurrentlyClosed" runat="server" DataSourceID="SqlDataSource1" DataTextField="Store" DataValueField="Store" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="
select Store
from tStoreHistory
inner join tStore on  tStore.StoreID=tStoreHistory.StoreID
where tStoreHistory.StoreStatusID in ('2','3','4','5','6','7','8','10','12','13');

"></asp:SqlDataSource>
                <asp:ListBox ID="lbPermClosed" runat="server" DataSourceID="SqlDataSource1" DataTextField="Store" DataValueField="Store" />
            </div>
        </div>
    </form>
</body>
</html>
