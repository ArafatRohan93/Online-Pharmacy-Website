<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password !</title>
     <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="Images/pills.png" height="30" /></span>Pharma+</a>
                   </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Company</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Square</a></li>
                                    <li><a href="#">Beximco</a></li>
                                    <li><a href="#">SKF+</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Generics</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Paracytamol</a></li>
                                    <li><a href="#">Antibiotics</a></li>
                                    <li><a href="#">Anti-histamin</a></li>
                                </ul>
                            </li>
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h4>Please enter your email address ,We will send you the instructions to reset your password.</h4>
                <div class="form-group">
                    <asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Your Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" ControlToValidate="tbEmailId" runat="server" ErrorMessage="Please enter your email ID!"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btPassRec" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btPassRec_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!---Footer-->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2019 Arafat Rohan &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot;<a href="#">Contacts</a> &middot;<a href="SignUp.aspx">Regester</a> &middot;</p>
            </div>
        </footer>

        <!---Footer-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
