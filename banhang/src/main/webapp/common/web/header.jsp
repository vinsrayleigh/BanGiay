<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!-- Begin Header Area -->
<header>
	<!-- Begin Header Top Area -->
	<div class="header-top">
		<div class="container">
			<div class="row">
				<!-- Begin Header Top Left Area -->
				<div class="col-lg-3 col-md-4">
					<div class="header-top-left">
						<ul class="phone-wrap">
							<li><span class="fa fa-phone"></span>Hotline: 035 985 0953</li>
						</ul>
					</div>
				</div>
				<!-- Header Top Left Area End Here -->
				<!-- Begin Header Top Right Area -->
				<div class="col-lg-9 col-md-8">
					<div class="header-top-right">
						<ul class="ht-menu">
							<!-- Begin Setting Area -->
							<li>
								<div class="btnChung">
									<span><a href="login-register.html">Đăng ký</a></span>
								</div>
							</li>
							<!-- Setting Area End Here -->
							<!-- Begin Setting Area -->
							<c:if test="${not empty TKNhanVienModel}">
								<li>
									<div class="btnChung">
										<span><a href='#'>Wellcom,
												${TKNhanVienModel.userName}</a></span>
									</div>
								</li>
								<li>
									<div class="btnChung">
										<span><a
											href='<c:url value="/thoat?action=logout"/>'>thoat</a></span>
									</div>
								</li>
							</c:if>
							<c:if test="${ empty TKNhanVienModel}">
								<li>
									<div class="btnChung">
										<span><a
											href='<c:url value="/dang-nhap?action=login"/>'>Đăng nhập</a></span>
									</div>
								</li>
							</c:if>

							<!-- Setting Area End Here -->
							<!-- Begin Setting Area -->
							<li>
								<div class="ht-currency-trigger">
									<span>Tài khoản của tôi</span>
								</div>
								<div class="setting ht-setting">
									<ul class="ht-setting-list">
										<li><a href="my-account.html">Thông tin tài khoản</a></li>
										<li><a href="order-list.html">Xem danh sách đơn hàng</a></li>
										<li><a href="#">Đăng xuất</a></li>
									</ul>
								</div>
							</li>
							<!-- Setting Area End Here -->
						</ul>
					</div>
				</div>
				<!-- Header Top Right Area End Here -->
			</div>
		</div>
	</div>
	<!-- Header Top Area End Here -->
	<!-- Begin Header Middle Area -->
	<div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
		<div class="container">
			<div class="row">
				<!-- Begin Header Logo Area -->
				<div class="col-lg-3">
					<div class="logo pb-sm-30 pb-xs-30">
						<a href="index.html"> <img
							src="<c:url value='/template/web/images/menu/logo/1.jpg' />"
							alt="">
						</a>
					</div>
				</div>
				<!-- Header Logo Area End Here -->
				<!-- Begin Header Middle Right Area -->
				<div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
					<!-- Begin Header Middle Searchbox Area -->
					<form action="#" class="hm-searchbox">
						<input type="text" placeholder="Tìm kiếm ...">
						<button class="li-btn" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
					<!-- Header Middle Searchbox Area End Here -->
					<!-- Begin Header Middle Right Area -->
					<div class="header-middle-right">
						<ul class="hm-menu">
							<!-- Begin Header Middle Wishlist Area -->
							<li class="hm-wishlist"><a href="wishlist.html"> <span
									class="cart-item-count wishlist-item-count">0</span> <i
									class="fa fa-heart-o"></i>
							</a></li>
							<!-- Header Middle Wishlist Area End Here -->
							<!-- Begin Header Mini Cart Area -->
							<li class="hm-minicart">
								<div class="hm-minicart-trigger">
									<span class="item-icon"></span> <span class="item-text">100,000
										₫ <span class="cart-item-count">2</span>
									</span>
								</div> <span></span>
								<div class="minicart">
									<ul class="minicart-product-list">
										<li><a href="single-product.html"
											class="minicart-product-image"> <img
												src="<c:url value='/template/web/images/product/small-size/5.jpg' />"
												alt="cart products">
										</a>
											<div class="minicart-product-details">
												<h6>
													<a href="single-product.html">Sản phẩm 1</a>
												</h6>
												<span>50,000 ₫ x 1</span>
											</div>
											<button class="close" title="Remove">
												<i class="fa fa-close"></i>
											</button></li>
										<li><a href="single-product.html"
											class="minicart-product-image"> <img
												src="<c:url value='/template/web/images/product/small-size/6.jpg' />"
												alt="cart products">
										</a>
											<div class="minicart-product-details">
												<h6>
													<a href="single-product.html">Sản phẩm 2</a>
												</h6>
												<span>50,000 ₫ x 1</span>
											</div>
											<button class="close" title="Remove">
												<i class="fa fa-close"></i>
											</button></li>
									</ul>
									<p class="minicart-total">
										Tổng cộng: <span>100,000 ₫</span>
									</p>
									<div class="minicart-button">
										<a href="shopping-cart.html"
											class="li-button li-button-fullwidth li-button-dark"> <span>Xem
												giỏ hàng đầy đủ</span>
										</a> <a href="checkout.html"
											class="li-button li-button-fullwidth li-button-dark"> <span>Đặt
												hàng</span>
										</a>
									</div>
								</div>
							</li>
							<!-- Header Mini Cart Area End Here -->
						</ul>
					</div>
					<!-- Header Middle Right Area End Here -->
				</div>
				<!-- Header Middle Right Area End Here -->
			</div>
		</div>
	</div>
	<!-- Header Middle Area End Here -->
	<!-- Begin Header Bottom Area -->
	<div class="header-bottom header-sticky d-none d-lg-block d-xl-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Begin Header Bottom Menu Area -->
					<div class="hb-menu">
						<nav>
							<ul>
								<li><a href="index.html">Trang chủ</a></li>
								<li><a href="shop-left-sidebar.html">Adidas</a></li>
								<li><a href="shop-left-sidebar.html">Nike</a></li>
								<li><a href="shop-left-sidebar.html">New Balance</a></li>
								<li><a href="shop-left-sidebar.html">Reebok</a></li>
								<li class="megamenu-holder"><a href="#">Thương hiệu
										khác</a>
									<ul class="megamenu hb-megamenu">
										<li>
											<ul>
												<li><a href="shop-left-sidebar.html">PUMA</a></li>
												<li><a href="shop-left-sidebar.html">CONVERSE</a></li>
												<li><a href="shop-left-sidebar.html">VANS</a></li>
												<li><a href="shop-left-sidebar.html">ANANAS</a></li>
												<li><a href="shop-left-sidebar.html">BITIS</a></li>
											</ul>
										</li>
									</ul></li>
							</ul>
						</nav>
					</div>
					<!-- Header Bottom Menu Area End Here -->
				</div>
			</div>
		</div>
	</div>
	<!-- Header Bottom Area End Here -->
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