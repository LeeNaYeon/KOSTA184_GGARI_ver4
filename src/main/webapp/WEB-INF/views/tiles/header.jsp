<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
    <title>PostIT</title>

    <!-- faveicon start   -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">

    <!-- stylesheet start -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<style>

	#tophead-link{background-color: skyblue}
	
	input[type="text"]{
       text-transform:none;
    }
    
    .top-header {
    background: skyblue;
    padding: 10px 0;
    clear: both;
}
	
</style>
<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>

<body>
<!--

<c:choose>
	<c:when test="${not empty pageContext.request.userPrincipal}"><p>
	
	<form action="${pageContext.request.contextPath}/j_spring_security_logout" method="get">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<input type="submit" value="로그아웃">
	</form>
	
	</c:when>
	
	<c:otherwise>
		<li>
		<a href="${pageContext.request.contextPath}/loginForm"><i class="fa fa-lock" aria-hidden="true"></i> 로그인</a>
        </li>
	</c:otherwise>
</c:choose>-->


<%-- <sec:authorize access="isAuthenticated()">
			<li><a href="javascript:logout();">로그아웃</a></li>
		</sec:authorize>
 --%>



    <header>
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <ul class="tophead-link" >
                            <li><a href="about.html"><i > Welcome to PostIT center!</i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7 tophead-right">
                        <ul class="tophead-link">
                            <c:choose>
								<c:when test="${not empty pageContext.request.userPrincipal}">
								 <li>
		                            <a href="#"> 알림</a>
		                         </li>
								
								<li><a href="javascript:logout();"><i class="fa fa-lock" aria-hidden="true"></i>로그아웃</a></li>
								<li>
									 <a href="#"><!-- <i class="fa fa-key" aria-hidden="true"></i> -->
									 	<sec:authorize access="isAuthenticated()">
											<sec:authentication property="principal.userName" />님 MyPage 
											<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
										</sec:authorize>
									 </a>
								 </li>                           
								</c:when>
								
								
								<c:otherwise>
									<li>
									<a href="${pageContext.request.contextPath}/loginForm"><i class="fa fa-lock" aria-hidden="true"></i> 로그인</a>
							        </li>
							        
							        <li>
		                            <a href="${pageContext.request.contextPath}/join"><i class="fa fa-key" aria-hidden="true"></i> 회원가입</a>
		                            </li>
		                            
		                           
								</c:otherwise>
							</c:choose>
                            
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <!-- Start Navigation -->
        <div id="masthead" class="site-header menu" style="padding-top: 2px; padding-bottom: 1px">
            <div class="container">
                <div class="site-branding">
                    <div id="site-identity" style="padding-top: 10px">
                        <a href="index" class="logo"><img src="${pageContext.request.contextPath}/resources/images/postitlogo.PNG" alt="logo"></a>
                    </div>
                    <!-- #site-identity -->
                </div>
                <!-- .site-branding -->
                <div class="header-nav-search">
                    
                    <div class="toggle-button">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div id="main-navigation">
                        <nav class="main-navigation" style="padding-top: 30px">
                            <div class="close-icon">
                                <i class="fa fa-close"></i>
                            </div>
                            <ul class="test">
                                <li class="current-menu-item "><a href="index">Home</a></li>
                                <li><a href="#">About</a> </li>
                                <li><a href="#">Notice</a> </li>
                                <li class="menu-item-has-children"><a href="#">courses</a>
                                    <ul>
                                        <li><a href="course">Courses</a></li>
                                        <li><a href="${pageContext.request.contextPath}/course/detail">Course details</a></li>
                                    </ul>
                                </li>
                              	<li><a href="#">Q&A</a></li>
                                <li><a href="#">Contact</a></li>
                                
        <!-- 검색기능 추가 -->                        
                   <div class="header-search">
                        <i class="fa fa-search top-search"></i>
                        <div class="search-popup" style="padding-top: 2px">
                            <%-- <form role=search action="${pageContext.request.contextPath}/search" class="search-wrapper"> --%>
                            <form action="${pageContext.request.contextPath}/search" class="search-wrapper">
                                <div>
                                    <input type="text" name="search" id="courseSearch" placeholder="강사 or 강좌이름으로 검색해주세요.">
                                    <input type="submit" name="button" class="pop-search" value="검색">
                                </div>
                            </form>
                            <div class="search-overlay"></div>
                        </div>
                    </div>
                                
                                
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Navigation -->
        
        		<!-- 
로그아웃은 스프링시큐리티 4 부터는 로그아웃시 POST 방식으로 이동하며 /logout url로 요청한다. (따로 정의하지 않으면)
그리고 _csrf 를 요청파라미터로 보내야 한다.
 -->
	<form id="logoutForm" action="${pageContext.request.contextPath}/member/logout" method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
        
    </header>


