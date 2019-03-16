<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<title>Single Product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet"
	href="resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/single_responsive.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


form.example input[type=text] {
    padding: 10px;
    font-size: 17px;
    border: 1px solid grey;
    float: left;
    width: 80%;
    background: #f1f1f1;
}

form.example button {
    float: left;
    width: 20%;
    padding: 10px;
    background: #2196F3;
    color: white;
    font-size: 17px;
    border: 1px solid grey;
    border-left: none;
    cursor: pointer;
}

form.example button:hover {
    background: #0b7dda;
}

form.example::after {
    content: "";
    clear: both;
    display: table;
}
</style>
</head>

<body>
<BR>
	<BR>
	<BR>
	<BR>
	<div class="super_container">

		<!-- Header -->

		<header class="header trans_300"> <!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">free shipping on all u.s orders
							over $50</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">

								<!-- Currency / Language / My Account -->

												
								<li class="currency"><a href="#"> usd <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="currency_selection">
										<li><a href="#">cad</a></li>
										<li><a href="#">aud</a></li>
										<li><a href="#">eur</a></li>
										<li><a href="#">gbp</a></li>
									</ul></li>
								<li class="language"><a href="#"> English <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="language_selection">
										<li><a href="#">French</a></li>
										<li><a href="#">Italian</a></li>
										<li><a href="#">German</a></li>
										<li><a href="#">Spanish</a></li>
									</ul></li>
								<li class="account"><a href="#"> My Account <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="account_selection">
									<c:if
												test="${status==2}">
												<li><a href="${pageContext.request.contextPath }/Login"><i
														class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li>
														
											</c:if>
											<c:if test="${status==1 }">
												<li><a href="${pageContext.request.contextPath }/"><i class="fa fa-sign-in" aria-hidden="true"></i>LOGOUT</a></li>
										
											</c:if><li><a href="#"><i class="fa fa-user-plus"
												aria-hidden="true"></i>Register</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
<form class="example" action="${pageContext.request.contextPath }/Search" style="margin:auto;max-width:600px">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="${pageContext.request.contextPath }/">Toy<span>shop</span></a>
						</div>
						<nav class="navbar">
						<ul class="navbar_menu">
							<li><a href="${pageContext.request.contextPath }/">home</a></li>
							<li><a
								href="${pageContext.request.contextPath }/Categories?cat=2">shop</a></li>
							<li><a href="#">promotion</a></li>
							<li><a href="#">pages</a></li>
							<li><a href="#">blog</a></li>
							<li><a href="${pageContext.request.contextPath }/Contact">contact</a></li>
						</ul>
						<ul class="navbar_user">
							<li><a href="#"><i class="fa fa-search"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
							<li class="checkout"><a href="${pageContext.request.contextPath }/Cart"> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i> <span
									id="checkout_items" class="checkout_items"><c:out value="${count }"></c:out></span>
							</a></li>
						</ul>
						<div class="hamburger_container">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

		</header>

		<div class="fs_menu_overlay"></div>

		<!-- Hamburger Menu -->

		<div class="hamburger_menu">
			<div class="hamburger_close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children"><a href="#"> usd <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#">cad</a></li>
							<li><a href="#">aud</a></li>
							<li><a href="#">eur</a></li>
							<li><a href="#">gbp</a></li>
						</ul></li>
					<li class="menu_item has-children"><a href="#"> English <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#">French</a></li>
							<li><a href="#">Italian</a></li>
							<li><a href="#">German</a></li>
							<li><a href="#">Spanish</a></li>
						</ul></li>
					<li class="menu_item has-children"><a href="#"> My Account
							<i class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<c:if
												test="${status==2}">
												<li><a href="${pageContext.request.contextPath }/Login"><i
														class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li>
														
											</c:if>
											<c:if test="${status==1 }">
												<li><a href="${pageContext.request.contextPath }/"><i class="fa fa-sign-in" aria-hidden="true"></i>LOGOUT</a></li>
										
											</c:if><li><a href="#"><i class="fa fa-user-plus"
									aria-hidden="true"></i>Register</a></li>
						</ul></li>
					<li class="menu_item"><a href="#">home</a></li>
					<li class="menu_item"><a href="#">shop</a></li>
					<li class="menu_item"><a href="#">promotion</a></li>
					<li class="menu_item"><a href="#">pages</a></li>
					<li class="menu_item"><a href="#">blog</a></li>
					<li class="menu_item"><a href="#">contact</a></li>
				</ul>
			</div>
		</div>

		<div class="container single_product_container">
			<div class="row">
				<div class="col">

					<!-- Breadcrumbs -->

					<div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="categories.html"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
							<li class="active"><a href="#"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Single Product</a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="row">
			<c:if test="${prod==1 }">
					<div class="col-lg-7">
						<div class="single_product_pics">
							<div class="row">
								<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
									<div class="single_product_thumbnails">
										<ul>
											<li><img src="resources/images/p11.jpeg" alt=""
												data-image="resources/images/p11.jpeg"></li>
											<li class="active"><img
												src="resources/images/p12.jpeg" alt=""
												data-image="resources/images/p12.jpeg"></li>
											<li><img src="resources/images/p13.jpeg" alt=""
												data-image="resources/images/p13.jpeg"></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-9 image_col order-lg-2 order-1">
									<div class="single_product_image">
										<div class="single_product_image_background"
											style="background-image: url(resources/images/p12.jpeg)"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${prod==2 }">
					<div class="col-lg-7">
						<div class="single_product_pics">
							<div class="row">
								<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
									<div class="single_product_thumbnails">
										<ul>
											<li><img src="resources/images/single_11.jpeg" alt=""
												data-image="resources/images/single_11.jpeg"></li>
											<li class="active"><img
												src="resources/images/single_2.jpeg" alt=""
												data-image="resources/images/single_2.jpeg"></li>
											<li><img src="resources/images/single_3.jpeg" alt=""
												data-image="resources/images/single_3.jpeg"></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-9 image_col order-lg-2 order-1">
									<div class="single_product_image">
										<div class="single_product_image_background"
											style="background-image: url(resources/images/single_2.jpeg)"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${prod==3 }">
					<div class="col-lg-7">
						<div class="single_product_pics">
							<div class="row">
								<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
									<div class="single_product_thumbnails">
										<ul>
											<li><img src="resources/images/product31.jpeg" alt=""
												data-image="resources/images/product31.jpeg"></li>
											<li class="active"><img
												src="resources/images/product32.jpeg" alt=""
												data-image="resources/images/product32.jpeg"></li>
											<li><img src="resources/images/product33.jpeg" alt=""
												data-image="resources/images/product33.jpeg"></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-9 image_col order-lg-2 order-1">
									<div class="single_product_image">
										<div class="single_product_image_background"
											style="background-image: url(resources/images/product32.jpeg)"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
					<c:if test="${prod==4 }">
					<div class="col-lg-7">
						<div class="single_product_pics">
							<div class="row">
								<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
									<div class="single_product_thumbnails">
										<ul>
											<li><img src="resources/images/product41.jpeg" alt=""
												data-image="resources/images/product41.jpeg"></li>
											<li class="active"><img
												src="resources/images/product42.jpeg" alt=""
												data-image="resources/images/product42.jpeg"></li>
											<li><img src="resources/images/product43.jpeg" alt=""
												data-image="resources/images/product43.jpeg"></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-9 image_col order-lg-2 order-1">
									<div class="single_product_image">
										<div class="single_product_image_background"
											style="background-image: url(resources/images/product42.jpeg)"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				
					<c:if test="${prod==5}">
					<div class="col-lg-7">
						<div class="single_product_pics">
							<div class="row">
								<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
									<div class="single_product_thumbnails">
										<ul>
											<li><img src="resources/images/product51.jpeg" alt=""
												data-image="resources/images/product51.jpeg"></li>
											<li class="active"><img
												src="resources/images/product52.jpeg" alt=""
												data-image="resources/images/product52.jpeg"></li>
											<li><img src="resources/images/product53.jpeg" alt=""
												data-image="resources/images/product53.jpeg"></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-9 image_col order-lg-2 order-1">
									<div class="single_product_image">
										<div class="single_product_image_background"
											style="background-image: url(resources/images/product52.jpeg)"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:forEach items="${prod_list }" var="p">
					<c:if test="${p.getProd_id()==prod }">
				
					<div class="col-lg-5">
						<div class="product_details">
							<div class="product_details_title">
								<h2>
									<c:out value="${p.getProd_name() }"></c:out>
								</h2>

								<p>
									<c:out value="${p.getProd_desc()}"></c:out>
								</p>
							</div>
							<div
								class="free_delivery d-flex flex-row align-items-center justify-content-center">
								<span class="ti-truck"></span><span>free delivery</span>
							</div>
							
							<div class="product_price">
								<c:out value="${p.getProd_price()}"></c:out>
							</div>
							<ul class="star_rating">
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
							</ul>
							<div class="product_color">
								<span>Select Color:</span>
								<ul>
									<li style="background: #e54e5d"></li>
									<li style="background: #252525"></li>
									<li style="background: #60b3f3"></li>
								</ul>
							</div>
							<div
								class="quantity d-flex flex-column flex-sm-row align-items-sm-center">
								<span>Quantity:</span>
								<div class="quantity_selector">
									<span class="minus"><i class="fa fa-minus"
										aria-hidden="true"></i></span> <span id="quantity_value">1</span> <span
										class="plus"><i class="fa fa-plus" aria-hidden="true"></i></span>
								</div>
								<div class="red_button add_to_cart_button">
								<a href="${pageContext.request.contextPath }/ShowCart?prod=<c:out value="${prod }" />">add to cart</a>
								</div>
								<div class="red_button add_to_cart_button">
								<a href="${pageContext.request.contextPath }/Pay?prod=<c:out value="${prod }" />">Pay</a>
								</div>
								<div
									class="product_favorite d-flex flex-column align-items-center justify-content-center"></div>
							</div>
						</div>
					</div></c:if>
				</c:forEach>
				
			</div>


		</div>

		<!-- Tabs -->

		<div class="tabs_section_container">

			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tabs_container">
							<ul
								class="tabs d-flex flex-sm-row flex-column align-items-left align-items-md-center justify-content-center">
								<li class="tab active" data-active-tab="tab_1"><span>Description</span></li>
								<li class="tab" data-active-tab="tab_2"><span>Additional
										Information</span></li>
								<li class="tab" data-active-tab="tab_3"><span>Reviews
										(2)</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">

						<!-- Tab Description -->

						<!-- Tab Additional Info -->

						<div id="tab_2" class="tab_container">
							<div class="row">
								<div class="col additional_info_col">
									<div class="tab_title additional_info_title">
										<h4>Additional Information</h4>
									</div>
									<p>
										COLOR:<span>Gold, Red</span>
									</p>
									<p>
										SIZE:<span>L,M,XL</span>
									</p>
								</div>
							</div>
						</div>

						<!-- Tab Reviews -->

						<div id="tab_3" class="tab_container">
							<div class="row">

								<!-- User Reviews -->

								<div class="col-lg-6 reviews_col">
									<div class="tab_title reviews_title">
										<h4>Reviews (2)</h4>
									</div>

									<!-- User Review -->

									<div
										class="user_review_container d-flex flex-column flex-sm-row">
										<div class="user">
											<div class="user_pic"></div>
											<div class="user_rating">
												<ul class="star_rating">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</ul>
											</div>
										</div>
										<div class="review">
											<div class="review_date">27 Aug 2016</div>
											<div class="user_name">Brandon William</div>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua.</p>
										</div>
									</div>

									<!-- User Review -->

									<div
										class="user_review_container d-flex flex-column flex-sm-row">
										<div class="user">
											<div class="user_pic"></div>
											<div class="user_rating">
												<ul class="star_rating">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</ul>
											</div>
										</div>
										<div class="review">
											<div class="review_date">27 Aug 2016</div>
											<div class="user_name">Brandon William</div>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua.</p>
										</div>
									</div>
								</div>

								<!-- Add Review -->

								<div class="col-lg-6 add_review_col">

									<div class="add_review">
										<form id="review_form" action="post">
											<div>
												<h1>Add Review</h1>
												<input id="review_name" class="form_input input_name"
													type="text" name="name" placeholder="Name*"
													required="required" data-error="Name is required.">
												<input id="review_email" class="form_input input_email"
													type="email" name="email" placeholder="Email*"
													required="required" data-error="Valid email is required.">
											</div>
											<div>
												<h1>Your Rating:</h1>
												<ul class="user_star_rating">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</ul>
												<textarea id="review_message" class="input_review"
													name="message" placeholder="Your Review" rows="4" required
													data-error="Please, leave us a review."></textarea>
											</div>
											<div class="text-left text-sm-right">
												<button id="review_submit" type="submit"
													class="red_button review_submit_btn trans_300"
													value="Submit">submit</button>
											</div>
										</form>
									</div>

								</div>

							</div>
						</div>

					</div>
				</div>
			</div>

		</div>

		<!-- Benefit -->

		<div class="benefit">
			<div class="container">
				<div class="row benefit_row">
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-truck" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>free shipping</h6>
								<p>Suffered Alteration in Some Form</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>cash on delivery</h6>
								<p>The Internet Tend To Repeat</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-undo" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>45 days return</h6>
								<p>Making it Look Like Readable</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-clock-o" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>opening all week</h6>
								<p>8AM - 09PM</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Newsletter -->

		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
							<h4>Newsletter</h4>
							<p>Subscribe to our newsletter and get 20% off your first
								purchase</p>
						</div>
					</div>
					<div class="col-lg-6">
						<form action="post">
							<div
								class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
								<input id="newsletter_email" type="email"
									placeholder="Your email" required="required"
									data-error="Valid email is required.">
								<button id="newsletter_submit" type="submit"
									class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div
						class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav">
							<li><a href="#">Blog</a></li>
							<li><a href="#">FAQs</a></li>
							<li><a href="contact.html">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div
						class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-skype"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"
									aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container">
						<div class="cr">
							©2018 All Rights Reserverd. This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>

	</div>

	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/styles/bootstrap4/popper.js"></script>
	<script src="resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="resources/plugins/easing/easing.js"></script>
	<script src="resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="resources/js/single_custom.js"></script>
</body>

</html>
