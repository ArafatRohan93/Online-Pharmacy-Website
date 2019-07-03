<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignInNew.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body  style="background: url(/Images/pro4.jpg);background-color:#000;background-repeat: no-repeat; " >
    <form id="form1" runat="server">
        <div>
           <div class="navbar-default navbar-fixed-top" style="background-color:#547fff" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
 <a class="navbar-brand" href="Default.aspx" style="color:#fff"><span><img alt="Logo" src="Images/pills.png"  height="30" /></span>Pharma+</a>                   </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                           <li><a href="Default.aspx" style="color:#000">Home</a></li>
                            <li><a href="About.aspx" style="color:#000">About</a></li>
                            <li><a href="Contact.aspx" style="color:#000">Contact</a></li>
                            <li class="dropdown">
                                <a href="Products.aspx" class="dropdown-toggle" data-toggle="dropdown" style="color:#000">Search<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Company</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Square.aspx">Square</a></li>
                                    <li><a href="Beximco.aspx">Beximco</a></li>
                                    <li><a href="Skf.aspx">SKF+</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Generics</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Paracitamol.aspx">Paracytamol</a></li>
                                    <li><a href="Antibiotics.aspx">Antibiotics</a></li>
                                    <li><a href="AntiHistamin.aspx">Anti-histamin</a></li>
                                </ul>
                            </li>
                            <li><a href="SignUp.aspx" style="color:#000">Sign Up</a></li>
                            <li class="active"><a href="SignInNew.aspx" style="color:#000">Sign In</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <!--Sign In-->
        <div class="login-box">
           <img src="/Images/avatar.png" class="avatar" /> 
        <h1>Login Here</h1>

                 <p><asp:Label ID="Label4" runat="server"  Text="Username"></asp:Label></p>
            <p><asp:TextBox ID="UserName" type="text"  runat="server"></asp:TextBox></p>
                        <p><asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="User Name Field Is Required" ControlToValidate="UserName" CssClass="text-danger"></asp:RequiredFieldValidator></p>
            <p><asp:Label ID="Label5" runat="server"  Text="Password"></asp:Label></p>
            <p><asp:TextBox ID="Password" type="password" runat="server"></asp:TextBox></p>
                     <p>   <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password Field Is Required" ControlToValidate="Password" CssClass="text-danger"></asp:RequiredFieldValidator></p>
               
                     <div>
                        <asp:Button ID="Button1" runat="server" Text="LogIn" CssClass="btn btn-default" OnClick="Button1_Click" />                         
                <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx" Width="260px">Sign Up?</asp:LinkButton>
                    </div>
                                
           <div style="float:left;margin-top:10px;">              
             <asp:Label ID="Label3" runat="server"  Text="Remember Me?"></asp:Label>              
           </div>
           <div style="float:right;margin-right:140px;margin-top:10px;">
                 <asp:CheckBox ID="CheckBox1" runat="server" style="margin-top:20px;"/>
           </div>
             <div style="float:right;margin-right:50px;margin-bottom:10px;"> <asp:Label ID="lblError" CssClass="text-danger" runat="server" Text=""></asp:Label></div>
                  
            
        
        </div>
       
       
    </form>

             <!---Footer-->
             <div style="position: fixed;
                            left: 0;
                            bottom: 0;                         
                            width: 100%;
                            background-color: #b3cef5;
                            color: #000;
                            text-align: center;">
        
        <footer >
          
                 
                 <br />

                            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2019 Arafat Rohan &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot;<a href="Contact.aspx">Contacts</a> &middot;</p>
                 <br />
                
                 

            </div>
        </footer>
        </div>
        <!---Footer-->

        <!---Footer-->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
