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
	width: 50%;
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

			<h1 class="shoptitle">Booking Confirmation</h1>
		</div>


	</section>
	
	<section id="features">


		<div class="container">
			<div class="details-container">

				<h2>Shop Details</h2>
				<br> <img
					src="<c:url value="/resources/assets/images/shop/${ub.spaceName}.jpg"/>">
				<br> <br>
				<div class="para">
					<form:form action="confirm" modelAttribute="ubc">
					Space no.&nbsp;&nbsp;&nbsp;:${ub.roomId}<br>
					Name
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:${ub.spaceName}<br>
					From Date&nbsp;&nbsp;:${ub.from}<br> To Date
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:${ub.to}<br>
					<c:choose>
						<c:when test="${ub.spaceId=='7'}">
							Enter SqFt&nbsp;&nbsp;&nbsp;:
							<form:input type="number" class="tb5" name="sqFt" value="25" min="25"
								id="sq" onkeyup="annotate()" path="sqFt" required="required"/>
							<br>
							<br>
							<br>
							<br>
							<h2 class="p2" id="cost">Total Cost: ${ub.cost*25}</h2>
							<script>
								function annotate() {
									var x = document.getElementById("sq").value;
									document.getElementById('cost').innerHTML ="Total Cost: "+(x*${ub.cost});
								}
							</script>
						</c:when>
						<c:otherwise>
							<br>
							<br>
							<br>
							<h2 class="p2">Total Cost: ${ub.cost}</h2>
						</c:otherwise>
					</c:choose>

					<br>
						
						<form:input type="hidden" value="${ub.id}" path="id" />
						<form:input type="hidden" value="${ub.spaceId}" path="spaceId" />
						<form:input type="hidden" value="${ub.roomId}" path="roomId" />
						<form:input type="hidden" value="${ub.spaceName}" path="spaceName" />
						<form:input type="hidden" value="${ub.from}" path="from" />
						<form:input type="hidden" value="${ub.to}" path="to" />
						<form:input type="hidden" value="${ub.cost}" path="cost" />
						
						<input type="submit" class="btn btn-info" value="Confirm"/>
						<a href="refresh&${ub.from}&${ub.to}" class="btn btn-info">Cancel</a>
					
						</form:form>
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