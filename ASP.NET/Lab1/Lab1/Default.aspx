<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab1</title>
    

</head>
<body>
    <form id="form1" runat="server">
        <div id="mainDiv">
            
            <%--Name--%>
            <asp:Label runat="server" AssociatedControlID="firstName">First Name</asp:Label>
            <asp:TextBox runat="server" id="firstName"></asp:TextBox>
            
            <br/>
            <br/>

            <asp:Label runat="server" AssociatedControlID="lastName">Last Name</asp:Label>
            <asp:TextBox runat="server" id="lastName"></asp:TextBox>
            
            <br/>
            <br/>
            
            <%--Email--%>
            <asp:Label runat="server" AssociatedControlID="email">Email</asp:Label>
            <asp:TextBox runat="server" id="email" TextMode="Email"></asp:TextBox>
            <br/>
            <br/>
            <asp:Label runat="server" AssociatedControlID="emailConfirm">Confirm Email</asp:Label>
            <asp:TextBox runat="server" id="emailConfirm" TextMode="Email"></asp:TextBox>
            
            <br/>
            <br/>
            <%--Password--%>
            <asp:Label runat="server">Password</asp:Label>
            <asp:TextBox runat="server" id="passwordInput" TextMode="Password"></asp:TextBox>
            
            <br />
            <%--Radio buttons of gender--%>
            <asp:Label runat="server" AssociatedControlID="personGender">Gender</asp:Label>
            <asp:RadioButtonList ID="personGender" runat="server">
                <asp:ListItem Text="Male" Value="male" />
                <asp:ListItem Text="Female" Value="female" />
                 <asp:ListItem Text="Other" Value="other" />
            </asp:RadioButtonList>

            <br />
            <br/>
            <%--Department--%>
            <asp:Label runat="server" AssociatedControlID="department">Department</asp:Label>
            <asp:DropDownList runat="server" id="department">
                <asp:ListItem Text="Computer Science" Value="compSci"></asp:ListItem>    
                <asp:ListItem Text="Math" Value="math"></asp:ListItem>   
                <asp:ListItem Text="Physics" Value="physics"></asp:ListItem>   
            </asp:DropDownList>
            
            <br/>
            <br/>
            <asp:Label runat="server" AssociatedControlID="personStatus">Status</asp:Label>
            <asp:RadioButtonList ID="personStatus" runat="server">
                <asp:ListItem Text="Student" Value="student" />
                <asp:ListItem Text="Factulty" Value="faulty" />
                 <asp:ListItem Text="Staff" Value="staff" />
            </asp:RadioButtonList>
            
            <br/>
            <br/>
            <%--Terms and service--%>
            <asp:Label runat="server" AssociatedControlID="agreeToTerms">Agree to Terms</asp:Label>
            <asp:CheckBox runat="server" id="agreeToTerms"/>
            
            <br/>
            <br/>
            <asp:Button runat="server" id="submitBtn" Text="Submit" OnClick="Button1_Click"/>


        </div>
    </form>
</body>
</html>
