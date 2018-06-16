<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@page import="org.springframework.security.core.context.SecurityContextImpl"%>
<%@page import="java.util.Enumeration"%>

   <style>


	#leveltest{float: left; margin-left: 200px;}
	#leveltestImg{float: right; margin-right: 110px; }
	
	.edu-counter-overlay2 {
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    position: absolute;
    background-color: skyblue;
    }
    
    .testimonial-overlay2 {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background-color: grey;
	}
	
	.testimonial2 .sec-title h2,
	.testimonial2 .sec-title p {
	    color: #ffffff;
	}

</style>

<%-- <sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal.userName" /> 님 환영합니다. 
		<!-- Authentication의 getPrincipal().getName() -> Principal은 Provider에서 Authentication 에 넣어준 VO(생성자 첫 매개변수) -->
	</sec:authorize>
        --%>
       <!-- banner slider -->
    <div class="banner-slider">
        <div class="main-slider owl-carousel owl-theme">
            <div class="slider-items" style="background-image:url(${pageContext.request.contextPath}/resources/images/slider/main.jpg); height=">
                <div class="slider-overlay"></div>
                <div class="slider-content">
                    <div class="carousel-caption caption-center">
                        <div class="content">
                            <h2>Let's code together</h2>
                            <p>문구 들어갈 자리 입니다. 같이 정해보아요^^  </p>
                            <a  href="#" class="btn btn-primary">더 알아보기</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider-items" style="background-image:url(${pageContext.request.contextPath}/resources/images/slider/main2.jpg);">
                <div class="slider-overlay"></div>
                <div class="slider-content">
                    <div class="carousel-caption caption-center">
                        <div class="content">
                            <h2>Let's code together</h2>
                            <p>문구 들어갈 자리 입니다. 같이 정해보아요^^</p>
                            <a  href="#" class="btn btn-primary">더 알아보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
   
    <section class="popular-course section grey-background">
        <div class="container">
            <div class="title sec-title">
                <h2>추천 강좌</h2>
                <p>문구가 들어갈 자리입니다. 문구가 들어갈 자리입니다. 문구가 들어갈 자리입니다. 문구가 들어갈 자리입니다. 문구가 들어갈 자리입니다. 문구가 들어갈 자리입니다.  </p>
                <p><a href="#">전체강좌 보러가기</a></p>
            </div>
            
            <div class="pupular-course-inner">
                <div class="course-carousel owl-carousel owl-theme">
                    <div class="course-item">
                        <div class="course-img ">
                            <img class="${pageContext.request.contextPath}/resources/img-responsive " src="${pageContext.request.contextPath}/resources/images/course/1.jpg " alt="image" />
                        </div>
                        <div class="course-detail ">
                            <div class="course-date">
                                <p>December 17, 2017</p>
                            </div>
                            <h3><a href="courses.html " title="Details ">Aeronautical Engineering </a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt mauris id tortor iaculis, ut mollis mi sagittis.</p>
                            <div class="course-icon">
                                <img src="${pageContext.request.contextPath}/resources/images/users/1.jpg" class="img-responsive" alt="image">
                            </div>
                            <div class="course-bottom">
                                <span><i class="fa fa-users"></i>365</span>
                                <span><i class="fa fa-comment"></i>7</span>
                                <span class="pull-right">$60.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="course-item">

                        <div class="course-img ">
                            <img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/course/2.jpg " alt="image" />
                        </div>
                        <div class="course-detail ">
                            <div class="course-date">
                                <p>December 17, 2017</p>
                            </div>
                            <h3><a href=" courses.html" title="Details ">Complet Guied of Business</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt mauris id tortor iaculis, ut mollis mi sagittis.</p>
                            <div class="course-icon">
                                <img src="${pageContext.request.contextPath}/resources/images/users/2.jpg" class="img-responsive" alt="image">
                            </div>
                            <div class="course-bottom">
                                <span><i class="fa fa-users"></i>365</span>
                                <span><i class="fa fa-comment"></i>7</span>
                                <span class="pull-right free">free</span>
                            </div>
                        </div>
                    </div>
                    <div class="course-item">

                        <div class="course-img ">
                            <img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/course/3.jpg " alt="image" />
                        </div>
                        <div class="course-detail ">
                            <div class="course-date">
                                <p>December 17, 2017</p>
                            </div>
                            <h3><a href="courses.html" title="Details ">Learning Ui&Ux Design </a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt mauris id tortor iaculis, ut mollis mi sagittis.</p>
                            <div class="course-icon">
                                <img src="${pageContext.request.contextPath}/resources/images/users/1.jpg" class="img-responsive" alt="image">
                            </div>
                            <div class="course-bottom">
                                <span><i class="fa fa-users"></i>365</span>
                                <span><i class="fa fa-comment"></i>7</span>
                                <span class="pull-right">$60.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="course-item">
                        <div class="course-img ">
                            <img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/course/1.jpg " alt="image" />
                        </div>
                        <div class="course-detail ">
                            <div class="course-date">
                                <p>December 17, 2017</p>
                            </div>
                            <h3><a href="courses.html " title="Details ">computer and  IT courses. </a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt mauris id tortor iaculis, ut mollis mi sagittis.</p>
                            <div class="course-icon">
                                <img src="${pageContext.request.contextPath}/resources/images/users/1.jpg" class="img-responsive" alt="image">
                            </div>
                            <div class="course-bottom">
                                <span><i class="fa fa-users"></i>365</span>
                                <span><i class="fa fa-comment"></i>7</span>
                                <span class="pull-right">$60.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="lecture section grey-background pdb0">
        <div class="title sec-title" id="leveltest">
            <h2>레벨 테스트부터 시작해보세요</h2>
            <p>내 레벨을 파악하고 꼭 맞는 스터디를 안내받으세요!</p>
            <p>1분 정도 소요됩니다.</p>
            <div class="lecture-btn">
                <a href="teacher.html" class="btn">레벨테스트 시작하기</a>
            </div>
        </div>
        <div class="title sec-title" id="leveltestImg">
        	<img src="${pageContext.request.contextPath}/resources/images/levelTest.PNG" class="img-responsive" alt="image">
        </div>
        <div class="lecture-bg">
            <img src="${pageContext.request.contextPath}/resources/images/background/backgroundimg2.png" class="img-responsive" alt="image">
        </div>
    </section>
    

    
    <!--edu-counter-->
    <section class="edu-counter section" >
        <div class="edu-counter-overlay2"></div>
        <div class="container ">
            <div class="row clearfix ">
                <!--Column-->
                <div class="col-md-3 col-sm-6 ">
                    <div class="counter-area ">
                        <h2 class="counter ">9300</h2>
                        <h3>누적 멘티 수</h3>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 ">
                    <div class="counter-area ">
                        <h2 class="counter ">10111</h2>
                        <h3>누적 멘토 수</h3>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 ">
                    <div class="counter-area ">
                        <h2 class="counter ">9575</h2>
                        <h3>누적 스터디 수</h3>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 ">
                    <div class="counter-area ">
                        <h2 class="counter ">7864</h2>
                        <h3>리뷰 수</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- counter end -->
    <!-- testimonial -->
    <section class="testimonial section" style="background: url(${pageContext.request.contextPath}/resources/images/background/common.jpg) no-repeat;">
        <div class="testimonial-overlay2"></div>
        <div class="container">
            <div class="title sec-title">
                <h2>수강생 강사 리뷰</h2>
                <p>강사 리뷰가 들어가면 좋을 것 같아서 일단 놔뒀어요.</p>
            </div>
            <div class="testimonial-inner">
                <div class="testimonial-carousel owl-carousel owl-theme">
                    <div class="testimonial-item">
                        <div class="testi-img">
                            <img src="${pageContext.request.contextPath}/resources/images/users/1.jpg" alt="">
                        </div>
                        <div class="testi-content">
                            <h4><a href="#">John deon</a></h4>
                            <span>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                            </span>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testi-img">
                            <img src="${pageContext.request.contextPath}/resources/images/users/2.jpg" alt="">
                        </div>
                        <div class="testi-content">
                            <h4><a href="#">khanal prem</a></h4>
                            <span>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                            </span>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testi-img">
                            <img src="${pageContext.request.contextPath}/resources/images/users/1.jpg" alt="">
                        </div>
                        <div class="testi-content">
                            <h4><a href="#">dahal dipen</a></h4>
                            <span>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                            </span>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testi-img">
                            <img src="${pageContext.request.contextPath}/resources/images/users/2.jpg" alt="">
                        </div>
                        <div class="testi-content">
                            <h4><a href="#">anjel sharma</a></h4>
                            <span>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <!-- testimonial end -->
