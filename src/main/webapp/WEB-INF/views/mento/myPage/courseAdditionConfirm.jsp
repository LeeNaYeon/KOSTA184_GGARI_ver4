<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="breadcrumb"
		style="background-image: url(${pageContext.request.contextPath}/resources/images/background/breadcrumb.jpg);">
	<div class="breadcrumb-overlay"></div>
	<div class="container">
		<h1>
			<a href="#">Course</a>
		</h1>
		<span><a href="#">course</a></span><span><i
			class="fa fa-angle-right"></i>Level Test Result</span>
	</div>
	</section>

	<section class="teacher-details-page inner-page">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="teacher-details">
					
						<div class="course-tab-desc">

							강좌 개설에 성공하였습니다 !! 

						</div>
						<a href="${pageContext.request.contextPath}/">메인으로 가기</a>
				</div>
			</div>
		</div>
	</div>
	</section>


</body>
</html>