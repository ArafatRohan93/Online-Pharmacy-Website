<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body  style="background: url(/Images/def4.png);" >
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
                           <li class="active"><a href="Default.aspx" style="color:#000">Home</a></li>
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
                            <li class="active"><a href="SignUp.aspx"  style="color:#000">Sign Up</a></li>
                            <li><a href="SignInNew.aspx" style="color:#000">Sign In</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <h1 class="center">Sign Up</h1>
        <hr />
        <!--Sing up-->
        <div class="center-page">
          <div class="row" style="width:1000px;">
            <div class="col-lg-4" style="background-image: linear-gradient(#858eff, #70c1ff);border:solid;border-color:#fff;border-radius: 25px;border-width:3px;padding:20px;">
            <label class="col-xs-11">User Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUname" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
            </div>

            <label class="col-xs-11 space-vertt">Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11 space-vertt">Confirm Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11 space-vertt">Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
            </div>

            <label class="col-xs-11 space-vertt">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>      

            <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" CssClass="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>


           </div>
           </div>    
        </div>

        <!--Sing up-->
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
                <p>&copy; 2019 Arafat Rohan &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot;<a href="#">Contacts</a> &middot;</p>
                 <br />
                
                 

            </div>
        </footer>
        </div>

        <!---Footer-->

        


    </form>
    
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
