<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>
     <script	 src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="  crossorigin="anonymous"> </script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
</head>
<body style="background: url(/Images/userback2.jpg);" >
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
                        <a class="navbar-brand" href="Default.aspx" style="color:#fff"><span><img alt="Logo" src="Images/pills.png" height="30" /></span>Pharma+</a>
                   </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx" style="color:#000">Home</a></li>
                            <li><a href="Products.aspx" style="color:#000">Products</a></li>
                            <li><a href="About.aspx" style="color:#000">About</a></li>
                            <li><a href="Contact.aspx" style="color:#000">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:#000">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header"><a href="Products.aspx">All Products</a></li>
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
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li>
                                <asp:Button ID="btnSignIn" runat="server" Class="btn btn-default navbar-btn" Text="Sign in" OnClick="btnSignIn_Click" />
                                <asp:Button ID="btnSignOut" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <div class="center-page">
            <div class="row" style="width:1000px;height:1000px;">
  <div class="col-sm-6 col-md-4" style="background-color:#89a5f5;border-style: solid;border-color: #fff;">
      <p><center><asp:Label ID="lblSuccess" runat="server"  CssClass="text-success"></asp:Label></center></p>
    <div class="thumbnail" style="border-style: solid;border-color: #fff;background-color:#abbced;">
      <img src="Images/FakeDP.jpeg" alt="User-Image"  />
      <div class="caption">
        <center><h3><asp:Label ID="lblSuccessProfile" runat="server" Text="Label"></asp:Label></h3></center>
        <center><p>Status : User</p></center>
        <center><p>Age : 23</p></center>
        <center><p>E-mail : arafatrohankuet@gmail.com</p></center>
        <center><p>Address : Dr.M.A.Rashid Hall, KUET,Khulna-9230</p></center>
       <center> <p><a href="Products.aspx" class="btn btn-primary" role="button">Shop</a> <a href="Default.aspx" class="btn btn-primary" role="button">Home</a></p></center>
      </div>
    </div>
  </div>
</div>
        
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

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
