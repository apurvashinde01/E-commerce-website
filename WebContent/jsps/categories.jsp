<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<title>toy Shop Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="toy Shop Template">
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
<link rel="stylesheet" type="text/css"
	href="resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/categories_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/categories_responsive.css">
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

	<div class="super_container">

		<!-- Header -->


		<header class="header trans_300"> <!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">free shipping on all u.s orders
							over Rs.50</div>
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
										
										<li><a href="#"><i class="fa fa-user-plus"
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
							<a href="${pageContext.request.contextPath }/">toy<span>shop</span></a>
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
										
											</c:if>
							<li><a href="${pageContext.request.contextPath }/Register"><i class="fa fa-user-plus"
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

		<div class="container product_section_container">
			<div class="row">
				<div class="col product_section clearfix">

					<!-- Breadcrumbs -->

					<div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li class="active"><a href="index.html"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
						</ul>
					</div>

					<!-- Sidebar -->

					<div class="sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>Product Category</h5>
							</div>
							<ul class="sidebar_categories">
								<c:if test="${cat==1 }">
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=3">Boy</a></li>
									<li class="active"><a
										href="${pageContext.request.contextPath }/Categories?cat=1"><span><i
												class="fa fa-angle-double-right" aria-hidden="true"></i></span>Girl</a></li>
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=3">General</a></li>
									<li><a href="#">New Arrivals</a></li>
									<li><a href="#">Collection</a></li>
									<li><a href="#">Shop</a></li>
								</c:if>


								<c:if test="${cat==3}">
									<li class="active"><a
										href="${pageContext.request.contextPath }/Categories?cat=3"><span><i
												class="fa fa-angle-double-right" aria-hidden="true"></i></span>Boys</a></li>
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=1">Girls</a></li>
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=2">general</a></li>
									<li><a href="#">New Arrivals</a></li>
									<li><a href="#">Collection</a></li>
									<li><a href="#">Shop</a></li>
								</c:if>
								<c:if test="${cat==2}">
									<li class="active">
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=3">Boy</a></li>
									<li><a
										href="${pageContext.request.contextPath }/Categories?cat=1">Girl</a></li>

									<li class="active"><a
										href="${pageContext.request.contextPath }/Categories?cat=2"><span><i
												class="fa fa-angle-double-right" aria-hidden="true"></i></span>General</a></li>
									<li><a href="#">New Arrivals</a></li>
									<li><a href="#">Collection</a></li>
									<li><a href="#">Shop</a></li>
								</c:if>
							</ul>
						</div>

						<!-- Price Range Filtering -->
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>Filter by Price</h5>
							</div>
							<p>
								<input type="text" id="amount" readonly
									style="border: 0; toyr: #f6931f; font-weight: bold;">
							</p>
							<div id="slider-range"></div>
							<div class="filter_button">
								<span>filter</span>
							</div>
						</div>

						<!-- Sizes -->
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>Sizes</h5>
							</div>
							<ul class="checkboxes">
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>S</span></li>
								<li class="active"><i class="fa fa-square"
									aria-hidden="true"></i><span>M</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>L</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XL</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XXL</span></li>
							</ul>
						</div>

						<!-- toyr -->
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>toyr</h5>
							</div>
							<ul class="checkboxes">
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Black</span></li>
								<li class="active"><i class="fa fa-square"
									aria-hidden="true"></i><span>Pink</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
								<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>

							</ul>
							<div class="show_more">
								<span><span>+</span>Show More</span>
							</div>
						</div>

					</div>

					<!-- Main Content -->

					<div class="main_content">

						<!-- Products -->

						<div class="products_iso">
							<div class="row">
								<div class="col">

									<!-- Product Sorting -->

									<div
										class="product_sorting_container product_sorting_container_top">
										<ul class="product_sorting">
											<li><span class="type_sorting_text">Default
													Sorting</span> <i class="fa fa-angle-down"></i>
												<ul class="sorting_type">
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "original-order" }'><span>Default
															Sorting</span></li>
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
													<li class="type_sorting_btn"
														data-isotope-option='{ "sortBy": "name" }'><span>Product
															Name</span></li>
												</ul></li>
											<li><span>Show</span> <span class="num_sorting_text">6</span>
												<i class="fa fa-angle-down"></i>
												<ul class="sorting_num">
													<li class="num_sorting_btn"><span>6</span></li>
													<li class="num_sorting_btn"><span>12</span></li>
													<li class="num_sorting_btn"><span>24</span></li>
												</ul></li>
										</ul>
										<div class="pages d-flex flex-row align-items-center">
											<div class="page_current">
												<span>1</span>
												<ul class="page_selection">
													<li><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
												</ul>
											</div>
											<div class="page_total">
												<span>of</span> 3
											</div>
											<div id="next_page" class="page_next">
												<a href="#"><i class="fa fa-long-arrow-right"
													aria-hidden="true"></i></a>
											</div>
										</div>

									</div>

									<!-- Product Grid -->

									<div class="product-grid">


										<!-- Product 1 -->

										<div class="product-item men">
											<div class="product discount product_filter">
												<div class="product_image">
													<img src="resources/images/product1.jpeg" alt="">
												</div>
												<div class="favorite favorite_left"></div>
												<div
													class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
													<span>-Rs.649</span>
												</div>
												<div class="product_info">
													<h6 class="product_name">
														<a
															href="${pageContext.request.contextPath }/Single?prod=1">Deluxe
															Magic Boys Bike</a>
													</h6>
													<div class="product_price">
														Rs.1,851<span>Rs.2,500</span>
													</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=1">add to cart</a>
											</div>
										</div>

										<!-- Product 2 -->

										<div class="product-item women">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_2.jpeg" alt="" >
												</div>
												<div class="favorite"></div>
												<div
													class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center">
													<span>new</span>
												</div>
												<div class="product_info">
													<h6 class="product_name">
														<a
															href="${pageContext.request.contextPath }/Single?prod=2">battery
															operated Kitchen set toy play set for girls</a>
													</h6>
													<div class="product_price">Rs.999.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=2">add to cart</a>
											</div>
										</div>

										<!-- Product 3 -->

										<div class="product-item women">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product31.jpeg" alt="" style="width:70%;height:60%;"
														height="55%">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a
															href="${pageContext.request.contextPath }/Single?prod=3">Barbie
															Doll and Accessories</a>
													</h6>
													<div class="product_price">Rs.709.00</div>
												</div>
											</div>
											<br>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=3">add to cart</a>
											</div>

										</div>

										<!-- Product 4 -->

										<div class="product-item accessories">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product4.jpeg" alt="">
												</div>
												<div
													class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
													<span>sale</span>
												</div>
												<div class="favorite favorite_left"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a
															href="${pageContext.request.contextPath }/Single?prod=4">Doraemon
															Plastic Pencil Box</a>
													</h6>
													<div class="product_price">Rs.558.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=4">add to cart</a>
											</div>
										</div>
										<!-- Product 5 -->

										<div class="product-item women men">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_5.jpg" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Pryma Headphones, Rose Gold &
															Grey</a>
													</h6>
													<div class="product_price">Rs.180.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=5">add to cart</a>
											</div>
										</div>

										<!-- Product 6 -->
										<div class="product-item women men">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_5.jpeg" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a
															href="${pageContext.request.contextPath }/Single?prod=5">Rabbit
															Cuppy Cake Pram </a>
													</h6>
													<div class="product_price">Rs.1100.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="${pageContext.request.contextPath }/ShowCart?prod=5">add to cart</a>
											</div>
										</div>

										<!-- Product 7 -->

										<div class="product-item women">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_7.png" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Samsung CF591 Series Curved
															27-Inch FHD Monitor</a>
													</h6>
													<div class="product_price">Rs.610.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>

										<!-- Product 8 -->

										<div class="product-item accessories">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_8.jpg" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Blue Yeti USB Microphone
															Blackout Edition</a>
													</h6>
													<div class="product_price">Rs.120.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>

										<!-- Product 9 -->

										<div class="product-item men">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_9.jpg" alt="">
												</div>
												<div
													class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
													<span>sale</span>
												</div>
												<div class="favorite favorite_left"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">DYMO LabelWriter 450 Turbo
															Thermal Label Printer</a>
													</h6>
													<div class="product_price">Rs.410.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>

										<!-- Product 10 -->

										<div class="product-item men">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_10.png" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Pryma Headphones, Rose Gold &
															Grey</a>
													</h6>
													<div class="product_price">Rs.180.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>

										<!-- Product 11 -->

										<div class="product-item women men">
											<div class="product product_filter">
												<div class="product_image">
													<img src="resources/images/product_5.jpg" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Pryma Headphones, Rose Gold &
															Grey</a>
													</h6>
													<div class="product_price">Rs.180.00</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>

										<!-- Product 12 -->

										<div class="product-item accessories">
											<div class="product discount product_filter">
												<div class="product_image">
													<img src="resources/images/product_6.jpg" alt="">
												</div>
												<div class="favorite favorite_left"></div>
												<div
													class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
													<span>-Rs.20</span>
												</div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.html">Fujifilm X100T 16 MP Digital
															Camera (Silver)</a>
													</h6>
													<div class="product_price">
														Rs.520.00<span>Rs.590.00</span>
													</div>
												</div>
											</div>
											<div class="red_button add_to_cart_button">
												<a href="#">add to cart</a>
											</div>
										</div>
									</div>

									<!-- Product Sorting -->

									<div
										class="product_sorting_container product_sorting_container_bottom clearfix">
										<ul class="product_sorting">
											<li><span>Show:</span> <span class="num_sorting_text">04</span>
												<i class="fa fa-angle-down"></i>
												<ul class="sorting_num">
													<li class="num_sorting_btn"><span>01</span></li>
													<li class="num_sorting_btn"><span>02</span></li>
													<li class="num_sorting_btn"><span>03</span></li>
													<li class="num_sorting_btn"><span>04</span></li>
												</ul></li>
										</ul>
										<span class="showing_results">Showing 1–3 of 12 results</span>
										<div class="pages d-flex flex-row align-items-center">
											<div class="page_current">
												<span>1</span>
												<ul class="page_selection">
													<li><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
												</ul>
											</div>
											<div class="page_total">
												<span>of</span> 3
											</div>
											<div id="next_page_1" class="page_next">
												<a href="#"><i class="fa fa-long-arrow-right"
													aria-hidden="true"></i></a>
											</div>
										</div>

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
								<h6>cach on delivery</h6>
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
						<div
							class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
							<input id="newsletter_email" type="email"
								placeholder="Your email" required="required"
								data-error="Valid email is required.">
							<button id="newsletter_submit" type="submit"
								class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
						</div>
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
							©2018 All Rights Reserverd. Template by <a href="#">toyrlib</a>
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
	<script src="resources/js/categories_custom.js"></script>


</body>
</html>