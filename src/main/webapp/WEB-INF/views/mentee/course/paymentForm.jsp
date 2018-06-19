<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<!--meta tag start-->
<meta content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="edustar">
<meta name="author" content="khanalprem">
<meta name="copyright" content="khanalprem">

<!--title-->
<title>Edustar-Educational html5 template</title>

<!-- faveicon start   -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">

<!-- stylesheet start -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<script>
	var IMP = window.IMP; // 생략가능
	IMP.init("imp99503400");

	IMP.request_pay({
		pg : 'inicis', // version 1.1.0부터 지원.
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : '주문명:결제테스트',
		amount : 100000,
		buyer_email : 'junewillow50@gmail.com',
		buyer_name : 'postIT',
		buyer_tel : '010-1234-5678',
		buyer_addr : '서울특별시 강남구 삼성동',
		buyer_postcode : '13532',
		m_redirect_url : 'http://localhost:8000/postIT/'
	}, function(rsp) {
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});

	IMP.request_pay();
</script>
</head>
<body>
<body>
	<header>
	<div class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-5 col-xs-5">
					<ul class="tophead-link">
						<li><a href="about.html"><i> Welcome to Edustar
									center !</i></a></li>
					</ul>
				</div>

				<div class="col-md-7 col-sm-7 col-xs-7 tophead-right">
					<ul class="tophead-link">
						<li><a href="tel:9856055360"><i class="fa fa-mobile"
								aria-hidden="true"></i>9856055260</a></li>
						<li><a href="signin.html"><i class="fa fa-lock"
								aria-hidden="true"></i> Sign</a></li>
						<li><a href="register.html"><i class="fa fa-key"
								aria-hidden="true"></i> Register</a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>

	<!-- Start Navigation -->
	<div id="masthead" class="site-header menu">
		<div class="container">
			<div class="site-branding">
				<div id="site-identity">
					<a href="index.html" class="logo"><img
						src="${pageContext.request.contextPath}/resources/images/logo.png"
						alt="logo"></a>
				</div>
				<!-- #site-identity -->
			</div>
			<!-- .site-branding -->
			<div class="header-nav-search">
				<div class="header-search">
					<i class="fa fa-search top-search"></i>
					<div class="search-popup">
						<form role=search action="search" class="search-wrapper">
							<div>
								<input type="text" name="search" placeholder="Type your keyword">
								<input type="submit" name="button" class="pop-search">
							</div>
						</form>
						<div class="search-overlay"></div>
					</div>
				</div>
				<div class="toggle-button">
					<span></span> <span></span> <span></span>
				</div>
				<div id="main-navigation">
					<nav class="main-navigation">
					<div class="close-icon">
						<i class="fa fa-close"></i>
					</div>
					<ul>
						<li class="current-menu-item "><a href="index.html">Home</a></li>
						<li class="menu-item-has-children"><a href="#">Pages</a>
							<ul>
								<li><a href="gallery.html">Gallery</a></li>
								<li><a href="teacher.html">teacher</a></li>
								<li><a href="teacher-details.html">Teacher details</a></li>
								<li><a href="signin.html">Sign in</a></li>
								<li><a href="register.html">register</a></li>
								<li><a href="error.html">404 Error</a></li>
								<li class="menu-item-has-children"><a href="blog.html">blog</a>
									<ul>
										<li><a href="blog.html">Blog</a></li>
										<li><a href="blog2.html">Blog2</a></li>
										<li><a href="blog-details.html">Blog details</a></li>
									</ul></li>
							</ul></li>
						<li><a href="about.html">About</a></li>
						<li class="menu-item-has-children"><a href="courses.html">couses</a>
							<ul>
								<li><a href="courses.html">Courses</a></li>
								<li><a href="course-details.html">Course details</a></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="event.html">Events</a>
							<ul>
								<li><a href="event.html">Event</a></li>
								<li><a href="event-details.html">Event details</a></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="#">Blog</a>
							<ul>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="blog2.html">Blog2</a></li>
								<li><a href="blog-details.html">Blog details</a></li>
							</ul></li>
						<li><a href="contact.html">pay</a></li>
					</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- End Navigation --> </header>
	<section class="breadcrumb"
		style="background-image: url(${pageContext.request.contextPath}/resources/images/background/breadcrumb.jpg);">
	<div class="breadcrumb-overlay"></div>
	<div class="container">
		<h1>
			<a href="signin.html">payment page</a>
		</h1>
		<span><a href="index.html">course</a></span><span><i
			class="fa fa-angle-right"></i>payment</span>
	</div>
	</section>

	<section class="contact-page inner-page">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="title inner-page-title">
					<h3>Class info</h3>
				</div>
				<div class="contact-info">
					<p>
						<i class="fa fa-phone"></i>class title
					</p>
					<p>
						<i class="fa fa-envelope"></i>mento name
					</p>
					<p>
						<i class="fa fa-map-marker"></i>강좌시간: 8pm - 10pm<br>강좌요일: 월,
						화 <br>총 강좌시간 : 64hr/term
					</p>
					<p>
						<i class="fa fa-clock-o"></i><h3>price : 100,000
					</h3>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="title inner-page-title">
					<h3>회원정보</h3>
				</div>
				<form action="">
					<div class="row">
						<div class="col-sm-6 ">
							<div class="form-group">
								<label>Name :</label> <input name="name" class="form-control"
									type="text" placeholder="박지안">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Email :</label> <input name="email" class="form-control"
									type="text" placeholder="chozang@gmail.com">
							</div>
						</div>
						<div class="col-sm-6" style="margin-top:">
							<div class="form-group">
								<label>결제방식 :</label><br> <input type="radio"
									name="payMethod" value="transfer"> 무통장입금 <input
									type="radio" name="payMethod" value="card">카드<br>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Email :</label> <input name="email" class="form-control"
									type="text" placeholder="chozang@gmail.com">
							</div>
						</div>
						<section id="payment-input">
						<div id="payment-method-card" class="payment-method">
							<h1 class="label">간편 결제</h1>
							<fieldset id="card-information-wrap" class="fieldset">
								<div class="field-wrap">
									<dl id="card-inputs" class="dl-fieldset">
										<dt>카드 번호 16자리</dt>
										<dd>
											<div id="card-number-wrap" class="input-wrap full-width">
												<div class="select-wrap">
													<div class="Select Select--single has-value">
														<input type="hidden" name="card_type" value="private">
														<div class="Select-control">
															<span class="Select-multi-value-wrapper"
																id="react-select-3--value"><div
																	class="Select-value">
																	<span class="Select-value-label" role="option"
																		aria-selected="true" id="react-select-3--value-item">개인</span>
																</div>
																<div role="combobox" aria-expanded="false"
																	aria-owns="react-select-3--value"
																	aria-activedescendant="react-select-3--value"
																	class="Select-input" tabindex="0" aria-readonly="false"
																	style="border: 0px; width: 1px; display: inline-block;"></div></span><span
																class="Select-arrow-zone"><span
																class="Select-arrow"></span></span>
														</div>
													</div>
												</div>
												<input type="text" pattern="\d*" name="card_number1"
													id="card-number-1" class="card-number" maxlength="4"
													placeholder="0000"><input type="text" pattern="\d*"
													name="card_number2" id="card-number-2" class="card-number"
													maxlength="4" placeholder="0000"><input type="text"
													pattern="\d*" name="card_number3" id="card-number-3"
													class="card-number" maxlength="4" placeholder="0000"><input
													type="text" pattern="\d*" name="card_number4"
													id="card-number-4" class="card-number" maxlength="4"
													placeholder="0000">
											</div>
										</dd>
										<dt>유효 기간</dt>
										<dd class="exp-month-year-wrap">
											<div id="exp-month-wrap" class="input-wrap">
												<input type="text" pattern="\d*" id="card-exp-month"
													name="exp_month" placeholder="MM" maxlength="2">
											</div>
											<!-- react-text: 1505 -->
											월
											<!-- /react-text -->
											<div id="exp-year-wrap" class="input-wrap">
												<input type="text" pattern="\d*" id="card-exp-year"
													name="exp_year" placeholder="YY" maxlength="2">
											</div>
											<!-- react-text: 1508 -->
											년
											<!-- /react-text -->
										</dd>
										<dt>생년월일 6자리</dt>
										<dd>
											<div id="birthday-wrap" class="input-wrap full-width">
												<input type="text" pattern="\d*" id="card-birthday"
													name="birthday" placeholder="예) 930812" maxlength="6"
													class="full-width">
											</div>
										</dd>
										<dt>카드 비밀번호 앞 2자리</dt>
										<dd>
											<div id="password-wrap" class="input-wrap">
												<input type="password" id="card-password" pattern="[0-9]*"
													inputmode="numeric" name="birthday" placeholder=""
													maxlength="2">
											</div>
											<!-- react-text: 1517 -->
											**
											<!-- /react-text -->
										</dd>
										<dd class="clear"></dd>
									</dl>
									<dl id="installments-fieldset" class="dl-fieldset">
										<dt>
											<!-- react-text: 1521 -->
											할부 방식
											<!-- /react-text -->
											<a class="installments-link"
												href="https://pg.nicepay.co.kr/shared/info.html"
												target="_blank">무이자 할부정보 확인하기</a>
										</dt>
										<dd>
											<div class="Select Select--single has-value">
												<input type="hidden" name="installments" value="0">
												<div class="Select-control">
													<span class="Select-multi-value-wrapper"
														id="react-select-4--value"><div
															class="Select-value">
															<span class="Select-value-label" role="option"
																aria-selected="true" id="react-select-4--value-item">일시불</span>
														</div>
														<div role="combobox" aria-expanded="false"
															aria-owns="react-select-4--value"
															aria-activedescendant="react-select-4--value"
															class="Select-input" tabindex="0" aria-readonly="false"
															style="border: 0px; width: 1px; display: inline-block;"></div></span><span
														class="Select-arrow-zone"><span
														class="Select-arrow"></span></span>
												</div>
											</div>
											<div class="installments-message">- 할부는 신용카드만 가능합니다.
												(체크/법인카드 불가)</div>
										</dd>
									</dl>
								</div>
							</fieldset>
						</div>
						</section>

						<div class="form-group">
							<input type="submit" value="pay now">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	</section>

	<!-- Stat Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12">
				<div class="footer-widget">
					<h2>Edustar</h2>
					<div class="widget-content">
						<div class="text">Lorem ipsum dolor sit amet, consects
							adipiscing elit enean commodo ligula.</div>
						<address>
							<p>
								<i class="fa fa-map-marker"></i> kathmandu, nepal
							</p>
							<p>
								<i class="fa fa-phone"></i>+977-9856055360
							</p>
							<p>
								<i class="fa fa-envelope"></i> khnl.prem@gmail.com
							</p>
						</address>
					</div>
				</div>
			</div>

			<div class="col-md-5 col-sm-6 col-xs-12">
				<div class="footer-widget links-widget">
					<h2>Explore</h2>

					<div class="row">
						<div class="col-md-6 col-sm-6 col-sm-12">
							<ul>
								<li><a href="#">home</a></li>
								<li><a href="#">about</a></li>
								<li><a href="#">services</a></li>
								<li><a href="#">projects</a></li>
								<li><a href="#">contact</a></li>

							</ul>
						</div>
						<div class="col-md-6 col-sm-6 col-sm-12">
							<ul>
								<li><a href="#">News</a></li>
								<li><a href="#">Trade</a></li>
								<li><a href="#">Investment</a></li>
								<li><a href="#">projects</a></li>
								<li><a href="#">contact</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="footer-widget subscribe-widget">
					<h2>Newsletter</h2>
					<div class="widget-content">
						<div class="text">Lorem ipsum dolor sit amet, adipiscing</div>
						<div class="newsletter-form">
							<form>
								<div class="form-group">
									<input type="email" name="email" value=""
										placeholder="Email Address..." required>
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary button">
										subscribe now<span class="btn-shape"></span>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</footer>
	<!--Footer Bottom-->
	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="text text-left">
						Copyrights &copy; <a href="#">Khanalprem</a>. All Rights Reserved
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<ul class="social-links text-right">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li class="active"><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- scroll top -->
	<a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
	<!-- srolltop end -->


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/countdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	<script type="text/javascript"
		src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>

</html>