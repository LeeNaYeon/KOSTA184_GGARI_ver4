<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<style>
.radius-test {
	width: 200px;
	height: 200px;
	background-color: #777;
	line-height: 20px;
	color: #ffffff;
	text-align
}

.form-join {
	margin-bottom: 10px;
}

.form-fav {
	padding: 10px 10px 10px 10px;
	width: 50%;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	width: 100%;
	max-width: 100%;
}

.filebox input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var sel_file;
	$(document).ready(function() {
		$("#input_img").on("change", handleImgFileSelect);
	});
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});

	}
</script>
</head>
<body>

	
	<section id="gallery">
	<div class="container">
		<div class="col-md-12">
			<div class="row">
				<!-- gallery Nav -->
				<div class="gallery-nav">
					<ul>
						<li class="filter" data-filter="all"><a href="#">내 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">찜한 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">완료된 스터디</a></li>
						<li class="filter" data-filter="all"><a
							href="${pageContext.request.contextPath}/myPage/profile/updateForm">프로필
								수정</a></li>
						<li class="filter"><a
							href="${pageContext.request.contextPath}/myPage/studyInsert/insertForm">스터디
								만들기</a></li>
					</ul>
				</div>
				<!--/ End gallery Nav -->

				<div class="login-form">
					<div class="col-md-12 col-sm-12 col-xs-12">

						<div class="navbar-brand">
							<img
								src="${pageContext.request.contextPath}/resources/images/logo.png"
								class="img-responsive" alt="">
						</div>
						<label><h3>회원정보수정</h3></label>
					</div>



					<form name="writeForm" method="post"
						action="${pageContext.request.contextPath}/myPage/userUpdateResult?${_csrf.parameterName}=${_csrf.token}"
						onSubmit='return checkValid()' enctype="multipart/form-data">


						<div class="form-group">
							<div>
								<p class="title">
									프로필 이미지 사진 업로드/p> <input type="file" id="input_img" name="file" />
							</div>

							<div>
								<div class="img_wrap">
									<img id="img" />
								</div>
							</div>
						</div>
						<div class="form-group">
							이름<br> <input type="text" disabled="disabled"
								value="${memberInfo.userName}"> <input type="hidden"
								value="${memberInfo.userName}" name="userName">
						</div>
						<div class="form-group">
							아이디<br> <input type="text" disabled="disabled"
								value="${memberInfo.userId}"> <input type="hidden"
								value="${memberInfo.userId}" name="userId">
						</div>
						<div class="form-group">
							(*)연락처<br> <input type="text"
								placeholder="${memberInfo.userPhone}" name="userPhone">
						</div>
						<div class="form-group">
							(*)이메일<br> <input type="text"
								placeholder="${memberInfo.userEmail}" name="userEmail">
						</div>

						<div class="form-join">
							<div style="font-size: 1.2em;">
								<strong>관심분야</strong>
							</div>

							<div class="form-fav" style="float: left">
								<div style="font-size: 1.1em; width: 50%;">스킬업단과</div>

								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="U001"
										name="classification"> Java
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="U002"
										name="classification"> C
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="U003"
										name="classification"> 자료구조/알고리즘
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="U004"
										name="classification"> DBMS
									</label>
								</div>
							</div>

							<div class="form-fav" style="float: left">
								<div style="font-size: 1.1em; width: 50%;">웹/앱개발자</div>

								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="W001"
										name="classification"> 백엔드 개발자
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="W002"
										name="classification"> 프론트엔드 개발자
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="W003"
										name="classification"> 안드로이드앱 개발자
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="W004"
										name="classification"> 아이폰앱 개발자
									</label>
								</div>
							</div>

							<div class="form-fav" style="float: right">
								<div style="font-size: 1.1em;">해킹/보안</div>

								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="H001"
										name="classification"> 사이버해킹 보안
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="H002"
										name="classification"> 웹 해킹
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="H003"
										name="classification"> 시스템 해킹
									</label>
								</div>
							</div>

							<div class="form-fav" style="float: left">
								<div style="font-size: 1.1em;">서버 네트워크</div>

								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="S001"
										name="classification"> 리눅스 서버
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="S002"
										name="classification"> 네트워크 엔지니어
									</label>
								</div>

							</div>


						</div>
						<sec:authorize access="hasRole('ROLE_MENTO')">
							<div class="form-group">
								introduce yourself<br>
								<textarea rows="100" name="description" cols="50"
									style="height: 300px"
									placeholder="   강사소개말을 입력해 주십시오. 수강생들이 보는 강사에 대한 첫 인상이기 때문에 무엇보다도 중요할 수 있습니다. 그러니 조금이라도 신경을 써 주신다면 감사하겠습니다. 항상, 최선을 다 하는 postIT이 되겠습니다."></textarea>
							</div>
						</sec:authorize>
						<div>&nbsp</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<button type="submit" class="login-btn btn">Register now</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>


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
		src=${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/bootstrap.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/jquery.mixitup.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/waypoints.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js></script>
	<script
		src=${pageContext.request.contextPath}/resources/js/owl.carousel.min.js></script>
	<!-- <script src=js/countdown.js></script> -->
	<script src=${pageContext.request.contextPath}/resources/js/script.js></script>

</body>
</html>