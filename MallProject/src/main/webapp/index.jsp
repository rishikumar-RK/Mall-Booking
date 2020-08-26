<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ABC Mall</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<link href="<c:url value="/resources/assets/images/favicon.png" />"
	rel="icon">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i"
	rel="stylesheet">

<link
	href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/ionicons/css/ionicons.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/animate.css/animate.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/venobox/venobox.css" />"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
<link href="<c:url value="/resources/assets/css/style.css" />"
	rel="stylesheet">

</head>

<style>
</style>

<body>

	<header id="header" class="header-transparent">
		<div class="container">

			<div id="logo" class="pull-left">
				<h1>
					<a href="" class="scrollto">ABC MAll</a>
				</h1>
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="">Home</a></li>
					<li><a href="#features">Features</a></li>
					<li><a href="#pricing">Pricing</a></li>

					<li><a href="#contact">Contact Us</a></li>
					<li><a href="login">Login</a></li>
				</ul>
			</nav>

		</div>
	</header>

	<section id="intro">

		<div class="intro-text">
			<h2>Find the best shop space at here!!</h2>
			<p>Every shopping mall is a shopper's paradise!!</p>
			<a href="login" class="btn-get-started scrollto">Get Started</a>
		</div>


	</section>

	<main id="main">

		<section id="about" class="section-bg">
			<div class="container-fluid">
				<div class="section-header">
					<h3 class="section-title">About Us</h3>
					<span class="section-divider"></span> <br>
				</div>

				<div class="row">
					<div class="col-lg-6 about-img wow fadeInLeft">
						<img src="<c:url value="/resources/assets/img/about-img.jpg"/>"
							alt="">
					</div>

					<div class="col-lg-6 content wow fadeInRight">
						<h2>Commerical shops for sale!!</h2>

						<p>Established in 2020 , ABC Mall has grown from a small idea
							start-up to one of the largest e-commerce companies. ABC
							developed and owned by ABC Entertainment and Real Estate Pvt Ltd.
							ABC invests in digital technology that helps take the thousands
							of people to provide thoughtful life. ABC allows web and mobile
							visitors to explore hundreds of service providers and contact
							them directly and efficiently in a simple and convenient way to
							get the best prices and offers.</p>

					</div>
				</div>

			</div>
		</section>

		<section id="features">
			<div class="container">
				<div class="section-header wow fadeIn" data-wow-duration="1s">
					<h3 class="section-title">Product Features</h3>
					<span class="section-divider"></span>
				</div>
				<div class="col-lg-8 col-md-7 ">
					<div class="row">
						<div class="col-lg-6 col-md-6 box wow fadeInRight">
							<div class="container gallery-container">
								<div class="tz-gallery">
									<div class="row">
										<div class="col-sm-6 col-md-4">

											<a class="lightbox"> <img
												src="<c:url value="/resources/images/gallery/com.jpg"/>"
												alt="Bridge">
												<div class="caption-inner">
													<h4>Commercial</h4></a>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<a class="lightbox"> <img
											src="<c:url value="/resources/images/gallery/super2.jpg"/>"
											alt="Park">
											<div class="caption-inner">
												<h4>Super Market</h4></a>
									</div>

								</div>
								<div class="col-sm-6 col-md-4">
									<a class="lightbox"> <img
										src="<c:url value="/resources/images/gallery/food.jpg"/>"
										alt="Tunnel">
										<div class="caption-inner">
											<h4>Food Court</h4></a>
								</div>
							</div>
							<div class="col-sm-12 col-md-4">
								<a class="lightbox"> <img
									src="<c:url value="/resources/images/gallery/game.jpg"/>"
									alt="Traffic">
									<div class="caption-inner">
										<h4>Game Zone</h4></a>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<a class="lightbox"> <img
								src="<c:url value="/resources/images/gallery/attrium.jpg"/>"
								alt="Coast">
								<div class="caption-inner">
									<h4>Attrium</h4></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<a class="lightbox"> <img
							src="<c:url value="/resources/images/gallery/marketing.jpg"/>"
							alt="Rails">
							<div class="caption-inner">
								<h4>Marketing</h4></a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<a class="lightbox"> <img
						src="<c:url value="/resources/images/gallery/parking.jpg"/>"
						alt="Rails">
						<div class="caption-inner">
							<h4>Parking</h4></a>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<a class="lightbox"> <img
					src="<c:url value="/resources/images/gallery/theater.jpg"/>"
					alt="Rails">
					<div class="caption-inner">
						<h4>Theater</h4></a>
			</div>

			</div>
			<div class="col-sm-6 col-md-4">
				<a class="lightbox"> <img
					src="<c:url value="/resources/images/gallery/banner.jpg"/>"
					alt="Rails">
					<div class="caption-inner">
						<h4>Banner</h4></a>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>

		</section>
		
		<section id="call-to-action">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 text-center text-lg-left">
						<h3 class="cta-title">Call To Action</h3>
						<p class="cta-text">Enquire for any type of shops</p>
					</div>
					<div class="col-lg-3 cta-btn-container text-center">
						<a class="cta-btn align-middle" href="#contact">Call To Action</a>
					</div>
				</div>

			</div>
		</section>
		
		<section id="pricing" class="section-bg">
			<div class="container">

				<div class="section-header">
					<h3 class="section-title">Pricing</h3>
					<span class="section-divider"></span>

				</div>

				<div class="row">

					<div class="col-lg-4 col-md-6">
						<div class="box wow fadeInLeft">
							<h3>Shops</h3>
							<h4>
								<sup>RS</sup>1000<span> day</span>
							</h4>
							<ul>
								<li><i class="ion-android-checkmark-circle"></i>With all
									amenties</li>
								<li><i class="ion-android-checkmark-circle"></i> Starting
									from Rs.750</li>

							</ul>
							<a href="login" class="get-started-btn">Get Started</a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="box featured wow fadeInUp">
							<h3>Atrium</h3>
							<h4>
								<sup>RS</sup>3000<span> hour</span>
							</h4>
							<ul>
								<li><i class="ion-android-checkmark-circle"></i>With all
									amenties</li>
								<li><i class="ion-android-checkmark-circle"></i> Starting
									from Rs.750</li>
							</ul>
							<a href="login" class="get-started-btn">Get Started</a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="box wow fadeInRight">
							<h3>Theater</h3>
							<h4>
								<sup>RS</sup>100000<span> week</span>
							</h4>
							<ul>
								<li><i class="ion-android-checkmark-circle"></i>With all
									amenties</li>
								<li><i class="ion-android-checkmark-circle"></i> Starting
									from Rs.100000</li>
							</ul>
							<a href="login" class="get-started-btn">Get Started</a>
						</div>
					</div>

				</div>
			</div>
		</section>
		
		<section id="contact">
			<div class="container">
				<div class="row wow fadeInUp">

					<div class="col-lg-6">
						<div class="contact-about">
							<h3>ABC Mall</h3>
							<p>Every shopping mall is a shopper's paradise!!</p>
							<div class="social-links">
								<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
									href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
									href="#" class="instagram"><i class="fa fa-instagram"></i></a>
								<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
								<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="info">
							<div>
								<i class="ion-ios-location-outline"></i>
								<p>
									Coimbatore<br>Tamil Nadu, 641 001
								</p>
							</div>

							<div>
								<i class="ion-ios-email-outline"></i>
								<p>info@abc.com</p>
							</div>

							<div>
								<i class="ion-ios-telephone-outline"></i>
								<p>12345 67890</p>
							</div>

						</div>
					</div>


				</div>

			</div>
		</section>

	</main>
	
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 text-lg-left text-center">
					<div class="copyright">
						&copy; Copyright <strong>ABC Entertainment and Real
							Estate Pvt Ltd</strong>. All Rights Reserved
					</div>

				</div>

			</div>
		</div>
	</footer>
	
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<script
		src="<c:url value="/resources/assets/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/jquery.easing/jquery.easing.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/php-email-form/validate.js" />"></script>
	<script src="<c:url value="/resources/assets/vendor/wow/wow.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/venobox/venobox.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/superfish/superfish.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/hoverIntent/hoverIntent.js" />"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
	<script>
		baguetteBox.run('.tz-gallery');
	</script>

	<script src="<c:url value="/resources/assets/js/main.js" />"></script>

</body>

</html>