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

<link href="<c:url value="/resources/assets/css/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/assets/css/style2.css" />"
	rel="stylesheet">

</head>

<style>
#intro {
	max-height: 40vh;
}

h1 {
	color: #fff;
}

.table1 {
	border-collapse: collapse;
	background-color: white;
	overflow: hidden;
	width: 90%;
	border-radius: 10px;
	margin: auto;
}

.table2 {
	width: 100%;
	margin: auto;
}

th, td {
	font-family: 'Motnserrat', sans-serif;
	font-size: 16px;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #7691ab;
	color: white;
}

container.gallery-container {
	min-height: 20vh;
}

body {
	height: 100vh;
	text-align: center;
}

}
</style>
<body>

	<header id="header" class="header-transparent">
		<div class="container">

			<div id="logo" class="pull-left">
				<h1>
					<a href="/MallProject" class="scrollto">ABC MAll</a>
				</h1>

			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="dashboard">Dashboard</a></li>
					<li><a href="shops">Shop</a></li>
					<li><a href="booked&Shop-Small">Bookings</a></li>
					<li><a href="revenue">Revenue</a></li>
					<li><a href="complaint"><b>Complaint</b></a></li>
					<li><a href="logout-admin">Logout</a></li>
				</ul>
			</nav>
			
		</div>
	</header>
	
	<section id="intro">

		<div class="intro-text">

			<h1 class="shoptitle">Admin Dashboard</h1>
		</div>


	</section>
	
	<section id="features">
		
			<div class="section-header wow fadeIn" data-wow-duration="1s">
				<h3 class="section-title">Complaint Box</h3>
				<span class="section-divider"></span>
			</div>

			<div class="container">

				<table class="table1 table-bordered">
					<thead>
						<tr>
							<th>User ID</th>
							<th>Space no.</th>
							<th>Category</th>
							<th>Description</th>

						</tr>
					</thead>
					<tbody>
						<c:if test="${empty cu}">
							<tr>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
							</tr>
						</c:if>
						<c:forEach items="${cu}" var="u">
							<tr>
								<td>${u.id}</td>
								<td>${u.roomId}</td>
								<td>${u.category}</td>
								<td>${u.description}</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
				<br> <br>



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