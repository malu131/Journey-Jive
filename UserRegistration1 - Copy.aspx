<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration1.aspx.cs" Inherits="UserRegistration1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Journey Jive &mdash; Free Website Template by Colorlib</title>
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
                       <li><a href="Login.aspx" class="nav-link">Login</a></li>
                  <li><a href="Services.aspx" class="nav-link">Services</a></li>
                  <li><a href="HotelRegistration.aspx" class="nav-link">Hotel</a></li>
                  <li><a href="UserRegistration1.aspx" class="nav-link">User</a></li>
                  <li><a href="DriverRegistration1.aspx" class="nav-link">Driver</a></li>
                  <li><a href="ContactUs1.aspx" class="nav-link">Contact</a></li>
                </ul>
              </nav>
            </div>

            
          </div>
        </div>

      </header>

    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay" style="background-image: url('images1/user.jpg')">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-5">
              <%--<div class="feature-car-rent-box-1">
                <h3>Range Rover S7</h3>
                <div class="d-flex align-items-center bg-light p-3">
                  <span>$150/day</span>
                  <a href="contact.html" class="ml-auto btn btn-primary">Rent Now</a>
                </div>
              </div>--%>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section pt-0 pb-0 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <form class="trip-form" id="form1" runat="server">
              <%--<form class="trip-form">--%>
                <div class="row align-items-center mb-4">
                  <div class="col-md-6">
                    <h3 class="m-0"> <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="0,123,255" Font-Size = "X-Large"
            Text="Customer Registration"></asp:Label> </h3>
                  </div>
                  <%--<div class="col-md-6 text-md-right">
                    <span class="text-primary">32</span> <span>cars available</span></span>
                  </div>--%>
                </div>
                <div class="row">
                
   
                   <div style="Width:1000px;text-align:left;padding-left: 200px;">
     
          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Gender:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" MaxLength="10" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
             <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="DOB:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="65px" Height="29px" ></asp:DropDownList><asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="65px" Height="29px"></asp:DropDownList><asp:DropDownList ID="DropDownList9" 
                 runat="server" Width="95px" Height="29px"></asp:DropDownList>
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px" TextMode="Password"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Security Question:"></asp:Label>
       &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" 
                 runat="server" Width="225px" Height="29px">
             </asp:DropDownList>
        <br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password:"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="225px"  Height="26px" TextMode="Password"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="*" 
                 ForeColor="Red"></asp:CompareValidator>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Answer:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />      
       <asp:Label ID="Label10" runat="server" Text="Address:"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
                 runat="server" Width="225px" Height="40px" TextMode="MultiLine"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Company Details:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="225px" ></asp:TextBox> 
        <br />
        <br />
                            <asp:Label ID="Label2" runat="server" Text="Aadhaar:"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" 
               runat="server" Width="225px" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"></asp:TextBox>
        
      <br />
      <br />
          <asp:Label ID="Label12" runat="server" Text="Upload Image:"></asp:Label>             
             <div style="margin-top:-18px;margin-left:125px; background-color: 0, 123, 255;"> 
                 <asp:FileUpload ID="FileUpload4" runat="server" Width="331px" Height="40px" 
                     onload="FileUpload4_Load" style="margin-left: 0px" class="btn btn-primary"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ControlToValidate="FileUpload4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
        <br /> 
                 <asp:Button 
                 ID="Button3" runat="server" Height="40px" Text="Submit" onclick="Button1_Click"  
        Width="110px" class="btn btn-primary"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="40px" Text="Cancel"   
        Width="112px" onclick="Button2_Click" class="btn btn-primary"/>
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>
          </form>
                </div>
                <div class="row">
                  <%--<div class="col-lg-6">
                    <input type="submit" value="Submit" class="btn btn-primary">
                  </div>--%>
                </div>
              
            </div>
        </div>
      </div>
    </div>

    

    
    

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
                  <li><a href="AboutUs1.aspx">About Us</a></li>
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
            Copyright &copy;<script>                                document.write(new Date().getFullYear());</script> All rights reserved |<%-- This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="#" target="_blank" >--%>YUVATECH Solutions</a>
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


    
</body>
</html>
