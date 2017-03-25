<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggedIn.aspx.cs" Inherits="Lab5.LoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 runat="server" id="message">YOU ARE LOGGED IN!</h1>
        </div>

        <asp:Button runat="server" ID="logoutBtn" OnClick="logoutBtn_Click" Text="Logout"/>


        <br />
        <br />
        <br />

        <h1>Change your password here!!</h1>
        <input id="password" runat="server" placeholder="password" />
        <input id="confirmPassword" runat="server" placeholder="confirmPassword" />
        <br />

        <asp:Button runat="server" ID="changePassword" OnClick="changePassword_Click" Text="Change Password" />

    </form>
</body>
</html>
