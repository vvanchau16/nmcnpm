<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<base href="${pageContext.servletContext.contextPath}/">
<link rel="icon" href="./assets/images/Logo-icon.png">
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/11a1459669.js"
	crossorigin="anonymous"></script>
<!-- css external links-->

<link href="<c:url value='/template/css/header_footer.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/css/global.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='template/css/index.css'/>" rel="stylesheet"
	type="text/css">
<!-- google fonts -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap')
	;
</style>
<title>Home page</title>
</head>
<body id="page-top">
	${message}
	${message1}
	<header id="header">
		<div class="header-wrapper">
			<div class="header-login">
				<div class="logo">
					<a href="" #> <img src="./assets/images/Logo.png"
						alt="main logo">
					</a>
				</div>
				<div class="acc-wrapper">
					<div class="acc-login acc-component">
						<button class="button btn-login">Đăng nhập</button>
					</div>
					<div class="acc-sign acc-component">
						<button class="button button--hl">Đăng ký</button>
					</div>
					<div class="acc-search acc-component">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
				</div>
			</div>
			<div class="header-nav">
				<nav class="navigation">
					<ul class="nav-list">
						<li class="nav-item active"><a class="nav-link "
							href="./index.html">Trang chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Khám
								phá</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Cộng
								đồng</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Dịch vụ</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Hướng
								dẫn</a></li>
					</ul>
					<a class="post" href="./pages/post.html"> <i
						class="fa-solid fa-pen-to-square"></i> <span> Đăng tin </span>
					</a>
				</nav>
			</div>
		</div>
	</header>
	<div id="root">
		<section class="filter-section">
			<div class="filter-bg">
				<img src="./assets/images/slide-bg.jpg" alt="">
			</div>
			<div class="filter-wrapper">
				<div class="filter-title">
					<h1 class="title">Website đăng tin cho thuê phòng trọ uy tín
						hàng đầu Việt Nam</h1>
					<h4 class="subtitle">Hãy để chúng tôi giúp bạn thay đổi cuộc
						sống</h4>
				</div>
				<div class="filter-main">
					<ul class="filter-list">

						<li class="filter-item">
							<div class="custom-select" style="width: 200px;">
								<select>
									<option value="0">Tỉnh - Thành Phố</option>
									<option value="1">Tp.HCM</option>
									<option value="2">Hà nội</option>
									<option value="3">Bình Định</option>
								</select>
							</div>
						</li>
						<li class="filter-item">
							<div class="custom-select" style="width: 200px;">
								<select>
									<option value="0">Quận - Huyện</option>
									<option value="1">Quận 9</option>
									<option value="2">Quận 1</option>
									<option value="3">Quận 10</option>
								</select>
							</div>
						</li>
						<li class="filter-item">
							<div class="custom-select" style="width: 200px;">
								<select>
									<option value="0">Giá</option>
									<option value="1">3.000.000 VND</option>
									<option value="2">2.000.000 VND</option>
									<option value="3">1.000.000 VND</option>
								</select>
							</div>
						</li>
						<li class="filter-item">
							<div class="custom-select" style="width: 200px;">
								<select>
									<option value="0">Diện tích</option>
									<option value="1">100 m2</option>
									<option value="2">50 m2</option>
									<option value="3">25 m2</option>
									<option value="3">chưa xác định</option>
								</select>
							</div>
						</li>
					</ul>
					<div class="filter-button">
						<div class="button button--filter button--hl">Lọc</div>
					</div>
				</div>
			</div>
		</section>
		<!-- FORM - LOGIN -->
		<div class="form-login ">
			<div class="overlay-login">
				<div class="login active">
					<div class="btn-close">
						<i class="fa-solid fa-xmark"></i>
					</div>
					<div class="form">
						<h2>Đăng nhập</h2>
						<input type="text" placeholder="Tên đăng nhập"> <input
							type="password" placeholder="Mật khẩu">
						<div class="login-sub-option">
							<a href="#">Quên mật khẩu?</a> <a href="#">Tạo tài khoản mới!</a>
						</div>
						<button class="button button--submit active">Đăng nhập</button>
					</div>
				</div>
			</div>
		</div>
		<!-- FORM - SIGN UP -->
		<div class="form-sign-up ">
			<div class="overlay-sign">
				<form class="sign active" method="post">
					<div class="btn-close">
						<i class="fa-solid fa-xmark"></i>
					</div>
					<div class="form">
						<h2>Đăng Kí</h2>
						<input type="text" placeholder="Tên tài khoản" name="tenDN"> <input
							type="email" value="exam@gmail.com" placeholder="Email của bạn" name = "email">
						<input type="password" placeholder="Password" name="matkhau"> <input
							type="password" placeholder="Confirm Password" name="confirm">
					</div>
					<button class="button button--submit active" name="btnDK">Đăng KÍ</button>
					<h5>Fast Sign Up With Your favourite Social Profile</h5>

				</form>
			</div>
		</div>
		<a href="#page-top" class="gototop"> <i
			class="fa-solid fa-angle-up"></i>
		</a>
		<div class="main">
			<div class="main-wrapper">
				<div class="main-breadcrumbs">
					<a href="#" class="mb-home"> <i class="fa-solid fa-house"></i>
						<span>Home</span>
					</a>
				</div>

				<div class="main-locations">
					<h3 class="main-loca-title">Khu vực nổi bật</h3>
					<ul class="main-loca-list">
						<li class="main-loca-item"><a href="#"
							class="main-local-link">
								<div class="ml-img">
									<img src="./assets/images/location_hcm.jpg" alt="">
								</div>
								<div class="ml-content">Hồ chí minh</div>
						</a></li>
						<li class="main-loca-item"><a href="#"
							class="main-local-link">
								<div class="ml-img">
									<img src="./assets/images/location_hn.jpg" alt="">
								</div>
								<div class="ml-content">Hà nội</div>
						</a></li>
						<li class="main-loca-item"><a href="#"
							class="main-local-link">
								<div class="ml-img">
									<img src="./assets/images/location_dn.jpg" alt="">
								</div>
								<div class="ml-content">Đà nẵng</div>
						</a></li>
					</ul>
				</div>

				<div class="main-content">
					<div class="left-content">

						<div class="main-post">
							<h3 class="main-post-title">Danh sách tin đăng</h3>
							<div class="main-post-sort">
								<span>Sắp xếp:</span>
								<button class="button active">Mặc định</button>
								<button class="button">Mới nhất</button>
								<button class="button">Có video</button>
							</div>
							<ul class="post-list">
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>
								</li>
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>
								</li>
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>
								</li>
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>
								</li>
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>
								</li>
								<li class="post-item">
									<div class="post-img">
										<a href="#"> <img src="./assets/images/Tro1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<a href="#" class="post-title"> Cho thuê phòng trọ dạng
											chung cư gần khu công nghệ cao Thủ Đức </a>
										<div class="post-area">
											<i class="fa-solid fa-chart-area"></i> <span
												class="post-area-value">18 m²</span>
										</div>
										<div class="post-location">
											<i class="fa-solid fa-map-location-dot"></i> <span
												class="post-location-value"> Thành phố Thủ Đức -
												Thành phố HCM </span>
										</div>
										<div class="post-price">
											<span class="post-price-value">3 triệu / tháng</span>
										</div>
										<div class="post-lessor">
											<a href="#">
												<div class="pl-info">
													<div class="pl-img">
														<img src="./assets/images/lessor.jpg" alt="">
													</div>
													<span>Văn Châu</span>
												</div>
											</a>
											<button class="button">Gọi 0999999999</button>
										</div>
									</div>

								</li>
							</ul>
						</div>


						<!-- pagination-->
						<div class="pagination">
							<ul class="pagination-list">
								<li class="p-ctl-prev"><a href="#"> <i
										class="fa-solid fa-angle-left"></i>
								</a></li>
								<li class="pagination-item"><a href="#">1</a></li>
								<li class="pagination-item"><a href="#">2</a></li>
								<li class="pagination-item"><a href="#">3</a></li>
								<li class="pagination-item"><a href="#">4</a></li>
								<li class="pagination-item"><a href="#">5</a></li>
								<span>...</span>
								<li class="p-ctl-next"><a href="#"> <i
										class="fa-solid fa-angle-right"></i>
								</a></li>
							</ul>
						</div>
						<!-- -->

					</div>


					<div class="right-content">
						<div class="main-sidebar">
							<div class="ms-section ms-category">
								<h3 class="ms-title">Danh mục cho thuê</h3>
								<div class="ms-content">
									<ul class="msc-list">
										<li class="msc-item"><a href="#" class="msc-link">Cho
												thuê phòng trọ</a></li>
										<li class="msc-item"><a href="#" class="msc-link">Cho
												thuê nhà nguyên căn</a></li>
										<li class="msc-item"><a href="#" class="msc-link">Cho
												thuê căn hộ</a></li>
										<li class="msc-item"><a href="#" class="msc-link">Cho
												thuê mặt bằng</a></li>
										<li class="msc-item"><a href="#" class="msc-link">Tìm
												người ở ghép</a></li>
									</ul>
								</div>
							</div>
							<div class="ms-section ms-prices">
								<h3 class="ms-title">Xem theo giá</h3>
								<div class="ms-content">
									<ul class="msp-list">
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Dưới 1
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 1 - 2
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 2 - 3
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 3 - 5
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 5 - 7
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 7 - 10
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 10 - 15
													triệu</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Trên 15
													triệu</span>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="ms-section">
								<h3 class="ms-title">Xem theo diện tích</h3>
								<div class="ms-content">
									<ul class="msp-list">
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Dưới 20 m2</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 20 - 30
													m2</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 30 - 50
													m2</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 50 - 70
													m2</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Từ 70 - 90
													m2</span>
										</a></li>
										<li class="msp-item"><a href="#" class="msp-link"> <i
												class="fa-solid fa-angle-right"></i> <span>Trên 90 m2</span>
										</a></li>

									</ul>
								</div>
							</div>
							<div class="ms-advertisement">
								<div class="msa-img">
									<img src="https://phongtro123.com/images/ad_nhom_fb.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer id="footer">
		<div class="footer-wrapper">
			<div class="footer-info">
				<div class="footer-sec">
					<h4 class="footer-title">Thuê phòng trọ</h4>
					<span style="display: block; margin-bottom: 10px">Website
						cho thuê phòng trọ, nhà trọ nhanh chóng và hiệu quả</span>
					<div class="footer-contact">
						<i class="fa-solid fa-mobile-screen-button"></i> <span>HotLine:
							0999999999</span>
					</div>
					<div class="footer-contact">
						<i class="fa-solid fa-envelope"></i> <span>Email:
							vanchau@gmail.com</span>
					</div>
				</div>
				<div class="footer-sec">
					<h4 class="footer-title">Thông tin</h4>
					<ul class="info-list">
						<li class="info-item"><a href="#" class="info-link">Giới
								thiệu</a></li>
						<li class="info-item"><a href="#" class="info-link">Blog</a>
						</li>
						<li class="info-item"><a href="#" class="info-link">Chính
								sách bảo mật</a></li>
						<li class="info-item"><a href="#" class="info-link">Quy
								định sử dụng</a></li>
						<li class="info-item"><a href="#" class="info-link">Quy
								chế bảo mật</a></li>
					</ul>
				</div>
				<div class="footer-sec">
					<h4 class="footer-title">Hướng dẫn</h4>
					<ul class="info-list">
						<li class="info-item"><a href="#" class="info-link">Hướng
								dẫn đăng tin</a></li>
						</li>
						<li class="info-item"><a href="#" class="info-link">Quy
								địng đăng tin</a></li>
						<li class="info-item"><a href="#" class="info-link">Liên
								hệ hỗ trợ</a></li>
					</ul>
				</div>
				<div class="footer-sec">
					<h4 class="footer-title">Kết nối với chúng tôi</h4>
					<ul class="info-list">
						<li class="info-item"><a target="_blank"
							href="https://www.facebook.com/chaaubau16" class="info-link">
								<i class="fa-brands fa-facebook"></i> <span>Văn Châu</span>
						</a></li>
						<li class="info-item"><a target="_blank"
							href="https://www.facebook.com/leuleeu123" class="info-link">
								<i class="fa-brands fa-facebook"></i> <span>Đức Mạnh</span>
						</a></li>
						<li class="info-item"><a target="_blank"
							href="https://www.facebook.com/QuanVu.SKT" class="info-link">
								<i class="fa-brands fa-facebook"></i> <span>Hiếu Thắng</span>
						</a></li>
						<li class="info-item"><a target="_blank"
							href="https://www.facebook.com/huu.nguyenthanh.9275"
							class="info-link"> <i class="fa-brands fa-facebook"></i> <span>Nguyễn
									Hữu</span>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="footer-license">
				<div class="f-logo">
					<a href="#"><img src="./assets/images/MyLogo.png" alt=""></a>
				</div>
				<div class="f-license">© 2022 ThueTro.com, All rights Reserved
					Terms and conditions</div>
			</div>
		</div>
	</footer>
	<script src="<c:url value='/template/js/main.js'/>"></script>
</body>
</html>