<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<link href="<c:url value="/resources/assets/css/style2.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/assets/css/style.css" />"
	rel="stylesheet">

</head>

<style>
#intro {
	max-height: 40vh;
}

h1 {
	color: #fff;
}

h2, img {
	margin-top: 10px;
	margin-left: 20px;
	width: 90%;
}

.para {
	font-size: 20px;
	font-family: sans-serif;
	margin-left: 20px;
}

.p2 {
	margin-left: 20px;
	background: green;
	color: white;
	width: 90%;
	border-radius: 30px;
	font-size: 30px;
	text-align: center;
}

table {
	margin: auto;
	width: 90%;
}

td {
	padding: 5px;
}

button {
	margin-left: 20px;
	margin-bottom: 10px;
}

.btn {
	margin-left: 20px;
	margin-bottom: 10px;
}

.details-container {
	border: 2px solid red;
	border-radius: 30px;
	background: white;
	height: 75%;
	width: 40%;
	margin: auto;
}

.tb5 {
	border: 2px solid #456879;
	border-radius: 10px;
	height: 27px;
	width: 150px;
}
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
					<li><a href="shop-rate">Shops Rate</a></li>
					<li><a href="booked">Available</a></li>
					<li><a href="booking">Booking</a></li>
					<li><a href="complaint">Complaint</a></li>
					<li><a href="profile"><b>Profile</b></a></li>
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>

		</div>
	</header>

	<section id="intro">

		<div class="intro-text">

			<h1 class="shoptitle">My Profile</h1>
		</div>


	</section>

	<section id="features">


		<div class="container">
			<div class="details-container">

				<img
					src="<c:url value="/resources/assets/images/ProfileAvatar.png"/>">

				<div class="para">
					<form action="saveProfile">
						<table>
							<tr>
								<td>ID</td>
								<td>${l.id}</td>
							</tr>
							<tr>
								<td>Email</td>
								<td>${l.email}</td>
							</tr>
							<tr>
								<td>Name</td>
								<td><input type="text" value="${l.name}" name="name" required></td>
							</tr>
							<tr>
								<td>Phone no.</td>
								<td><input type="text" value="${l.number}" name="number" maxlength="10" required></td>
							</tr>
						</table>

						<br> <input type="submit" class="btn btn-info" value="Save" />
						<a href="profile" class="btn btn-info">Cancel</a>
					</form>
				</div>
			</div>
		</div>
		<br> <br>

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