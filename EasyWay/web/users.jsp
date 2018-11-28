<%-- 
    Document   : users
    Created on : Nov 22, 2018, 12:08:03 AM
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
                                          <li><a href="available.jsp">Availability</a></li>
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
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-7 col-md-6 ">
							<h6 class="text-white ">the Royal Essence of Journey</h6>
							<h1 class="text-white text-uppercase">
                                                            with EasyWay<br>
                                                            <% String username=(String)session.getAttribute("username");
                                                            session.setAttribute("username", username);
                                                                out.println("Welcome "+username+" !"); 
                                                            session.setMaxInactiveInterval(10*60); %>
							</h1>
							<h6 class="pt-20 pb-20 text-white">
                                                            Drive to earn money or ride easy now<br>
							</h6>
							<a href="logout.jsp" class="primary-btn text-uppercase">Logout</a>
						</div>
						<div class="col-lg-5  col-md-6 header-right">
							<h4 class="text-white pb-30">Book Your Seat Today!</h4>
							<form class="form" role="form" action="seats.jsp" method="post">
												    
							    <div class="from-group row">
							    	<input class="form-control txt-field" type="text" name="name" placeholder="Your name">
							    	<input class="form-control txt-field" type="text" name="phone" placeholder="Phone number">
                                                                <input class="form-control txt-field" type="text" name="pickup" placeholder="PickUp Spot">
                                                                <input class="form-control txt-field" type="text" name="dropoff" placeholder="DropOff Spot">
                                                                <input class="form-control txt-field" type="text" name="seats" placeholder="No. of Seats">
							    </div>
                                                            <div class="form-group row">
                                                                <div class="col-md-6 wrap-left">
										<div class="input-group dates-wrap">                                          
											<input id="datepicker" class="dates form-control" id="exampleAmount" placeholder="Date of Ride" type="date" name="rdate">                        
											<div class="input-group-prepend">
												<span  class="input-group-text"><span class="lnr lnr-calendar-full"></span></span>
											</div>											
										</div>
							        </div>
                                                                <div class="col-md-6 wrap-right">
										<div class="input-group times-wrap">                                          
											<input id="timepicker" class="times form-control" id="exampleAmount" placeholder="Time of Ride" type="time" name="rtime">                        
											<div class="input-group-prepend">
												<span  class="input-group-text"><span class="lnr lnr-clock"></span></span>
											</div>											
										</div>
							        </div>
                                                            </div>
							    <div class="form-group row">
							        <div class="col-md-12">
							            <button type="submit" class="btn btn-default btn-lg btn-block text-center text-uppercase">Find Ride</button>
							        </div>
							    </div>
							</form>
						</div>											
					</div>
				</div>					
			</section>
			<!-- End banner Area -->
                        
                        <!-- Start home-about Area -->
			<section class="home-about-area" id="about">
				<div class="container-fluid">				
					<div class="row justify-content-center align-items-center">
						<div class="col-lg-6 no-padding home-about-left">
							<img class="img-fluid" src="main/img/about-img.jpg" alt="">
						</div>
						<div class="col-lg-6 no-padding home-about-right">
                                                    <h1>EasyWay - Ride Easy With Us</h1>							<p>
								<span>Drive to earn money or ride easy now</span>
							</p>
							<p>
                                                            <b>We ignite opportunity by setting the world in motion.</b><br><br>
                                                            Good things happen when people can move, whether across town or towards 
                                                            their dreams. Opportunities appear, open up, become reality. What started 
                                                            as a way to tap a button to get a ride has led to billions of moments of 
                                                            human connection as people around the world go all kinds of places in all 
                                                            kinds of ways with the help of our technology.
							</p>
							<a class="text-uppercase primary-btn" href="#details">Get Details</a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->

			<!-- Start feature Area -->
			<section class="feature-area section-gap" id="service">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-40 header-text">
							<h1>Our Offering to our Clients</h1>
							<p>
                                                            Giving riders—and drivers—the power to get where they want to go
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-car"></span>Rides On Demand</h4>
								<p>
                                                                    From clear navigation options to cashless payments, the application is designed to help people get to their destinations.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-cart"></span>Budget-friendly Options</h4>
								<p>
                                                                    Compare prices on every kind of ride, from daily commutes to special evenings out.
								</p>								
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-star-empty"></span>Experienced Drivers</h4>
								<p>
                                                                    Peace of mind is designed into your experience. Technology makes travel safer than ever before.
								</p>								
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-move"></span>Delivering Rides</h4>
								<p>
                                                                    Book for your desired location. The drivers will pick you from your pick-up spot, and a EasyWay delivery partner will drop you to your door.
								</p>				
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-earth"></span>The Road to Self-driving Vehicles</h4>
								<p>
                                                                    This innovative team is dedicated to building safe, reliable, and cost-effective self-driving technologies.
								</p>								
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-heart"></span>Reliable, Comfortable Rides</h4>
								<p>
                                                                     EasyWay professionals can schedule rides for clients going to and from the care they need, all from a single dashboard.
								</p>									
							</div>
						</div>						
					</div>
				</div>	
			</section>
			<!-- End feature Area -->		

			<!-- Start model Area -->
			<section class="model-area section-gap" id="rides">
				<div class="container">
					<div class="row d-flex justify-content-center pb-40">
						<div class="col-md-8 pb-40 header-text">
							<h1 class="text-center pb-10">Choose your Desired Ride</h1>
							<p class="text-center">
								Drive to earn money or ride easy now
							</p>
						</div>
					</div>				
					<div class="active-model-carusel">
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">Premium</h4>
									<h2>INR 32.50<span>/KM</span></h2>
								</div>
								<p>
                                                                    Affordable everyday rides
								</p>
								<p>
									Capacity         : 04 Person <br>
									Doors            : 04 <br>
									Air Condition    : Dual Zone <br>
									Transmission     : Automatic
								</p>
								<a class="text-uppercase primary-btn" href="#home">Get This Ride Now</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="main/img/car_1.jpg" alt="">
							</div>
						</div>
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">Luxury</h4>
									<h2>INR 52.50<span>/KM</span></h2>
								</div>
								<p>
                                                                    Affordable outstation rides
                                                                </p>
								<p>
									Capacity         : 06 Person <br>
									Doors            : 04 <br>
									Air Condition    : Dual Zone <br>
									Transmission     : Automatic
								</p>
								<a class="text-uppercase primary-btn" href="#home">Get This Ride Now</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="main/img/car_2.jpg" alt="">
							</div>
						</div>
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">Deluxe</h4>
									<h2>INR 96.50<span>/KM</span></h2>
								</div>
								<p>
                                                                    Many destinations, one Ride.
                                                                </p>
								<p>
									Capacity         : 07-10 Person <br>
									Doors            : 04-05 <br>
									Air Condition    : Dual Zone <br>
									Transmission     : Automatic
								</p>
								<a class="text-uppercase primary-btn" href="#home">Get This Ride Now</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="main/img/car_3.png" alt="">
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End model Area -->							

			<!-- Start reviews Area -->
			<section class="reviews-area section-gap" id="history">
				<div class="container">
                                    <div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-40 header-text text-center">
							<h1>Successful Rides History</h1>
							<p class="mb-10 text-center">
								Who are in extremely love with motion friendly system.
							</p>
						</div>
					</div> 
                                    <div class="row">
                                    <% String uname=(String)session.getAttribute("username");
                                        String url="jdbc:mysql://localhost:3306/easyway";
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn=DriverManager.getConnection(url,"root","");
                                            String query="select * from seats where username='"+uname+"'";
                                            Statement st=conn.createStatement();
                                            ResultSet rs1=st.executeQuery(query);
                                            if(rs1.next()==false)
                                            { %>
                                                <div class="col-lg-4 col-md-6">
                                                        <div class="single-review">
                                                            <h4>Ride Details: No Rides Yet !</h4>
                                                        </div>
                                                </div>
                                            <% }
                                            ResultSet rs2=st.executeQuery(query);
                                            while(rs2.next())
                                            { %>		
                                            <div class="col-lg-4 col-md-6">
                                                        <div class="single-review">
                                                            <h4>Ride Details:</h4>
								<p>
                                                                    PickUp: <%=rs2.getString("pickup")%><br>
                                                                    DrofOff: <%=rs2.getString("dropoff")%><br>
                                                                    No. of Seats required: <%=rs2.getString("seats")%><br>
                                                                    Ride Date: <%=rs2.getString("rdate")%><br>
                                                                    Ride Time: <%=rs2.getString("rtime")%>
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>																		
                                    <% }
                                            st.close();
                                    %>
                                    </div>
                                   </div>
				</div>	
			</section>

			<!-- End reviews Area -->
			
			<!-- Start fact Area -->
			<section class="facts-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col single-fact">
							<h1 class="counter">2536</h1>
							<p>Everyday Rides Completed</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">6784</h1>
							<p>Really Happy Clients</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">1059</h1>
							<p>Total Trips Completed</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">2239</h1>
							<p>Cups of Coffee Taken</p>
						</div>	
						<div class="col single-fact">
							<h1 class="counter">435</h1>
							<p>Multi-destination Rides</p>
						</div>												
					</div>
				</div>	
			</section>
			<!-- end fact Area -->							

			<!-- Start callaction Area -->
			<section class="callaction-area relative section-gap" id="contact">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
                                <div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="col-lg-10">
							<h1 class="text-white">Share Great Experience Support</h1>
							<p>
                                                            Support is just a few taps away. You can also get your questions answered by using our contact section.
							</p>
						</div>
                                    
                                        <div class="map-wrap" style="width:100%; height: 445px;" id="map"></div>
						<div class="col-lg-4 d-flex flex-column address-wrap">
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-home"></span>
								</div>
								<div class="contact-details">
                                                                    <h5 style="color: white">Himachal Pradesh, India</h5>
									<p>Chitkara School of Engineering, Baddi</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-phone-handset"></span>
								</div>
								<div class="contact-details">
									<h5 style="color: white">(+91) 999 7362 228</h5>
									<p>Mon to Fri 9am to 10 pm</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-envelope"></span>
								</div>
								<div class="contact-details">
									<h5 style="color: white">manvimano@gmail.com</h5>
									<p>Send us your query anytime!</p>
								</div>
							</div>														
						</div>
                                        <div class="col-lg-8">
                        <form class="form" role="form" action="mailto:mbhatia.cse16@chitkarauniversity.edu.in" method="post">	    
							    <div class="from-group">
							    	<input class="form-control txt-field" type="text" name="name" placeholder="Your name">
							    	<input class="form-control txt-field" type="text" name="email" placeholder="Email address">
							    	<input class="form-control txt-field" type="text" name="phone" placeholder="Phone number">
                                                                <textarea class="form-control txt-field" rows="5" cols="25" type="text" name="message" placeholder="Your Message Here..."></textarea>
							    </div>
							    <div class="form-group row">
							        <div class="col-md-12">
							            <button type="reset" class="btn btn-default btn-lg btn-block text-center text-uppercase">Send Message</button>
							        </div>
							    </div>
							</form>
                                        </div>
                                    </div>
                                </div>
                                </div>
			</section>
			<!-- End callaction Area -->

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
