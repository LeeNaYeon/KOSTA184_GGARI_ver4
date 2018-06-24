<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<section class="breadcrumb"
	style="background-image: url(${pageContext.request.contextPath}/resources/images/background/breadcrumb.jpg);">
	<div class="breadcrumb-overlay"></div>
	<div class="container">
		<h1>
			<a href="courses.html">My Page</a>
		</h1>
		<span><a href="index.html">My Page</a></span><span><i
			class="fa fa-angle-right"></i>Main</span>
	</div>
</section>

<section id="gallery">
	<div class="container">
		<div class="col-md-12">
			<div class="row">
				<!-- gallery Nav -->
				<div class="gallery-nav">
					<ul>
						<li class="filter" data-filter="all"><a href="${pageContext.request.contextPath}/myPage/study/select">내 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">찜한 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">완료된 스터디</a></li>
						<li class="filter" data-filter="all"><a
							href="${pageContext.request.contextPath}/myPage/profile/updateForm">프로필 수정</a></li>
 						<sec:authorize access="hasRole('ROLE_MENTO')">
						<li class="filter"><a href="${pageContext.request.contextPath}/myPage/studyInsert/insertForm">스터디
									만들기</a></li>
						</sec:authorize>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>