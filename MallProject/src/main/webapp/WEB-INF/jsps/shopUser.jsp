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
<link href="<c:url value="/resources/assets/css/style2.css" />"
	rel="stylesheet">

</head>

<style>
#intro {
	max-height: 40vh;
}
.pb-description {
	margin-top: 10px;
}
.list-view .pb-image{
	max-width:250px;
}
</style>
<body>

	<header id="header" class="header-transparent">
		<div class="container">

			<div id="logo" class="pull-left">
				<h1>
					<a href="/MallProject/" class="scrollto">ABC MAll</a>
				</h1>

			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="mybooking">My Bookings</a></li>
					<li><a href="shop-rate"><b>Shops Rate</b></a></li>
					<li><a href="booked">Available</a></li>
					<li><a href="booking">Booking</a></li>
					<li><a href="complaint">Complaint</a></li>
					<li><a href="profile">Profile</a></li>
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>
			
		</div>
	</header>
	
	<section id="intro">

		<div class="intro-text">
			<h1 class="shoptitle">Shop Rate</h1>
		</div>


	</section>
	
	<section id="features">

		<div class="container">

			<div id="productPage" class="list-view">
				<div id="switcher">

					<div class="pb-lower">
						<a href="booking" class="button">Book a Space</a>
					</div>

				</div>
				<ul id="productWrapper">
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Shop-Small.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Shop-Small</h3>
								<p>Weekdays: ${shopCost.get(0)}/day</p>
								<p>Weekends: ${shopCost.get(1)}/hour</p>
								<p>Public Holidays: ${shopCost.get(2)}/hour</p>
								<p>Total Shops: ${roomList.get(0)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Shop-Medium.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Shop-Medium</h3>
								<p>Weekdays: ${shopCost.get(3)}/day</p>
								<p>Weekends: ${shopCost.get(4)}/day</p>
								<p>Public Holidays: ${shopCost.get(5)}/hour</p>
								<p>Total Shops: ${roomList.get(1)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Shop-Large.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Shop-large</h3>
								<p>Weekdays: ${shopCost.get(6)}/day</p>
								<p>Weekends: ${shopCost.get(7)}/day</p>
								<p>Public Holidays: ${shopCost.get(8)}/day</p>
								<p>Total Shops: ${roomList.get(2)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Atrium-North and West.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Atrium-North and West</h3>
								<p>Weekdays: ${shopCost.get(9)}/hour</p>
								<p>Weekends: ${shopCost.get(10)}/hour</p>
								<p>Public Holidays: ${shopCost.get(11)}/hour</p>
								<p>Total Space: ${roomList.get(3)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Atrium-South.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Atrium-South</h3>
								<p>Weekdays: ${shopCost.get(12)}/hour</p>
								<p>Weekends: ${shopCost.get(13)}/hour</p>
								<p>Public Holidays: ${shopCost.get(14)}/hour</p>
								<p>Total Space: ${roomList.get(4)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Cinema Theater.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Cinema theater</h3>
								<p>All Days: ${shopCost.get(15)}/week</p>
								<p>Total Screen: ${roomList.get(5)}</p>
								</div>
							</div>
							
						</div>
					</li>
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booking"><img
									src="<c:url value="/resources/assets/images/shop/Marketing Banners.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<div class="description">
								<h3>Marketing Banners</h3>
								<p>Weekdays: ${shopCost.get(16)}/perSqFt/day</p>
								<p>Weekends: ${shopCost.get(17)}/perSqFt/day</p>
								<p>Public Holidays: ${shopCost.get(18)}/perSqFt/day</p>
								<p>Total set of Banners: ${roomList.get(6)}</p>
								</div>
							</div>
							
						</div>
					</li>
				</ul>
			</div>


		</div>

	</section>
	
	<footer id="footer">
		<div class="container">
			<div class="row-footer">
				<div class="col-lg-6 text-lg-left text-center">
					<div class="copyright">
						&copy; Copyright <strong>ABC Entertainment and Real Estate Pvt Ltd</strong>. All Rights Reserved
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