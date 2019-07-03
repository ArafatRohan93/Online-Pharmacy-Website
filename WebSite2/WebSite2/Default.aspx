<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            
                           <li id="btnSignup" runat="server"><a href="SignUp.aspx" style="color:#000;">Sign Up</a></li>
                            <li id="btnSignin" runat="server"><a href="SignInNew.aspx" style="color:#000;">Sign In</a></li>
                            <li>
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>

                </div>
            </div>

            <!---Carousel-->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="float:initial;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img style="width:100%" src="Images/kaj1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Buy Medicines Online!</h3>
    <p>Join to our community and enjoy free/low cost delivery of essential medicines in discount price!</p>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us</a></p>
      </div>
    </div>
    <div class="item">
      <img style="width:100%" src="Images/core1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Medical News!</h3>
    <p>Subscribe to our site and know about the latest medical news!</p>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us</a></p>
      </div>
    </div>

       <div class="item">
      <img style="width:100%" src="Images/pharma1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Best Awarded Companies!</h3>
    <p>Join to Pharma+ and enjoy latest invented drugs!</p>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us</a></p>
      </div>
    </div>
   
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

          <!---Carousel-->
        <br />
            <br />
            <br />
        </div>
        <div >
         <!---Middle Content-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/anti.png" alt="thumb01" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Antiobiotics?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>

            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/pills1.png" alt="thumb02" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Multivitamins</h2>
                <p>
                  James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/prescription.png" alt="thumb03" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Capsules?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
          </div>
        </div>

         <!---Middle Content-->
            <br />
            <br />
            <br />
            <!---Middle Content-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/anti.png" alt="thumb01" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Antiobiotics?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>

            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/pills1.png" alt="thumb02" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Multivitamins</h2>
                <p>
                  James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/prescription.png" alt="thumb03" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Capsules?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
          </div>
        </div>

         <!---Middle Content-->
              <br />
              <br />
        <!---Middle Content-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/anti.png" alt="thumb01" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Antiobiotics?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>

            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/pills1.png" alt="thumb02" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Multivitamins</h2>
                <p>
                  James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
            <div class="col-lg-4" style="background-image: linear-gradient(#557df2, #dae0f2);border:solid;border-color:#fff;border-width:3px;">
                <img class="img-circle" src="Images/prescription.png" alt="thumb03" width="140" height="140" style="border:solid;border-color:#dae0f2;margin-top:5px;" />
                <h2>Capsules?</h2>
                <p>
                    James Murdock of London patented the two-piece telescoping gelatin capsule in 1847.
                    The capsules are made in two parts by dipping metal pins in the gelling agent solution. 
                    The capsules are supplied as closed units to the pharmaceutical manufacturer. 
                    Before use, the two halves are separated, the capsule is filled with powder or more normally pellets made by the process of 
                    Extrusion & Spheronization (either by placing a compressed slug of powder into one half of the capsule, or by 
                    filling one half of the capsule with loose powder) and the other half of the capsule is pressed on. With the 
                    compressed slug method, weight varies less between capsules. However, the machinery required to manufacture 
                    them is more complex.
                </p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
            </div>
          </div>
        </div>

         <!---Middle Content-->

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
