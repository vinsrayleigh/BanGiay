<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<!-- Begin Mobile Menu Area -->
	<div class="mobile-menu-area d-lg-none d-xl-none col-12">
		<div class="container">
			<div class="row">
				<div class="mobile-menu"></div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu Area End Here -->
	</header>
	<!-- Header Area End Here -->
	<!-- Begin Slider With Banner Area -->
	<div class="slider-with-banner">
		<div class="container">
			<div class="row">
				<!-- Begin Slider Area -->
				<div class="col-lg-8 col-md-8">
					<div class="slider-area">
						<div class="slider-active owl-carousel">
							<!-- Begin Single Slide Area -->
							<div
								class="single-slide align-center-left  animation-style-01 bg-1">
								<div class="slider-progress"></div>
								<div class="slider-content">
									<h5>
										Giảm <span>20%</span> tuần này
									</h5>
									<h2>Adidas ULTRABOOST 20</h2>
									<h3>
										Chỉ từ <span>2,850,000 ₫</span>
									</h3>
									<div class="default-btn slide-btn">
										<a class="links" href="#">Mua ngay</a>
									</div>
								</div>
							</div>
							<!-- Single Slide Area End Here -->
							<!-- Begin Single Slide Area -->
							<div
								class="single-slide align-center-left animation-style-02 bg-2">
								<div class="slider-progress"></div>
								<div class="slider-content">
									<h5>
										Giảm <span>20%</span> tuần này
									</h5>
									<h2>Nike Air Max 200</h2>
									<h3>
										Chỉ từ <span>1,730 ,000 ₫</span>
									</h3>
									<div class="default-btn slide-btn">
										<a class="links" href="#">Mua ngay</a>
									</div>
								</div>
							</div>
							<!-- Single Slide Area End Here -->
							<!-- Begin Single Slide Area -->
							<div
								class="single-slide align-center-left animation-style-02 bg-3">
								<div class="slider-progress"></div>
								<div class="slider-content">
									<h5>
										Giảm <span>20%</span> tuần này
									</h5>
									<h2>New Balance 574</h2>
									<h3>
										Chỉ từ <span>1,500,000 ₫</span>
									</h3>
									<div class="default-btn slide-btn">
										<a class="links" href="#">Mua ngay</a>
									</div>
								</div>
							</div>
							<!-- Single Slide Area End Here -->
						</div>
					</div>
				</div>
				<!-- Slider Area End Here -->
				<!-- Begin Li Banner Area -->
				<div class="col-lg-4 col-md-4 text-center pt-xs-30">
					<div class="li-banner">
						<a href="#"> <img
							src="<c:url value='/template/web/images/banner/1_2.jpg' />"
							alt="">
						</a>
					</div>
					<div class="li-banner mt-15 mt-sm-30 mt-xs-30">
						<a href="#"> <img
							src="<c:url value='/template/web/images/banner/1_1.jpg' />"
							alt="">
						</a>
					</div>
				</div>
				<!-- Li Banner Area End Here -->
			</div>
		</div>
	</div>
	<!-- Slider With Banner Area End Here -->
	<!-- Begin Product Area -->
	<div class="product-area pt-60 pb-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="li-product-tab">
						<ul class="nav li-product-menu">
							<li><a class="active" data-toggle="tab"
								href="#li-new-product"><span>Sản phẩm mới</span></a></li>
							<li><a data-toggle="tab" href="#li-bestseller-product"><span>Sản
										phẩm bán chạy</span></a></li>
							<li><a data-toggle="tab" href="#li-featured-product"><span>Sản
										phẩm nổi bật</span></a></li>
						</ul>
					</div>
					<!-- Begin Li's Tab Menu Content Area -->
				</div>
			</div>
			<div class="tab-content">
				<div id="li-new-product" class="tab-pane active show"
					role="tabpanel">
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="#">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,500,000 ₫</span>
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price new-price-2">1,395,000 ₫</span> <span
													class="old-price">1,500,000 ₫</span> <span
													class="discount-percentage">-7%</span>
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
										
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
										
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<div id="li-bestseller-product" class="tab-pane" role="tabpanel">
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<div id="li-featured-product" class="tab-pane" role="tabpanel">
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Area End Here -->
	<!-- Begin Li's Static Banner Area -->
	<div class="li-static-banner">
		<div class="container">
			<div class="row">
				<!-- Begin Single Banner Area -->
				<div class="col-lg-4 col-md-4 text-center">
					<div class="single-banner">
						<a href="#"> <img src="<c:url value='/template/web/images/banner/1_3.jpg' />" 
							alt="Li's Static Banner">
						</a>
					</div>
				</div>
				<!-- Single Banner Area End Here -->
				<!-- Begin Single Banner Area -->
				<div class="col-lg-4 col-md-4 text-center pt-xs-30">
					<div class="single-banner">
						<a href="#"> <img src="<c:url value='/template/web/images/banner/1_4.jpg' />" 
							alt="Li's Static Banner">
						</a>
					</div>
				</div>
				<!-- Single Banner Area End Here -->
				<!-- Begin Single Banner Area -->
				<div class="col-lg-4 col-md-4 text-center pt-xs-30">
					<div class="single-banner">
						<a href="#"> <img src="<c:url value='/template/web/images/banner/1_5.jpg' />" 
							alt="Li's Static Banner">
						</a>
					</div>
				</div>
				<!-- Single Banner Area End Here -->
			</div>
		</div>
	</div>
	<!-- Li's Static Banner Area End Here -->
	<!-- Begin Li's Laptop Product Area -->
	<section class="product-area li-laptop-product pt-60 pb-45">
		<div class="container">
			<div class="row">
				<!-- Begin Li's Section Area -->
				<div class="col-lg-12">
					<div class="li-section-title">
						<h2>
							<span>ADIDAS</span>
						</h2>
					</div>
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="images/product/large-size/2.jpg"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/2.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<!-- Li's Section Area End Here -->
			</div>
		</div>
	</section>
	<!-- Li's Laptop Product Area End Here -->
	<!-- Begin Li's TV & Audio Product Area -->
	<section
		class="product-area li-laptop-product li-tv-audio-product pb-45">
		<div class="container">
			<div class="row">
				<!-- Begin Li's Section Area -->
				<div class="col-lg-12">
					<div class="li-section-title">
						<h2>
							<span>NIKE</span>
						</h2>
					</div>
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/1.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<!-- Li's Section Area End Here -->
			</div>
		</div>
	</section>
	<!-- Li's TV & Audio Product Area End Here -->

	<!-- Begin Li's Trending Product Area -->
	<section
		class="product-area li-laptop-product li-tv-audio-product pb-45">
		<div class="container">
			<div class="row">
				<!-- Begin Li's Section Area -->
				<div class="col-lg-12">
					<div class="li-section-title">
						<h2>
							<span>VANS</span>
						</h2>
					</div>
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
										
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/3.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<!-- Li's Section Area End Here -->
			</div>
		</div>
	</section>
	<!-- Li's Trending Product Area End Here -->
	<!-- Begin Li's Static Home Area -->
	<!-- <div class="li-static-home">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                           
                            <div class="li-static-home-image"></div>
                            
                            <div class="li-static-home-content">
                                <p>Sale Offer<span>-20% Off</span>This Week</p>
                                <h2>Featured Product</h2>
                                <h2>Meito Accessories 2018</h2>
                                <p class="schedule">
                                    Starting at
                                    <span> $1209.00</span>
                                </p>
                                <div class="default-btn">
                                    <a href="shop-left-sidebar.html" class="links">Shopping Now</a>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </div> -->
	<!-- Li's Static Home Area End Here -->
	<section
		class="product-area li-laptop-product li-tv-audio-product pb-45">
		<div class="container">
			<div class="row">
				<!-- Begin Li's Section Area -->
				<div class="col-lg-12">
					<div class="li-section-title">
						<h2>
							<span>CONVERSE</span>
						</h2>
					</div>
					<div class="row">
						<div class="product-active owl-carousel">
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
											
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
										
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
										src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
							<div class="col-lg-12">
								<!-- single-product-wrap start -->
								<div class="single-product-wrap">
									<div class="product-image">
										<a href="single-product.html"> <img
											src="<c:url value='/template/web/images/product/large-size/4.jpg' />"
											alt="Li's Product Image">
										</a> <span class="sticker">Mới</span>
									</div>
									<div class="product_desc">
										<div class="product_desc_info">
											<div class="product-review">
												<h5 class="manufacturer">
													<a href="shop-left-sidebar.html">Tên thương hiệu</a>
												</h5>
												<div class="rating-box">
													<ul class="rating">
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
														<li class="no-star"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
											</div>
											<h4>
												<a class="product_name" href="single-product.html">Tên
													sản phẩm</a>
											</h4>
											<div class="price-box">
												<span class="new-price">1,395,000 ₫</span>
												<!-- <span class="old-price">1,500,000 ₫</span>
                                                        <span class="discount-percentage">-7%</span> -->
											</div>
										</div>
										<div class="add-actions">
											<ul class="add-actions-link">
												<li class="add-cart active"><a href="#">Thêm vào
														giỏ hàng</a></li>
												<li><a class="links-details" href="wishlist.html"><i
														class="fa fa-heart-o"></i></a></li>
												<li><a href="#" title="quick view"
													class="quick-view-btn" data-toggle="modal"
													data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- single-product-wrap end -->
							</div>
						</div>
					</div>
				</div>
				<!-- Li's Section Area End Here -->
			</div>
		</div>
	</section>
</body>
</html>