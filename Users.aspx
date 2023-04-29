﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="FinalProject.Users" %>

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

<body class="sub_page">
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
              <li class="nav-item">
                <a class="nav-link active" href="Home.aspx">Back to Home </a>
              </li>
                <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" />
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- pricing section -->

  <section class="client_section layout_padding">
    <div class="container">
        <asp:GridView ID="ParkGrid" Cssclass="table table-bordered table-condensed  table-hover" AutoGenerateColumns="false" runat="server">
             <Columns>
                    <asp:BoundField DataField="Slot_Name" HeaderText="Slot Name" />
                    <asp:BoundField DataField="Table_Name" HeaderText="Parking Area" />
                 </Columns>
        </asp:GridView>
        <asp:GridView ID="UserGrid" Cssclass="table table-bordered table-condensed  table-hover" AutoGenerateColumns="false" runat="server" OnRowCancelingEdit="edit_cancle" OnRowDeleting="row_delete" OnRowEditing="row_edit" OnRowUpdating="row_update">
             <Columns>
                     <asp:BoundField DataField="Person_ID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Vehicle_Registration_NO" HeaderText="Vehicle Registration NO" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone" />
                    <asp:BoundField DataField="Registration_Date" HeaderText="Registration Date" />
                    <asp:BoundField DataField="Pricing_Type" HeaderText="Pricing Type" />
                    <asp:CommandField  ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
     
    </div>
       
  </section>
        <section class="info_section ">
            </section>
        
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
                <a href="https://twitter.com/asgerli_togrul" target="_blank">
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
              <p>
                Necessitatibus, culpa, totam quod neque cum officiis odio, excepturi magnam incidunt voluptates sed voluptate id expedita sint! Cum veritatis iusto molestiae reiciendis deserunt vel odio incidunt, tenetur itaque. Ullam, iste!
              </p>
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
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call : +994 50 6650485
                </span>
              </a>
              <a href="">
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
        <a href="https://github.com/togrul-asgerli" target="_blank">Car Parking System</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
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
