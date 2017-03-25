<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Lab5.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <!-- Bootstrap CSS -->    
    <link href="/nice-assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="/nice-assets/css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="/nice-assets/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/nice-assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="/nice-assets/css/style.css" rel="stylesheet" />
    <link href="/nice-assets/css/style-responsive.css" rel="stylesheet" />
</head>
  <body class="login-img3-body">

    <div class="container">

      <form id="mainForm" class="login-form"  runat="server">        
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>

            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input runat="server" id="fname" type="text" class="form-control" placeholder="First Name" autofocus />
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input runat="server" id="lname" type="text" class="form-control" placeholder="Last Name" />
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input runat="server" id="email" type="text" class="form-control" placeholder="Email" />
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input runat="server" id="password" type="password" class="form-control" placeholder="Password" />
            </div>

            <asp:Linkbutton runat="server" ID="submit" OnClick="submit_Click" class="btn btn-primary btn-lg btn-block" type="submit">Submit</asp:Linkbutton>
        </div>
      </form>
    <div class="text-right">
            <div class="credits">
                <!-- 
                    All the links in the footer should remain intact. 
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
                -->
                <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </div>
      
  

  </body>
</html>
