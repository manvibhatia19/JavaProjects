<%-- 
    Document   : book
    Created on : Nov 28, 2018, 2:34:34 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="author" content="codepixer">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta charset="UTF-8">
                <link rel="icon" type="image/png" href="main/img/icons/favicon.png"/>
                
		<title>EasyWay - Drive to earn money or ride easy now</title>
                
                <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			
			<link rel="stylesheet" href="main/css/linearicons.css">
			<link rel="stylesheet" href="main/css/owl.carousel.css">
			<link rel="stylesheet" href="main/css/font-awesome.min.css">
			<link rel="stylesheet" href="main/css/nice-select.css">			
			<link rel="stylesheet" href="main/css/magnific-popup.css">
			<link rel="stylesheet" href="main/css/bootstrap.css">
			<link rel="stylesheet" href="main/css/main.css">
                        </head>
		<body>

			  <header id="header" id="home">
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="users.jsp"><img src="main/img/logo_1.png" alt="" title="" height="60" width="120"/></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li class="menu-active"><a href="users.jsp">Home</a></li>
				          <li><a href="#about">About</a></li>
                                          <li><a href="#service">Services</a></li>
                                          <li><a href="#rides">Rides</a></li>
                                          <li><a href="#history">Rides History</a></li>	
				          <li><a href="#contact">Contact</a></li>
				          <li class="menu-has-children"><a style="color:white">My Profile</a>
				            <ul>
				              <li><a href="check.jsp">Change Password</a></li>
				              <li><a href="logout.jsp">Logout</a></li>
				            </ul>
				          </li>			          
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header><!-- #header -->
                          
                          <!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Confirmed Rides			
							</h1>	
							<p class="text-white link-nav"><a href="available.jsp">Untaken Rides </a>  <span class="lnr lnr-arrow-right"></span>  <a href="book.jsp"> Confirmed Rides</a></p>
						</div>											
					</div>
                        </section>
                          <section class="feature-area section-gap">
                                    <div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-40 header-text">
                                                        <h1><span class="lnr lnr-lock"></span>Your Ride is Confirmed !</h1>
						</div>
					</div>
				</div>
			</section>
			<!-- End banner Area -->
                        
                        <!-- start footer Area -->		
			<footer class="footer-area section-gap" id="details">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Features</h6>
								<ul>
									<li style="color: white">Easy Ride</li>
									<li style="color: white">Experienced Drivers</li>
									<li style="color: white">Comfortable Journey</li>
									<li style="color: white">Budget-friendly</li>
								</ul>								
							</div>
						</div>
						<div class="col-lg-2 col-md-6 col-sm-6">
							<div class="single-footer-widget">
                                                                <h6>Offerings</h6>
								<ul>
									<li style="color: white">Everyday Ride</li>
									<li style="color: white">Earning Drive</li>
									<li style="color: white">Rides Delivery</li>
									<li style="color: white">Multi-destination Ride</li>
								</ul>
							</div>
						</div>												
						<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
									<a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a>
									<a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a>
									<a href="https://plus.google.com/people"><i class="fa fa-google-plus"></i></a>
								</div>
							</div>
						</div>							
						<div class="col-lg-4  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>Stay update with our latest</p>
								<div class="" id="mc_embed_signup">
									<form target="_blank" novalidate="true" class="form-inline">
										<input class="form-control" name="email" placeholder="Enter Email" type="text" required>
			                            	<button class="click-btn btn btn-default"><span class="lnr lnr-arrow-right"></span></button>
									</form>
								</div>
							</div>
						</div>	
						<p class="mt-50 mx-auto footer-text col-lg-12">
                                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                                    All rights reserved | This Web Application is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#home">EasyWay</a> - Drive to earn money or ride easy now</p>											
					</div>
				</div>
			</footer>	
			<!-- End footer Area -->
                          
                        <script src="main/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="main/js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>			
  			<script src="main/js/easing.min.js"></script>			
			<script src="main/js/hoverIntent.js"></script>
			<script src="main/js/superfish.min.js"></script>	
			<script src="main/js/jquery.ajaxchimp.min.js"></script>
			<script src="main/js/jquery.magnific-popup.min.js"></script>	
			<script src="main/js/owl.carousel.min.js"></script>			
			<script src="main/js/jquery.sticky.js"></script>
			<script src="main/js/jquery.nice-select.min.js"></script>	
			<script src="main/js/waypoints.min.js"></script>
			<script src="main/js/jquery.counterup.min.js"></script>					
			<script src="main/js/parallax.min.js"></script>		
			<script src="main/js/mail-script.js"></script>	
			<script src="main/js/main.js"></script>	
    </body>
</html>

