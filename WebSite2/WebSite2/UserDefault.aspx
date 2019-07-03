<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="UserDefault.aspx.cs" Inherits="UserDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
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
                        <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="Images/pills.png" height="30" /></span>Pharma+</a>
                   </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="DefProducts.aspx" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
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

            <!---Carousel-->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
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
        <h3>Test Caption</h3>
    <p>Test test Test test Test test Test test Test test Test test</p>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us</a></p>
      </div>
    </div>
    <div class="item">
      <img style="width:100%" src="Images/core1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Test Caption</h3>
    <p>Test test Test test Test test Test test Test test Test test</p>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us</a></p>
      </div>
    </div>

       <div class="item">
      <img style="width:100%" src="Images/pharma1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Test Caption</h3>
    <p>Test test Test test Test test Test test Test test Test test</p>
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
        </div>

         <!---Middle Content-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/anti.png" alt="thumb01" width="140" height="140" />
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

            <div class="col-lg-4">
                <img class="img-circle" src="Images/pills1.png" alt="thumb02" width="140" height="140" />
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
            <div class="col-lg-4">
                <img class="img-circle" src="Images/prescription.png" alt="thumb03" width="140" height="140" />
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

        <!---Footer-->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2019 Arafat Rohan &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot;<a href="#">Contacts</a> &middot;<a href="SignUp.aspx">Regester</a> &middot;</p>
            </div>
        </footer>

        <!---Footer-->
        

    
</asp:Content>

