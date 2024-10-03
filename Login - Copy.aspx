<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Journey Jive&mdash;</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts1/icomoon/style.css">

    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css1/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css1/owl.carousel.min.css">
    <link rel="stylesheet" href="css1/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts1/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css1/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css1/style.css">


</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    
    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>



      <header class="site-navbar site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">

            <div class="col-3 ">
              <div class="site-logo">
                <a href="Homepage1.aspx">Journey Jive</a>
              </div>
            </div>

            <div class="col-9  text-right">
              

              <span class="d-inline-block d-lg-none"><a href="#" class="text-white site-menu-toggle js-menu-toggle py-5 text-white"><span class="icon-menu h3 text-white"></span></a></span>

              

              <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto ">
                  <li class="active"><a href="Homepage1.aspx" class="nav-link">Home</a></li>
                  <li><a href="Services.aspx" class="nav-link">Services</a></li>
                   <li><a href="Login.aspx" class="nav-link">Login</a></li>
                  <li><a href="HotelRegistration.aspx" class="nav-link">Hotel</a></li>
                  <li><a href="UserRegistration1.aspx" class="nav-link">User</a></li>
                  <li><a href="DriverRegistration1.aspx" class="nav-link">Pooler</a></li>
                  <li><a href="ContactUs1.aspx" class="nav-link">Contact</a></li>
                </ul>
              </nav>
            </div>

            
          </div>
        </div>

      </header>
  <form id="form2" runat="server">
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay" style="background-image: url('images1/f8.jpg')">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-5">
              <div class="feature-car-rent-box-1">
                <h3>Login</h3>
                <ul class="list-unstyled">
               
                  <li>
                   
							 <asp:Label ID="Label13" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="225px" ></asp:TextBox>
       
          </li>
           <li>
          <asp:Label ID="Label15" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server" Width="225px" Height="29px" 
                                 TextMode="Password" ></asp:TextBox>
        
           </li>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button 
                 ID="Button1" runat="server" Height="40px" Text="Login"  
                  onclick="Button1_Click"  
        Width="110px" class="ml-auto btn btn-primary"/> &nbsp;&nbsp;<asp:Button ID="Button2" 
                 runat="server" Height="40px"  Text="Cancel"    
        Width="110px" onclick="Button2_Click" class="ml-auto btn btn-primary"/>
    <li>
       
         <%--<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password</asp:LinkButton>--%>
         <br />
        <br />
         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
						
                 </li>
                 
                  
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

   

     </form>

   















    
   

    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <h2 class="footer-heading mb-4">About Us</h2>
                <p>We reimagine the way the world moves for the better. We’re building a culture that emphasizes doing the right thing, period, for riders and drivers.</p>
          </div>
          <div class="col-lg-8 ml-auto">
            <div class="row">
              <div class="col-lg-3">
               <%-- <h2 class="footer-heading mb-4">Quick Links</h2>--%>
                <ul class="list-unstyled">
                  <li><a href="Homepage1.aspx">Home</a></li>
                  <li><a href="AboutUs1.aspx">About us</a></li>
                  <li><a href="ContactUs1.aspx">Contact Us</a></li>
                  <li><a href="Services.aspx">Services</a></li>
                  <%--<li><a href="#">Contact Us</a></li>--%>
                </ul>
              </div>
              <div class="col-lg-3">
             <%--   <h2 class="footer-heading mb-4">Quick Links</h2>--%>
                <ul class="list-unstyled">
                  <li><a href="UserRegistration1.aspx">User Registration</a></li>
                  <li><a href="DriverRegistration1.aspx">Driver Registration</a></li>
                  <li><a href="HotelRegistration.aspx">Hotel Registration</a></li>
                  <li><a href="Services.aspx">Services</a></li>
                <%--  <li><a href="#">Contact Us</a></li>--%>
                </ul>
              </div>
              <div class="col-lg-3">
                <%--<h2 class="footer-heading mb-4">Quick Links</h2>--%>
                <ul class="list-unstyled">
                  <li><a href="#">Address:</a></li>
                  <li><a href="#">29 Christ Nagar</a></li>
                  <li><a href="#">Thiruvananthapuram</a></li>
                  <li><a href="#">695512,Kerala,INDIA</a></li>
                 <%-- <li><a href="#">Kerala,India</a></li>--%>
               
                </ul>
              </div>
              <div class="col-lg-3">
               <%-- <h2 class="footer-heading mb-4">Quick Links</h2>--%>
                <ul class="list-unstyled">
                  <li><a href="#">Phone:</a></li>
                  <li><a href="#">+91 8593048882</a></li>
                  <li><a href="#">Email ID:</a></li>
                  <li><a href="#">sharerideweb@gmail.com</a></li>
                 <%-- <li><a href="#">Contact Us</a></li>--%>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>                                document.write(new Date().getFullYear());</script> All rights reserved | <%--This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="#" target="_blank" >--%>YUVATECH Solutions</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>

        </div>
      </div>
    </footer>
    </div>

    <script src="js1/jquery-3.3.1.min.js"></script>
    <script src="js1/popper.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/owl.carousel.min.js"></script>
    <script src="js1/jquery.sticky.js"></script>
    <script src="js1/jquery.waypoints.min.js"></script>
    <script src="js1/jquery.animateNumber.min.js"></script>
    <script src="js1/jquery.fancybox.min.js"></script>
    <script src="js1/jquery.easing.1.3.js"></script>
    <script src="js1/bootstrap-datepicker.min.js"></script>
    <script src="js1/aos.js"></script>

    <script src="js1/main.js"></script>


    <%--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
</body>
</html>

