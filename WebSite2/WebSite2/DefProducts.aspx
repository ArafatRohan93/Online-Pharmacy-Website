<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefProducts.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pharma+ Online</title>

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
<body>
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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Company</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="DefProducts.aspx">Square</a></li>
                                    <li><a href="DefProducts.aspx">Beximco</a></li>
                                    <li><a href="DefProducts.aspx">SKF+</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Generics</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="DefProducts.aspx">Paracytamol</a></li>
                                    <li><a href="DefProducts.aspx">Antibiotics</a></li>
                                    <li><a href="DefProducts.aspx">Anti-histamin</a></li>
                                </ul>
                            </li>
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>

                </div>
            </div>

           <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
        <ItemTemplate>
  <div class="col-sm-6 col-md-3">
      <a style="text-decoration:none" href="ProductView.aspx?PID=<%#Eval("PID") %>">
    <div class="thumbnail">
      <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
      <div class="caption">
        <div class="proName"><%#Eval("PName") %></div>
        <div class="probrand"><%#Eval("BrandName") %> Pharma Ltd.</div>
        <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span>  <%#Eval("SellPrice") %> <span class="proPriceDiscount">  <%#Eval("DiscAmount") %> off</span></div>

       
      </div>
    </div>
    </a>
  </div>
            </ItemTemplate>
</asp:Repeater>
</div>
            </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
