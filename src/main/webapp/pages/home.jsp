<!--
Author: Ameer Hussain
Author URL: http://www.ameerhussain.in
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Ameer's Web</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/images/logo.gif"/>" />
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords"
	content="My Resume Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 















</script>
<!--mobile apps-->
<!--Custom Theme files-->
<link href="<c:url value="/resources/css/bootstrap.css"/>"
	type="text/css" rel="stylesheet" media="all">
<link href="<c:url value="/resources/css/style.css"/>" type="text/css"
	rel="stylesheet" media="all">
<link rel="stylesheet"
	href="<c:url value="/resources/css/swipebox.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/menu.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.css"/>">
<!--//Custom Theme files-->
<!--js-->
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<!-- Action Js, libraries -->
<script type="text/javascript"
	src="<c:url value="/resources/js/action.js"/>"></script>
<!-- //js -->
<!--web-fonts-->
<link
	href='//fonts.googleapis.com/css?family=Overlock:400,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--start-smooth-scrolling-->
<script type="text/javascript"
	src="<c:url value="/resources/js/move-top.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/easing.js"/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--//end-smooth-scrolling-->
<!-- <script
    src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script> -->
</head>
<body>
	<!--banner-->
	<div id="home" class="banner">
		<div class="banner-info">
			<div class="container">
				<div class="col-md-4 header-left">
					<img src="<c:url value="/resources/images/img1.jpg"/>" alt="" />
				</div>
				<div class="col-md-8 header-right">
					<h2>Hi</h2>
					<h1>I'm Ameer Hussain</h1>
					<h6>Java Application & Web Developer</h6>
					<ul class="address">
						<li>
							<ul class="address-text">
								<li><b>E-MAIL </b></li>
								<li><a href="mailto:mail@ameerhussain.in">
										mail@ameerhussain.in</a></li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>WEBSITE </b></li>
								<li><a href="http://www.ameerhussain.in">www.ameerhussain.in</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--top-nav-->
	<div class="top-nav wow">
		<div class="container">
			<div class="navbar-header logo">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					Menu</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<div class="menu">
					<ul class="nav navbar">
						<li><a href="#about" onclick="showProfileDiv()" class="scroll">About</a></li>
						<li><a href="#work" onclick="showProfileDiv()" class="scroll">Experience</a></li>
						<li><a href="#education" onclick="showProfileDiv()" class="scroll">Education</a></li>
						<li><a href="#skills" onclick="showProfileDiv()" class="scroll">Skills</a></li>
						<li><a href="#projects" onclick="showProfileDiv()" class="scroll">My Projects</a></li>
						<li><a href="#contact" onclick="showProfileDiv()" class="scroll">Contact</a></li>
						<li class="dropdown scroll"><a href="#" onclick="loadTutorialPage()">Tutorial <!-- <i
								class="icon-angle-down"></i> --></a>
							<!-- <ul style="display: none;" class="dropdown-menu bold">
								<li><a
									href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Core
										Java</a></li>
								<li><a
									href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Hibernate</a></li>
								<li><a
									href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Maven</a></li>
								<li class="dropdown"><a href="#">Spring <i
										class="icon-angle-right"></i></a>
									<ul style="display: none;"
										class="dropdown-menu sub-menu-level1 bold">
										<li><a
											href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Core</a></li>
										<li><a
											href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Jdbc</a></li>
										<li><a
											href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Hibernate</a></li>
										<li><a
											href="http://www.freshdesignweb.com/3-level-responsive-drop-down-navigation-menu-jquery-css3.html">Jpa</a></li>
									</ul></li>
							</ul> --></li>
							<li><a href="">Service</a></li>

					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//top-nav-->
	<div id="profileDiv">
	<!--about-->
	<div id="about" class="about">
		<div class="container">
			<h3 class="title">About Me</h3>
			<div class="col-md-8 about-left">
				<p>I am Ameer Hussain. I have done my Schooling from Nandikotkur, Kurnool(Dt.), Andhra Pradesh. I started my education from Kurnool it self. I done Engineering in Computer Science from
				Kurnool JNTUA. I learned the theoritical knowledge in this education level. I came to Hyderabad on Jan 2011. I started my practical knowledge by joining in Kstarta IT Solutions. I 
				done my internship there. In this duration I learned how to involve in projects, after that I completely learned Software development related languages like Java, J2ee by joining in 
				GDC Advertising Pvt. Ltd. by working as Technical Support for Govt. Aadhaar Project.</p>
			</div>
			<div class="col-md-4 about-right">
				<ul>
					<h5>Awards</h5>
					<li><span class="glyphicon glyphicon-menu-right"></span> Lorem
						ipsum dolor sit amet cingelit</li>
					<li><span class="glyphicon glyphicon-menu-right"></span>
						Curabitur id metus rutrum convallis</li>
					<li><span class="glyphicon glyphicon-menu-right"></span> Morbi
						dictum velit vitae porttitor</li>
					<li><span class="glyphicon glyphicon-menu-right"></span> Fusce
						at metus id justo ullamcorper</li>
					<li><span class="glyphicon glyphicon-menu-right"></span>
						Aliquam ac nisl id justo malesuada</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//about-->
	<!--work-experience-->
	<div id="work" class="work">
		<div class="container">
			<h3 class="title">Work Experience</h3>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>2014 - 2016</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-briefcase"> </span> Externetworks
						(India) Pvt. Ltd.
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-right work-right2">
					<h4>2013 - 2014</h4>
				</div>
				<div class="col-md-6 work-left work-left2">
					<h5>
						Yinsol Pvt. Ltd. <span class="glyphicon glyphicon-briefcase">
						</span>
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>2013 - 2014</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-briefcase"> </span> GDC
						Advertising Pvt. Ltd.
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-right work-right2">
					<h4>2011 - 2012</h4>
				</div>
				<div class="col-md-6 work-left work-left2">
					<h5>
						Kstrata IT Solutions Pvt. Ltd. <span
							class="glyphicon glyphicon-briefcase"></span>
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//work-experience-->
	<!--education-->
	<div id="education" class="education">
		<div class="container">
			<h3 class="title">Education</h3>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>Computer Science Engineering - 2010</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-education"> </span> JNTU
						Anantapur, A.P., India.
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-right work-right2">
					<h4>Intermediate - 2006</h4>
				</div>
				<div class="col-md-6 work-left work-left2">
					<h5>
						BIE, A.P., India. <span class="glyphicon glyphicon-education"></span>
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>SSC - 2004</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-education"> </span> BSE, A.P.,
						India.
					</h5>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto
						beatae vitae dicta sunt explicabo</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//education-->
	<!--skills-->
	<div id="skills" class="skills">
		<div class="container">
			<h3 class="title">Skills</h3>
			<div class="skills-info">
				<div class="col-md-6 bar-grids">
					<h6>
						JAVA <span> 80% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 80%"></div>
					</div>
					<h6>
						J2EE<span>80% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 80%"></div>
					</div>
					<h6>
						SPRING <span> 60% </span>

					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 60%"></div>
					</div>
					<h6>
						HIBERNATE <span> 70% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 70%"></div>
					</div>
					<h6>
						MAVEN<span>70% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 70%"></div>
					</div>
				</div>
				<div class="col-md-6 bar-grids">
					<h6>
						HTML/CSS <span> 50% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 50%"></div>
					</div>
					<h6>
						ANGULAR JS <span> 50% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 50%"></div>
					</div>
					<h6>
						RESTFUL<span> 70% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 70%"></div>
					</div>
					<h6>
						JPA <span> 70% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 70%"></div>
					</div>
					<h6>
						MYSQL<span> 60% </span>
					</h6>
					<div class="progress">
						<div class="progress-bar progress-bar-striped active"
							style="width: 60%"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//education-->
	<!--portfolio-->
	<div id="projects" class="portfolio">
		<div class="container">
			<h3 class="title wow zoomInLeft animated" data-wow-delay=".5s">My
				Projects</h3>
			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list wow fadeInUp animated"
						data-wow-delay=".7s">
						<li class="resp-tab-item"><span>Java</span></li>
					</ul>
					<div class="clearfix"></div>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content">
							<div class="tab_img">
								<div class="col-md-4 portfolio-grids">
									<div class="grid">
										<a href="<c:url value="/resources/images/g1.jpg"/>"
											class="swipebox"
											title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
											<img src="<c:url value="/resources/images/g1.jpg"/>" alt=""
											class="img-responsive" />
											<div class="figcaption">
												<h3>
													<span> FIELD ENGINEER</span>
												</h3>
												<p>Sarah likes to watch clouds. She's quite depressed.</p>
											</div>
										</a>
									</div>
								</div>
								<div class="col-md-4 portfolio-grids">
									<div class="grid effect-sarah">
										<a href="<c:url value="/resources/images/g2.jpg"/>"
											class="swipebox"
											title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
											<img src="<c:url value="/resources/images/g2.jpg"/>" alt=""
											class="img-responsive" />
											<div class="figcaption">
												<h3>
													<span> MY VIDEO CV</span>
												</h3>
												<p>Sarah likes to watch clouds. She's quite depressed.</p>
											</div>
										</a>
									</div>
								</div>
								<div class="col-md-4 portfolio-grids">
									<div class="grid">
										<a href="<c:url value="/resources/images/g3.jpg"/>"
											class="swipebox"
											title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus tortor diam, ac lobortis justo rutrum quis. Praesent non purus fermentum, eleifend velit non">
											<img src="<c:url value="/resources/images/g3.jpg"/>" alt=""
											class="img-responsive" />
											<div class="figcaption">
												<h3>
													<span> TALHIRE</span>
												</h3>
												<p>Sarah likes to watch clouds. She's quite depressed.</p>
											</div>
										</a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--ResponsiveTabs-->
			<script src="<c:url value="/resources/js/easyResponsiveTabs.js"/>"
				type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#horizontalTab').easyResponsiveTabs({
						type : 'default', //Types: default, vertical, accordion           
						width : 'auto', //auto or any width like 600px
						fit : true
					// 100% fit in a container
					});
				});
			</script>
			<!--//ResponsiveTabs-->
			<!-- swipe box js -->
			<script src="<c:url value="/resources/js/jquery.swipebox.min.js"/>"></script>
			<script type="text/javascript">
				jQuery(function($) {
					$(".swipebox").swipebox();
				});
			</script>
			<!-- //swipe box js -->
		</div>
	</div>
	<!--//portfolio-->
	</div>
	<div id="tutorialDiv"></div>
	<!--contact -->
	<div class="welcome contact" id="contact">
		<div class="container">
			<h3 class="title">Contact Us</h3>
			<div class="contact-row">
				<div class="col-md-6 contact-left">
				<!-- <div id="map-canvas" style="height:450px; width:600px"></div> -->
					<iframe width="600" height="450" frameborder="0" style="border: 0"
						src="https://www.google.com/maps/embed/v1/search?q=Ameer%20Hussain%2C%20Road%20Number%203%2C%20Nizampet%2C%20Hyderabad%2C%20Telangana%2C%20India&key=AIzaSyDN6D3F713UwUG6MlKc9FMeUjaPEow5afY"
						allowfullscreen></iframe>
				</div>
				<div class="col-md-6 contact-right">
					<div class="address-left">
						<p>
							Website : <a href="http://www.ameerhussain.in">www.ameerhussain.in</a>
						</p>
					</div>

					<div class="address-right">
						<p>
							E-mail : <a href="mailto:mail@ameerhussain.in">mail@ameerhussain.in</a>
						</p>
					</div>
					<div class="clearfix"></div>
					<div class="contact-form">
						<form:form id="submitForm" commandName="mailBean" method="post"
							action="submitForm">
							<div class="input-name">
								<form:input id="name" path="name" placeholder="Name" />
								<form:errors path="name" cssStyle="color: red; " />
							</div>
							<div class="input-email">
								<form:input id="email" class="email" path="email"
									placeholder="Email" />
								<form:errors path="email" cssStyle="color: red;" />
							</div>
							<div class="input-phone">
								<form:input id="phone" class="phone" path="phone"
									placeholder="Phone" />
								<form:errors path="phone" cssStyle="color: red" />
							</div>
							<form:textarea id="message" path="message" placeholder="Message" />
							<form:errors path="message" />
							<input id="submitId" type="submit" value="SUBMIT">
						</form:form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- <div id="dialog" title="Dialog">
		<div id="test"></div>
	</div> -->
	<div id="popupDiv"></div>
	<!--//contact -->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>
				© 2016 Ameer Hussain. All rights reserved | Design by <a
					href="http://www.ameerhussain.in">www.ameerhussain.in</a>
			</p>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
</body>
</html>