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
            <h3 runat="server" id="H3">Sorry for no color --- to busy at work</h3>
        </div>

        <asp:Button runat="server" ID="logoutBtn" OnClick="logoutBtn_Click" Text="Logout"/>


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:Button ID="visiblePanel" runat="server" OnClick="visiblePanel_Click" Text="Change Password Tab"/>

        <asp:Panel runat="server" ID="myPanel">
            <h1>Change your password here!!</h1>
            <h2 id="errMessages"></h2>
             <asp:ValidationSummary runat="server" ID="Summary" DisplayMode="BulletList" HeaderText="<div><b>Please review the following errors:</b></div>" />

            <br />
            <label runat="server" for="username">Username</label>
            <input id="username" runat="server" placeholder="username" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="username" ErrorMessage="Please enter your username"></asp:RequiredFieldValidator>     
           
            
            <br />
             <label runat="server" for="password">Current Password</label>
            <input type="password" id="password" runat="server" placeholder="current password" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="password" ErrorMessage="Please enter your current password"></asp:RequiredFieldValidator>     
            
            
            <br />
            <label runat="server" for="newpassword">New Password</label>
            <input type="password" id="newpassword" runat="server" placeholder="new password" />
            <asp:RegularExpressionValidator ID="string" runat="server" ControlToValidate="newpassword" ErrorMessage="Password must have 10 characters and use both numbers and digits." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{10,}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate ="newpassword" ErrorMessage="Please enter a password."></asp:RequiredFieldValidator>     
            
            
            <br />
            <label runat="server" for="confirmpassword">Confirm New Password</label>
            <input type="password" id="confirmpassword" runat="server" placeholder="confirm new password" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="confirmpassword" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>  
            <asp:CompareValidator ID="passwordsEqual" runat="server" Operator="Equal" ControlToValidate="newpassword" ControlToCompare="confirmpassword" ErrorMessage="Passwords need to be the same."></asp:CompareValidator>
            <br />
            <br />
            <br />

            <asp:Button runat="server" ID="changePassword" OnClick="changePassword_Click" Text="Change Password" />

        </asp:Panel>

    </form>
</body>
</html>
