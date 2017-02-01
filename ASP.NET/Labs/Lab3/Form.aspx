<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Lab3.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Lab3</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
		    <div>
			    <a href="Home.aspx" id="logo"><img src="images/logo.png" alt="logo"></a>
			    <ul>
				    <li>
					    <a href="Home.aspx">Home</a>
				    </li>
				    <li class="selected">
					    <a href="Form.aspx">Form</a>
				    </li>		   
			    </ul>
		    </div>
	    </div>
	    <div id="body" class="home">
	        
            <asp:ValidationSummary runat="server" ID="Summary" DisplayMode="BulletList" HeaderText="<div><b>Please review the following errors:</b></div>"/>
		    

             <%--Name--%>
            <asp:RequiredFieldValidator ID="fname" Enabled="True" runat="server" ControlToValidate ="firstName" ErrorMessage="Please input a first name."></asp:RequiredFieldValidator>       
            
             <br/> 

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
            
            <br/>
            <br />
            
            <%--Password check--%>
            <asp:Label runat="server" AssociatedControlID="passwordInputCheck">Confirm Password</asp:Label>
            <asp:TextBox runat="server" id="passwordInputCheck" TextMode="Password"></asp:TextBox>
            
            <br />
            <br/>
            <%--Radio buttons of gender--%>
            <asp:Label runat="server" AssociatedControlID="personGender">Gender</asp:Label>
            <asp:RadioButtonList ID="personGender" runat="server">
                <asp:ListItem Text="Male" Value="male" />
                <asp:ListItem Text="Female" Value="female" />
                 <asp:ListItem Text="Other" Value="other" />
            </asp:RadioButtonList>

        
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
            <asp:Button runat="server" id="submitBtn" Text="Submit" OnClick="Submit_Button"/>
           

            <br />
            <br />

            <asp:Label ID="webOutput" runat="server" Visible="false"></asp:Label>
            <asp:Button runat="server" id="verifyButton" Text="Verify" Visible="false" OnClick="Verify_Click"/>
            <asp:Button runat="server" id="cancelBtn" Text="Resubmit" Visible="false" OnClick="Cancel_Click"/>
	    </div>
	    <div id="footer">
		    <div>
			    <p>
				    &#169; Rob Jansen
			    </p>
			    <div class="connect">
				    <a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">google+</a> <a href="http://www.freewebsitetemplates.com/misc/contact" id="contact">contact</a> <a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a> <a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
			    </div>
		    </div>
	    </div>
    </form>
</body>
</html>
