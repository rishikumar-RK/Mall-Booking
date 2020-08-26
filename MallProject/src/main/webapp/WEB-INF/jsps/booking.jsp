<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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
.pb-description{
	margin-top: 10px;
}
table {
	text-align: center;
	width: 60%;
	margin: auto;
}

td {
	padding: 5px 15px;
}

h1 {
	color: #fff;
}

#date1, #date2 {
	width: 100%;
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
					<li><a href="booking"><b>Booking</b></a></li>
					<li><a href="complaint">Complaint</a></li>
					<li><a href="profile">Profile</a></li>
					<li><a href="logout">Logout</a></li>
				</ul>
			</nav>
			
		</div>
	</header>

	<section id="intro">
		<div class="intro-text">
			<h1 class="shoptitle">Booking</h1>
		</div>

	</section>

	<section id="features">
		<div class="container">
			<div id="productPage" class="list-view">
			
				<div id="switcher">
					<table>
						<tr>
							<td colspan="3"><h2 id="error" style="color: red"></h2></td>
						</tr>
						<tr>
							<td><h3>Start Date</h3></td>
							<td><h3>End Date</h3></td>
						</tr>
						<tr>
							<td><input type="date" class=" form-control" id="date1"
								 value="${from}" ></td>
							<td><input type="date" class=" form-control" id="date2"
								 value="${to}" ></td>
							<td><button type="button" class="btn btn-info"
									onclick="on()">Refresh</button></td>
						</tr>
					</table>
				</div>
				<ul id="productWrapper">
					<c:if test="${empty asl}">
						<h1>
							<i>No space is available</i>
						</h1>
					</c:if>
					<c:forEach items="${asl}" var="u">
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
										
										
										<c:choose>
											<c:when test="${u.spaceId=='6'}">
        										<p>${u.duration.get(0)}: ${u.cost.get(0)}/${u.rentType.get(0)}</p>
											</c:when>
											<c:otherwise>
        										<p>${u.duration.get(0)}: ${u.cost.get(0)}/${u.rentType.get(0)}</p>
												<p>${u.duration.get(1)}: ${u.cost.get(1)}/${u.rentType.get(1)}</p>
												<p>${u.duration.get(2)}: ${u.cost.get(2)}/${u.rentType.get(2)}</p>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="pb-lower">
									<c:forEach items="${u.roomId}" var="o">
										<a href="calculate&${from}&${to}&${o}" class="button">${o}</a>
									</c:forEach>


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

	<script>
		function on() {
			var tdy=new Date();
			var fromD = document.getElementById("date1").value;
			var fromDate=new Date(fromD);
			var toD = document.getElementById("date2").value;
			if ( fromD > toD) {
				document.getElementById("error").innerHTML = "Please select appropriate date";
			} else {
				window.location.href = "refresh&" + fromD + "&" + toD;
			}
		}
	</script>

	<script src="<c:url value="/resources/assets/js/main.js" />"></script>

</body>

</html>