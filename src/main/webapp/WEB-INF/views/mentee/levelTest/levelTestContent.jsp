<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">

<head>
<!--meta tag start-->
<meta charset="utf-8">
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

</head>

<body>
	
	<section class="teacher-details-page inner-page">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="teacher-details">
					<form
						action="${pageContext.request.contextPath}/course/levelTest/result">
						<div class="course-tab-desc">


							<c:forEach var="problemList" items="${testProblemList}">
								<div class="title inner-page-title">
									<h3>${problemList.tpsContent}</h3>
								</div>
								<div>
									<input type="radio" name="${problemList.tpsCode}" value="1">${problemList.tpsExam1}<br>
									<input type="radio" name="${problemList.tpsCode}" value="2">${problemList.tpsExam2}<br>
									<input type="radio" name="${problemList.tpsCode}" value="3">${problemList.tpsExam3}<br>
									<input type="radio" name="${problemList.tpsCode}" value="4">${problemList.tpsExam4}<br>
								</div>
								<hr>
							</c:forEach>

						</div>
						<input type="submit">
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- Stat Footer -->

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
</body>

</html>