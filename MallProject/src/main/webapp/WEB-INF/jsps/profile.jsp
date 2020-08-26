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
<link href="<c:url value="/resources/assets/css/bootstrap4.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/assets/css/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/assets/css/style2.css" />"
	rel="stylesheet">

</head>

<style>
#intro {
	max-height: 40vh;
}
h1{
	font-size: 36px;
}
.pb-description {
	margin-top: 10px;
}
.list-view .pb-image{
	max-width:300px;
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
					<li><a href=""><b>My Bookings</b></a></li>
					<li><a href="user=${l.id}/shop-rate">Shops Rate</a></li>
					<li><a href="user=${l.id}/booked">Available</a></li>
					<li><a href="user=${l.id}/booking">Booking</a></li>
					<li><a href="user=${l.id}/complaint">Complaint</a></li>
					<li><a href="user=${l.id}/profile">Profile</a></li>
					<li><a href="user=${l.id}/logout">Logout</a></li>
				</ul>
			</nav>
			
		</div>
	</header>
	
	<section id="intro">

		<div class="intro-text">
			<h1 class="shoptitle">Welcome ${l.name}</h1>
		</div>
		
	</section>

	<section id="features">

		<div class="section-header wow fadeIn" data-wow-duration="1s">
			<h3 class="section-title">My Bookings</h3>
			<span class="section-divider"></span>
		</div>
		<div class="container">

			<div id="productPage" class="list-view">
				<div id="switcher">
					
					<div class="pb-lower">
						<a href="user=${l.id}/booking" class="button">Book Space</a>
					</div>

				</div>
				<ul id="productWrapper">
					<c:if test="${empty us}">
						<h1>
							<i>No space is booked</i>
						</h1>

					</c:if>
					<c:forEach items="${us}" var="u">

						<li class="product-block">
							<div class="pb-upper">
								<div class="pb-image">
									<a href="#"><img
										src="<c:url value="/resources/assets/images/shop/${u.spaceName}.jpg"/>"
										border="0" alt="Some great product" class="pb-img"></a>
								</div>
								<div class="pb-description">
									<div class="description">
										<h3>${u.spaceName}</h3>
										<p>Booking ID: ${u.bookId}</p>
										<p>Space no: ${u.roomId}</p>
										<p>From Date: ${u.fromDate}</p>
										<p>To Date: ${u.toDate}</p>
										<c:if test="${u.spaceName=='Marketing Banners'}">
										<p>Banner size: ${u.sqFt} sqFt</p>
										</c:if>
										<p>Cost: ${u.cost}</p>
									</div>
								</div>
								<div class="pb-lower">
									<a href="user=${l.id}/cancel&${u.bookId}" class="button">Cancel Booking</a>
								</div>
							</div>							
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
	</section>
	
	<footer id="footer">
		<div class="container">
			<div class="row-footer">
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

	<script src="<c:url value="/resources/assets/js/main.js" />"></script>

</body>

</html>