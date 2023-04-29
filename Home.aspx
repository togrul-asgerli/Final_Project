<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Home" %>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>Paspark</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!-- nice selecy -->
  <link rel="stylesheet" href="css/nice-select.min.css">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body>
    <form id="form1" runat="server">
  <div class="hero_area">
    <div class="bg-box">
      <img src="images/slider-bg.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="Home.aspx">
            <span>
              Paspark
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="Home.aspx">Home</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="About.aspx">About  </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Pricing.aspx">Pricing</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Registration.aspx">Register</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Parking Area Status.aspx">Parking Status</a>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Login</a>
              </li>
            </ul>
           
            
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div class="container">
        <div class="detail-box col-md-9 mx-auto px-0">
          <h1>
            Finding Parking Lots Made Easy
          </h1>
          <p>
            Parking is easy!Just come and park!
          </p>
        </div>
        <div class="find_form_container">
          
            <div class="form-row">
              <div class="col-md-4 px-0">
                <div class="form-group ">
                  <label for="">Your Name</label>
                  <div class="input-group">
                      <asp:TextBox ID="txt_name" required="true" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
              </div>
                 <div class="col-md-4 px-0">
                     </div>
              <div class="col-md-4 px-0">
                <div class="form-group">
                  <label for="">Your Vehicle Registration Number</label>
                  <div class="input-group ">
                      <asp:TextBox ID="txt_reg_no" required="true" CssClass="form-control" runat="server">
                      </asp:TextBox>
                  </div>
                </div>
              </div>
            </div>
            <div class="btn-box">
              <button type="submit" class="">
                  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btn_click"/>
              </button>
            </div>
            
          <div class="btn-box">
               <asp:GridView ID="search_data" runat="server" style="font-size:25px" CssClass= "table-bordered table-condensed  table-hover" BackColor="SkyBlue" >
 </asp:GridView>
            </div> 
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

    <!-- info section -->
  <section class="info_section ">

    <div class="container">
      <div class="info_top ">
        <div class="row ">
          <div class="col-md-6 col-lg-3 info_col">
            <div class="info_form">
                <h4>
             Stay Connected
              </h4>   
              <div class="social_box">
               <a href="https://twitter.com/asgerli_togrul " target="_blank">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="https://www.linkedin.com/in/togrul-asgerli-2a7571224/" target="_blank">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 info_col ">
            <div class="info_detail">
              <h4>
                About Us
              </h4>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 info_col ">
            <div class="info_detail">
              <h4>
                Online Booking
              </h4>
              <p>
                Accusantium quis architecto, necessitatibus libero nemo facere perferendis obcaecati pariatur magni quod praesentium provident nisi impedit nobis omnis. Assumenda vero impedit dolorum perspiciatis, ipsa quasi corrupti numquam.
              </p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 info_col">
            <h4>
              Contact us
            </h4>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit
            </p>
            <div class="contact_nav">
              <a href="#">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call : +994 50 6650485
                </span>
              </a>
              <a href="#">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Email : asgerli2003@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->
  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://github.com/togrul-asgerli" target="_blank">Car Parking Application</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
  </script>
  <!-- nice select -->
  <script src="js/jquery.nice-select.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
        </form>
</body>
   
</html>