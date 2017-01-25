<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab2</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="mainDiv">
            <h1>Lab 2</h1>
            
            <asp:TextBox runat="server" id="textBox">HI</asp:TextBox>
            
            <asp:DropDownList ID="myList" runat="server" EnableViewState="True" OnSelectedIndexChanged="myList_OnSelectedIndexChanged">           
                <asp:ListItem Value="dummy" selected="True"></asp:ListItem>    
            </asp:DropDownList>
            

        </div>

    </form>
</body>
</html>
