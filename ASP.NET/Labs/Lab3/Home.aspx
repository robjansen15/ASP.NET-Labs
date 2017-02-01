<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Lab3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Lab1</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
		    <div>
			    <a href="Home.aspx" id="logo"><img src="images/logo.png" alt="logo"></a>
			    <ul>
				    <li class="selected">
					    <a href="Home.aspx">Home</a>
				    </li>
				    <li>
					    <a href="Form.aspx">Form</a>
				    </li>		   
			    </ul>
		    </div>
	    </div>
	    <div id="body" class="home">
		    <h1 style="text-align:center">Welcome to my Form!</h1>
            
            <br/>
            <br/>

            <p>To get started please click on the "form" tab to submit your information.</p>
            
            <br/>
            
            <p>If you have any questions regarding this webpage feel free to contact me at fake@email.com</p>
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

