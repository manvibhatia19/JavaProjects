<%-- 
    Document   : available
    Created on : Nov 28, 2018, 1:30:46 AM
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
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<link rel="stylesheet" href="main/css/linearicons.css">
			<link rel="stylesheet" href="main/css/font-awesome.min.css">
			<link rel="stylesheet" href="main/css/bootstrap.css">
			<link rel="stylesheet" href="main/css/magnific-popup.css">
			<link rel="stylesheet" href="main/css/nice-select.css">					
			<link rel="stylesheet" href="main/css/animate.min.css">
			<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">			
			<link rel="stylesheet" href="main/css/owl.carousel.css">
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
								Untaken Drives				
							</h1>	
							<p class="text-white link-nav"><a href="users.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="available.jsp"> Untaken Drives</a></p>
						</div>											
					</div>
				</div>
			</section>
			<!-- End banner Area -->
                        
                        <section class="feature-area section-gap">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-40 header-text">
							<h1>Available Drivers</h1>
							<p>
                                                            Giving riders—and drivers—the power to get where they want to go
							</p>
						</div>
					</div>
					<div class="row">
                                            <% String uname=(String)session.getAttribute("username");
                                            String pickup=(String)session.getAttribute("pickup");
                                            String dropoff=(String)session.getAttribute("dropoff");
                                            String seats=(String)session.getAttribute("seats");
                                            String rdate=(String)session.getAttribute("rdate");
                                            String rtime=(String)session.getAttribute("rtime");
                                        String url="jdbc:mysql://localhost:3306/easyway";
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn=DriverManager.getConnection(url,"root","");
                                            String query="select * from drives where pickup='"+pickup+"' OR halt1='"+pickup+"' OR halt2='"+pickup+"' AND dropoff='"+dropoff+"' AND seats>='"+seats+"'";
                                            Statement st=conn.createStatement();
                                            ResultSet rs1=st.executeQuery(query);
                                            if(rs1.next()== false)
                                            { %>
                                            <div class="col-lg-4 col-md-6">
							<div class="single-feature">
                                                            <h4><span class="lnr lnr-car"></span>Driver: No Driver Available !</h4>
							</div>
                                                </div>
                                            <% }
                                            ResultSet rs2=st.executeQuery(query);
                                            while(rs2.next())
                                            { %>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
                                                            <h4><span class="lnr lnr-car"></span>Driver: <%=rs2.getString("name")%></h4>
								<p>
                                                                    Phone: <%=rs2.getString("phone")%><br>
                                                                    PickUp: <%=rs2.getString("pickup")%><br>
                                                                    DrofOff: <%=rs2.getString("dropoff")%><br>
                                                                    Halt1: <%=rs2.getString("halt1")%><br>
                                                                    Halt2: <%=rs2.getString("halt2")%><br>
                                                                    No. of Seats: <%=rs2.getString("seats")%><br>
                                                                    Ride Date: <%=rs2.getString("ddate")%><br>
                                                                    Ride Time: <%=rs2.getString("dtime")%><br>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star-half-o"></span>
									<span class="fa fa-star-o"></span>
                                                                <a href="book.jsp"><b>Book Now</b></a>
                                                        </p>
							</div>
						</div>
                                            <% }
                                            st.close();
                                            %>
                                        </div>
				</div>	
			</section>
                        
                                        <div class="whole-wrap">
				<div class="container">
                        <div class="section-top-border">
						<h3 class="mb-30">Our Progress</h3>
						<div class="progress-table-wrap">
							<div class="progress-table">
								<div class="table-head">
									<div class="serial">#</div>
									<div class="country">Cities</div>
									<div class="visit">Visits</div>
									<div class="percentage">Percentages</div>
								</div>
								<div class="table-row">
									<div class="serial">01</div>
									<div class="country"> <img src="main/img/elements/f1.jpg" alt="flag">Chandigarh</div>
									<div class="visit">65475</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-1" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">02</div>
									<div class="country"> <img src="main/img/elements/f2.jpg" alt="flag">Delhi</div>
									<div class="visit">52485</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-2" role="progressbar" style="width: 75%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">03</div>
									<div class="country"> <img src="main/img/elements/f3.jpg" alt="flag">Mumbai</div>
									<div class="visit">35248</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-3" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">04</div>
									<div class="country"> <img src="main/img/elements/f4.jpg" alt="flag">Kolkata</div>
									<div class="visit">45235</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-4" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">05</div>
									<div class="country"> <img src="main/img/elements/f5.jpg" alt="flag">Banglore</div>
									<div class="visit">31475</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-5" role="progressbar" style="width: 45%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">06</div>
									<div class="country"> <img src="main/img/elements/f6.jpg" alt="flag">Chennai</div>
									<div class="visit">48912</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-6" role="progressbar" style="width: 65%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="table-row">
									<div class="serial">07</div>
									<div class="country"> <img src="main/img/elements/f7.jpg" alt="flag">Pune</div>
									<div class="visit">30174</div>
									<div class="percentage">
										<div class="progress">
											<div class="progress-bar color-7" role="progressbar" style="width: 40%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
                                </div>
                                        </div>
                        
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
