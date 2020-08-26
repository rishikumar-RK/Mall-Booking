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
body {
	height: 100vh;
	text-align: center;
}
table{
	margin:auto auto;
}

#intro {
	max-height: 40vh;
}

h4 {
	font-weight: bold;
	color: #fff;
}

.list-view .pb-image {
	max-width: 250px;
}

.close {
	color: #fff;
	transform: scale(1.2)
}

.modal-content {
	font-weight: bold;
	background: linear-gradient(to bottom right, #F87E7B, #B05574);
}

.form-control {
	margin: 1em 0;
}

.form-control:hover, .form-control:focus {
	box-shadow: none;
	border-color: #fff;
}

.form-control::-webkit-input-placeholder {
	color: #fff;
}

.form-control:focus::-webkit-input-placeholder {
	font-weight: bold;
	color: #fff;
}

.login {
	padding: 6px 20px;
	border-radius: 20px;
	background: none;
	border: 2px solid #FAB87F;
	color: #FAB87F;
	font-weight: bold;
	transition: all .5s;
	margin-top: 1em;
}

.login:hover {
	background: #FAB87F;
	color: #fff;
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
					<li><a href="shops"><b>Shop</b></a></li>
					<li><a href="booked&Shop-Small">Bookings</a></li>
					<li><a href="revenue">Revenue</a></li>
					<li><a href="complaint">Complaint</a></li>
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
			<h3 class="section-title">Shop Details</h3>
			<span class="section-divider"></span>
		</div>

		<div class="container">

			<div id="productPage" class="list-view">
				<div id="switcher">
					

					<div class="pb-lower">
						<a href="#" class="button" data-target="#login"
							data-toggle="modal">Register</a>
					</div>

					<div id="login" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Register a shop</h4>

									<form action="registerSpace">

										<label for="category">Choose a category:</label> <select
											id="category" class="username form-control" name="category" required>
											<option value="none" selected disabled hidden>Select
													Category</option>
											<option value="Shop-Small">Shop-Small</option>
											<option value="Shop-Medium">Shop-Medium</option>
											<option value="Shop-large">Shop-large</option>
											<option value="Atrium-North and West">Atrium-North and West</option>
											<option value="Atrium-South">Atrium-South</option>
											<option value="Cinema Theater">Cinema Theater</option>
											<option value="Marketing Banners">Marketing Banners</option>
										</select> <input class="btn login" type="submit" value="Register" />
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<ul id="productWrapper">
					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Shop-Small"><img
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
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit1"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>



					<div id="edit1" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h4>Shop-Small</h4>
									<p id="error1"></p>
									<form action="edit">
									<input type="hidden" name="spaceId" value="1">
									<table>
										<tr>
											<td><label for="weekdays">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s1" value="${shopCost.get(0)}" required></td>
										</tr>											
										<tr>
											<td><label for="weekend">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s2" value="${shopCost.get(1)}" required></td>
										</tr>
										<tr>
											<td><label for="holidays">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s3" value="${shopCost.get(2)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"
											 ></td>
										</tr>
										
									</table>																	
									</form>

								</div>
							</div>
						</div>
					</div>

					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Shop-Medium"><img
									src="<c:url value="/resources/assets/images/shop/Shop-Medium.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Shop-Medium</h3>
								<p>Weekdays: ${shopCost.get(3)}/day</p>
								<p>Weekends: ${shopCost.get(4)}/day</p>
								<p>Public Holidays: ${shopCost.get(5)}/hour</p>
								<p>Total Shops: ${roomList.get(1)}</p>
								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit2"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>


					<div id="edit2" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Shop-Medium</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="2">
									<table>
										<tr>
											<td><label for="weekdays">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s4" value="${shopCost.get(3)}" required></td>
										</tr>											
										<tr>
											<td><label for="weekend">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s5" value="${shopCost.get(4)}" required></td>
										</tr>
										<tr>
											<td><label for="holidays">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s6" value="${shopCost.get(5)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>


					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Shop-large"><img
									src="<c:url value="/resources/assets/images/shop/Shop-Large.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Shop-large</h3>
								<p>Weekdays: ${shopCost.get(6)}/day</p>
								<p>Weekends: ${shopCost.get(7)}/day</p>
								<p>Public Holidays: ${shopCost.get(8)}/day</p>
								<p>Total Shops: ${roomList.get(2)}</p>
								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit3"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>

					<div id="edit3" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Shop-large</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="3">
									<table>
										<tr>
											<td><label for="weekdays">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s7" value="${shopCost.get(6)}" required></td>
										</tr>											
										<tr>
											<td><label for="weekend">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s8" value="${shopCost.get(7)}" required></td>
										</tr>
										<tr>
											<td><label for="holidays">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s9" value="${shopCost.get(8)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"
											 ></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>

					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Atrium-North and West"><img
									src="<c:url value="/resources/assets/images/shop/Atrium-North and West.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Atrium-North and West</h3>
								<p>Weekdays: ${shopCost.get(9)}/hour</p>
								<p>Weekends: ${shopCost.get(10)}/hour</p>
								<p>Public Holidays: ${shopCost.get(11)}/hour</p>
								<p>Total Space: ${roomList.get(3)}</p>
								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit4"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>



					<div id="edit4" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Atrium-North And West</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="4">
									<table>
										<tr>
											<td><label for="weekdays">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s10" value="${shopCost.get(9)}" required></td>
										</tr>											
										<tr>
											<td><label for="weekend">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s11" value="${shopCost.get(10)}" required></td>
										</tr>
										<tr>
											<td><label for="holidays">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s12" value="${shopCost.get(11)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"
											 ></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>


					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Atrium-South"><img
									src="<c:url value="/resources/assets/images/shop/Atrium-South.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Atrium-South</h3>
								<p>Weekdays: ${shopCost.get(12)}/hour</p>
								<p>Weekends: ${shopCost.get(13)}/hour</p>
								<p>Public Holidays: ${shopCost.get(14)}/hour</p>
								<p>Total Space: ${roomList.get(4)}</p>
								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit5"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>




					<div id="edit5" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Atrium-South</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="5">
									<table>
										<tr>
											<td><label for="weekdays">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s13" value="${shopCost.get(12)}" required></td>
										</tr>											
										<tr>
											<td><label for="weekend">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s14" value="${shopCost.get(13)}" required></td>
										</tr>
										<tr>
											<td><label for="holidays">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s15" value="${shopCost.get(14)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="button" value="Change"
											onclick="on()" ></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>

					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Cinema Theater"><img
									src="<c:url value="/resources/assets/images/shop/Cinema Theater.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Cinema Theater</h3>
								<p>All Days: ${shopCost.get(15)}/week</p>
								<p>Total Screen: ${roomList.get(5)}</p>

								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit6"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>

					<div id="edit6" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Cinema Theater</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="6">
									<table>
										<tr>
											<td><label for="option">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s16" value="${shopCost.get(15)}" required>
											<input type="hidden" name="weekend" value="${shopCost.get(15)}">
											<input type="hidden" name="holidays" value="${shopCost.get(15)}">
											</td>
										</tr>											
										
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"
											 ></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>

					<li class="product-block">
						<div class="pb-upper">
							<div class="pb-image">
								<a href="booked&Marketing Banners"><img
									src="<c:url value="/resources/assets/images/shop/Marketing Banners.jpg"/>"
									border="0" alt="Some great product" class="pb-img"></a>
							</div>
							<div class="pb-description">
								<p class="description">
								<h3>Marketing Banners</h3>
								<p>Weekdays: ${shopCost.get(16)}/perSqFt/day</p>
								<p>Weekends: ${shopCost.get(17)}/perSqFt/day</p>
								<p>Public Holidays: ${shopCost.get(18)}/perSqFt/day</p>
								<p>Total set of Banners: ${roomList.get(6)}</p>
								</p>
							</div>
							<div class="pb-lower">
								<a href="#" class="button" data-target="#edit7"
									data-toggle="modal">edit</a>
							</div>
						</div>
					</li>

					<div id="edit7" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-body">
									<button data-dismiss="modal" class="close">&times;</button>
									<h4>Edit a shop</h4>
									<h5>Marketing Banners</h5>
									<form action="edit">
									<input type="hidden" name="spaceId" value="7">
									<table>
										<tr>
											<td><label for="option">Weekdays: </label> </td>
											<td><input
											type="number" name="weekdays" id="s17" value="${shopCost.get(16)}" required></td>
										</tr>											
										<tr>
											<td><label for="option">Weekend:</label></td>
											<td><input type="number" name="weekend" id="s18" value="${shopCost.get(17)}" required></td>
										</tr>
										<tr>
											<td><label for="option">Public Holidays:  </label></td>
											<td><input type="number" name="holidays" id="s19" value="${shopCost.get(18)}" required></td>
										</tr>
										<tr>
											<td colspan="2"><input class="btn login" type="submit" value="Change"
											 ></td>
										</tr>
										
									</table>	
										
									</form>
								</div>
							</div>
						</div>
					</div>



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