<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pharma+ Online</title>
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
                        <a class="navbar-brand" href="Default.aspx" style="color:#fff"><span><img alt="Logo" src="Images/pills.png"  height="30" /></span>Pharma+</a>
                   </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Default.aspx" style="color:#000">Home</a></li>
                            <li><a href="Products.aspx" style="color:#000">Products</a></li>
                            <li class="active"><a href="About.aspx" style="color:#000">About</a></li>
                            <li><a href="Contact.aspx" style="color:#000">Contact</a></li>
                            <li class="dropdown">
                                <a href="DefProducts.aspx" class="dropdown-toggle" data-toggle="dropdown" style="color:#000">Search<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Company</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Products.aspx">Square</a></li>
                                    <li><a href="Products.aspx">Beximco</a></li>
                                    <li><a href="Products.aspx">SKF+</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Generics</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Products.aspx">Paracytamol</a></li>
                                    <li><a href="Products.aspx">Antibiotics</a></li>
                                    <li><a href="Products.aspx">Anti-histamin</a></li>
                                </ul>
                            </li>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            
                           <li id="btnSignup" runat="server"><a href="SignUp.aspx" style="color:#000;">Sign Up</a></li>
                            <li id="btnSignin" runat="server"><a href="SignInNew.aspx" style="color:#000;">Sign In</a></li>
                            
                        </ul>
                    </div>

                </div>
            </div>

      
        <br />
            <br />
        </div>

         <!---Middle Content-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/avatar.png" alt="thumb01" width="140" height="140" />
                <h2>Admin</h2>
                <p>
                    This is a test project for a laboratory course of Khulna university of engineering and technology, Khulna,Bangladesh.<br />
                    The site is developed by Md. Arafat Rohan,CSE 2K16,KUET !<br />
                    Thank You for visiting this site!<br />
                </p>
               
            </div>

            <div class="col-lg-4">
                <img class="img-circle" src="Images/pills1.png" alt="thumb02" width="140" height="140" />
                <h2>Features</h2>
                <p>
                  You can view popular and essential medicines in this site.<br />By signing in you can buy them.<br />
                    We have clean review for customer service.Hope you have a goood experiance!<br />
                </p>
                
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Images/prescription.png" alt="thumb03" width="140" height="140" />
                <h2>Contact</h2>
                <p>
                    Feel free to mail me at <a>rohanarafat86@gmail.com</a>.<br />
                    All kind of suggestions and bug reports will be monitored to give you a good experiance!<br />
                </p>
               
            </div>
          </div>
        </div>

         <!---Middle Content-->

      
      

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
