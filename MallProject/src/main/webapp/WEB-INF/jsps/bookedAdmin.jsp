<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
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

.pb-description {
	margin-top: 10px;
}

table {
	text-align: center;
	width: 40%;
	margin: auto;
}

.table1 {
	border-collapse: collapse;
	background-color: white;
	overflow: hidden;
	width: 90%;
	border-radius: 10px;
	margin: auto;
}

th, td {
	font-family: 'Motnserrat', sans-serif;
	font-size: 16px;
	padding: 10px;
}

th {
	background-color: #7691ab;
	color: white;
	text-align: center;
}

td {
	padding: 5px 15px;
}

h1 {
	color: #fff;
}

#mnth{
	width: 100%;
}

.book {
	background-color: red;
	color: white;
	cursor: pointer;
	text-align: center;
}
.book:hover{
	background-color: #7691ab;
	color: white;
}
select{
	padding: 6px 12px;
	font-size: 14px;
	border: 1px solid #ccc;
    border-radius: 4px;
    font-family: inherit;
	height: 34px;
}
.free {
	background-color: green;
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
					<li><a href="dashboard">Dashboard</a></li>
					<li><a href="shops">Shop</a></li>
					<li><a href="booked&Shop-Small"><b>Bookings</b></a></li>
					<li><a href="revenue">Revenue</a></li>
					<li><a href="complaint">Complaint</a></li>
					<li><a href="logout-admin">Logout</a></li>
				</ul>
			</nav>

		</div>
	</header>

	<section id="intro">
		<div class="intro-text">
			<h1 class="shoptitle">User Bookings</h1>
		</div>

	</section>

	<section id="features">
		<div class="container">
			<div id="productPage" class="list-view">

				<div id="switcher">
					<table>
						<tr>
							<td><select id="category" >
									<option value="Shop-Small"
										${spaceName == 'Shop-Small' ? 'selected="selected"' : ''}>Shop-Small</option>
									<option value="Shop-Medium"
										${spaceName == 'Shop-Medium' ? 'selected="selected"' : ''}>Shop-Medium</option>
									<option value="Shop-Large"
										${spaceName == 'Shop-Large' ? 'selected="selected"' : ''}>Shop-Large</option>
									<option value="Atrium-North and West"
										${spaceName == 'Atrium-North and West' ? 'selected="selected"' : ''}>Atrium-North
										and West</option>
									<option value="Atrium-South"
										${spaceName == 'Atrium-South' ? 'selected="selected"' : ''}>Atrium-South</option>
									<option value="Cinema Theater"
										${spaceName == 'Cinema Theater' ? 'selected="selected"' : ''}>Cinema
										Theater</option>
									<option value="Marketing Banners"
										${spaceName == 'Marketing Banners' ? 'selected="selected"' : ''}>Marketing
										Banners</option>

							</select></td>
							<td><input type="month" class="form-control" id="mnth"
								value="${mnth}"></td>
							<td><button type="button" class="btn btn-info"
									onclick="on()">Refresh</button></td>
						</tr>
					</table>
				</div>
				<table class="table1 table-bordered">
					<thead>
						<tr>
							<th>Space no.</th>
							<c:forEach items="${roomIdList}" var="u">
								<th>${u}</th>
							</c:forEach>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${bookedList}" var="list">
							<tr>
								<c:forEach items="${list}" var="u">
									<c:choose>
										<c:when test="${u=='0'}">
											<td class="free"></td>
										</c:when>
										<c:when test="${fn:length(u)>5}">
											<th class="dt1">${u}</th>
										</c:when>
										<c:otherwise>
											<td class="book" onclick="window.location.href='user=${u}'">${u}</td>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</tr>
						</c:forEach>
					</tbody>
				</table>

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
			var x = document.getElementById("category").value;
			var y = document.getElementById("mnth").value;
			window.location.href = "AvailableSpaces&" + x + "&" + y;
		}
	</script>

	<script src="<c:url value="/resources/assets/js/main.js" />"></script>

</body>

</html>