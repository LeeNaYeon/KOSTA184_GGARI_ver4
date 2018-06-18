<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

   <style>
   
   #actions-widget .action-button {
       display: block;
       width: 100%;
       height: 56px;
       line-height: 56px;
       text-align: center;
       font-size: 11pt;
   }
   
   .fixed-width-wrap {
       width: 63pc;
       margin: 0 auto;
       overflow: hidden;
   }
   
   .level-mark {
       position: absolute;
       top: -54px;
       z-index: 1;
       width: 81pt;
       height: 81pt;
       overflow: hidden;
       text-align: center;
       background: skyblue;
       line-height: normal;
   }
   
   .label {
       margin-top: 26px;
       color: #ffeb3b;
       font-weight: 700;
       font-size: 1pc;
   }
   
   .level {
       margin-top: 3px;
       font-size: 2pc;
       color: #fff;
   }
   
   .area {
       display: inline-block;
       width: 100%;
       text-align: center;
       font-weight: 700;
       color: skyblue;
   }
   
   #product-header-images {
       position: relative;
       height: 360px;
   }
   
   #product-related-info {
       float: left;
       margin: 10px 0 60px 15px;
       width: 696px;
       overflow: hidden;
       background-color: #fff;
       border: 1px solid #e6e6e6;
   }
   
   #product-header-texts {
       position: relative;
       padding: 36px 30px;
   }
   
   #product-content-wrap {
       line-height: 1.75em;
       padding: 0 35px;
   }
   
   .section-wrap {
       overflow: hidden;
   }
   
   .section-label {
       float: left;
       clear: right;
       padding: 60px 0 3pc 9pt;
       width: 110px;
       font-size: 14pt;
       color: #333;
   }
   
   .section-content {
       float: right;
       padding: 60px 0;
       width: 455px;
   }
   
   .section-content1 {
       float: right;
       
   }
   
   .section-content {
       border-top: 1px solid #e6e6e6;
   }
   
   .product-detail {
       float: left;
       width: 430px;
   }
   
   .product-detail>dd {
       display: inline-block;
       width: 150px;
       margin : 0 0px 15px;
   }
   
   .product-detail>dt {
       display: inline-block;
       width: 100px;
       vertical-align: top;
       color: #787878;
   }
   
   .product-detail>dd.right-column {
       width: 90px;
   }
   
   .product-detail>dt.right-column {
       width: 50px;
   }
   
   .item {
       margin-left: 0;
   }
   
   .item-description {
       margin-left: 10px;
       font-size: 10pt;
       color: #777;
   }
   
   .participation-info {
       padding-left: 18px;
       background: transparent url(https://cdn.studysearch.co.kr/static/images/product/image_right_arrow.d5d4977d91e1.png)0 5px no-repeat;
       font-size: 9.5pt;
       color: #787878;
   }
   
   .date {
       color: #1fa2e2;
   }
   
   .leader-profile-image {
       display: block;
       margin: 35px auto 0;
       width: 95px;
       height: 95px;
       border-radius: 50%;
   }
   

   #review-count {
       font-size: 1pc;
       color: #333;
   }
   
   #reviews {
       clear: right;
       padding-left: 9pt;
   }
   
   #reviews>li {
       overflow: hidden;
   }
   
   li {
       display: list-item;
       text-align: -webkit-match-parent;
   }
   
   #review-info #reviews>li .writer-photo-wrap {
       padding: 24px 0;
   }
   
   .writer-photo {
       width: 76px;
       height: 76px;
       border-radius: 50%;
   }
   
   .writer-name {
       font-weight: 700;
       color: #333;
   }
   
   .review-content {
       font-size: 10pt;
       margin-bottom: 2px;
   }
   
   .review-product-title {
       display: block;
       font-size: 9pt;
       color: #ef6c00;
   }
   
   .review-written-at {
       display: block;
       margin-top: 10px;
       font-size: 9pt;
       color: #a0a0a0;
   }
   
   .heading {
       float: left;
       clear: right;
       width: 150px;
       padding-left: 9pt;
   }
   
   #review-info>header {
       overflow: hidden;
       padding: 60px 0 2pc;
   }
   
   .order-action-wrap {
       background: #fff;
       padding: 24px 9pt 9pt;
       width: 15pc;
       box-sizing: border-box;
       border: 1px solid #e6e6e6;
   }
   
   .title {
       margin: 0 9pt 35px;
       font-size: 13pt;
       color: #333;
       word-break: keep-all;
       line-height: 1.5em;
   }
   
   #participation-form {
       border-top: 1px solid #f2f2f2;
   }
   
   #participation-choices {
       padding: 24px 9pt;
   }
   
   .mock-radio {
       background: transparent url(https://cdn.studysearch.co.kr/static/images/purchase/item_radio_checked.1f99efef95e3.png)0 0 no-repeat;
   }
   
   .participation-choice-text {
       color: #787878;
       font-weight: 700;
   }
   
   #price-wrap {
       border-top: 1px solid #f2f2f2;
       overflow: hidden;
   }
   
   .amount-to-pay {
       clear: both;
       margin: 24px 9pt 0;
   }
   
   .price-text {
       font-size: 9pt;
       color: #a0a0a0;
   }
   
   .price-value {
       float: right;
       color: skyblue;
       font-size: 18pt;
       font-weight: 700;
   }
   
   #purchase-action-button {
       margin-top: 24px;
       background-color: #03a9f4;
       color: #fff;
       border: none;
   }
   
   #bookmark-action-button {
       border: 1px solid #dcdcdc;
       box-sizing: border-box;
       color: #777;
       margin: 0;
   }
   
   .icon {
       display: inline-block;
       margin: 0 9pt -3px 0;
       width: 20px;
       height: 18px;
       background: url(https://cdn.studysearch.co.kr/static/images/icon_asset.a370f4527c19.png)-4px -15pc no-repeat;
   }
   
   .icon.bookmarked {
       background-position: -4px -276px;
   }
   
   .fixed {
       position: fixed;
       top: 90px;
       left: 63.6%;
       margin-left: 15pc;
   }
   
   .bottom {
       position: absolute;
       bottom: 60px;
       right: 0;
   }
   
   </style>
   <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

   <script>

      $(function(){
    	  //advertise
    	  //footer
			var userVal = "";
			<sec:authorize access="isAuthenticated()"> 
				userVal = "<sec:authentication property='principal.userId' />";
			</sec:authorize> 
    	  
    	  //alert("userId2 :"+userId2); 
    	     	           
           $(window).scroll(function(){
	            var scrollT = $(this).scrollTop(); //스크롤바의 상단위치
	            var scrollH = $(this).height(); //스크롤바를 갖는 div의 높이
	            //console.log("scrollT"+scrollT);
	            //console.log("scrollH"+scrollH);
	            var endZone = $("#footer").offset().top-scrollH+500;
	                     
	            //console.log("endZone"+endZone);
	           // console.log("scrollT"+scrollT);
	
	            if (scrollT>600) {
	             	$('#advertise').attr('class','fixed');
	             } /*  else if (endZone<scrollT) {          	 
	             	$('#advertise').attr('class','bottom');
				 }  */ else{               
				 	$('#advertise').attr('class','');
	             }
         });    
         
         //찜하기 
          $("#bookmark-action-button").on("click",function(){
        	 
             //var id=$(this).val().trim();
           	var courseCode = $("#courseCode").val();
            var favVal = $("#favButtonVal").html();
            var mentoUserId = $("#mentoUserId").val();

        	if(favVal.match('찜하기')){
         		if(userVal.length==0){
        			alert("로그인을 해주세요");  
        			return false; 
	        	}  
         		if(userVal==mentoUserId){
    				alert("멘토입니다.");  
    				return false; 
        		}
         		       		
         		$.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/course/favInsert",            
                    data:"${_csrf.parameterName}=${_csrf.token}&&id="+userVal+"&&courseCode="+courseCode,	
                    success:function(data){                  
                       if(data=="ok"){
                    	   $("#favButtonIcon").attr('class','icon bookmarked');
                           $("#favButtonVal").html("찜 취소");                      		
                       }                           
                    }//callback         
                 });//ajax 
                
        	} else{
        	               
                 $.ajax({
                     type:"POST",
                     url:"${pageContext.request.contextPath}/course/favDelete",            
                     data:"${_csrf.parameterName}=${_csrf.token}&&id="+userVal+"&&courseCode="+courseCode,	
                     success:function(data){                  
                        if(data=="ok"){
                        	$("#favButtonIcon").attr('class','icon');
                            $("#favButtonVal").html("찜하기");                     		
                        }                           
                     }//callback         
                  });//ajax        		
        	} 
          });//onclick 
          
          //결재하기
           $("#purchase-action-button").on("click",function(){
        	  	var mentoUserId = $("#mentoUserId").val();
        	 
				if(userVal==mentoUserId){
    				alert("멘토입니다.");  
    				return false; 
        		}	    
				if(userVal.length==0){
        			alert("로그인을 해주세요");  
        			return false; 
	        	}   
				
				alert("결재하기 폼으로 이동예정");
				
				
          });//onclick         
          
      });
   </script>

   <!-- 여기부터 수정 -->
   
   <section class="breadcrumb" style="background-image: url(${pageContext.request.contextPath}/resources/images/background/breadcrumb.jpg);">
        <div class="breadcrumb-overlay"></div>
        <div class="container">
            <h1><a href="courses.html">스터디</a></h1>
            <span><a href="index.html">Home</a></span><span><i class="fa fa-angle-right"></i>Courses</span>
        </div>
    </section>

   <div class="fixed-width-wrap">
      <div id="product-related-info" style="box-shadow: 0 0 15px rgba(0, 0, 0, 0.10);">
         <header id="product-header">
            <div id="product-header-images" class="swiper-container-horizontal" >
               <img style="width: 696px; height: 360px"  src="${pageContext.request.contextPath}/resources/images/background/common.jpg">            
            </div>
            <div id="product-header-texts">
               <div class="level-mark">
                  <div class="label">LEVEL</div>
                  <div class="level">${courseDTO.courseLevel}</div>
                  <input type="hidden" value="${courseDTO.courseCode }" id="courseCode">
               </div>
               <span class="area">${courseDTO.courseLoc}</span>
               <h1 style="text-align:center;">
                  ${courseDTO.courseTitle}
               </h1>
            </div><hr style="margin:0">
         </header>

         <div id="product-content-wrap">
            <section id="product-information">
               <div id="product-description" class="section-wrap">
                  <h1 class="section-label">스터디<br>소개</h1>
                  <div class="section-content" style="border-top-width: 0px;">
                  
                  	${courseDTO.courseDetail}
                	
                  </div>
               </div>
               
               <c:set var="start" scope="session" value="${courseDTO.courseStartDate}" />
               <c:set var="end" scope="session" value="${courseDTO.courseEndDate}" />
               <%
                  String end = ((String) session.getAttribute("end")).substring(0, 10);
                  String start = ((String) session.getAttribute("start")).substring(0, 10);

                  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

                  Date d1 = formatter.parse(end);
                  Date d2 = formatter.parse(start);

                  long difference = d1.getTime() - d2.getTime();

                  long differenceDay = difference / (1000 * 60 * 60 * 24 * 7 ) / 4;
                  long differenceDay1 = difference / (1000 * 60 * 60 * 24 * 7 );

                  int result = (int) Math.ceil(differenceDay);
                  int result1 = (int) Math.ceil(differenceDay1);
               %>
               <c:set var="datePerid" scope="session" value="${courseDTO.courseRecruitPerid}" />
               <%
                  String dateYear = ((String) session.getAttribute("datePerid")).substring(2, 4);
               	  String dateMonth = ((String) session.getAttribute("datePerid")).substring(4, 6);
               	  String dateDay = ((String) session.getAttribute("datePerid")).substring(6, 8);
               %>
               <c:set var="startTime" scope="session" value="${courseDTO.courseStartTime}" />
               <%
                  String startHour = ((String) session.getAttribute("startTime")).substring(0, 2);
               	  String startMinute = ((String) session.getAttribute("startTime")).substring(2, 4);
               %>
               <c:set var="endTime" scope="session" value="${courseDTO.courseEndTime}" />
               <%
                  String endHour = ((String) session.getAttribute("endTime")).substring(0, 2);
               	  String endMinute = ((String) session.getAttribute("endTime")).substring(2, 4);
               %>
               <c:set var="startDate" scope="session" value="${courseDTO.courseStartDate}" />
               <%
                  String startMonth = ((String) session.getAttribute("startDate")).substring(5, 7);
               	  String startDay = ((String) session.getAttribute("startDate")).substring(8, 10);              	  
               	  String day = "" ;
                
                  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd") ;
                  Date nDate = dateFormat.parse((String) session.getAttribute("startDate")) ;            
                  Calendar cal = Calendar.getInstance() ;
                  cal.setTime(nDate);
                 
                  int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;                                                
                  switch(dayNum){
					case 1:
					    day = "일";
					    break ;
					case 2:
					    day = "월";
					    break ;
					case 3:
					    day = "화";
					    break ;
					case 4:
					    day = "수";
					    break ;
					case 5:
					    day = "목";
					    break ;
					case 6:
					    day = "금";
					    break ;
					case 7:
					    day = "토";
					    break ;                         
                   }
               %>
			   <c:set var="courseUrl" scope="session" value="${courseDTO.courseUrl}" />
               <%
                  String courseUrl = (String) session.getAttribute("courseUrl");
               	  if(courseUrl==null){
               		courseUrl="URL이 없습니다.";
               	  }
               %>
               <div id="product-detail" class="section-wrap">
                  <h2 class="section-label">상세 정보</h2>
                  <div class="section-content">
                     <dl id="detail-list" class="product-detail">
                        <dt>모집기간:</dt>
                        <dd><%=dateYear%>년 <%=dateMonth%>월 <%=dateDay%>일까지</dd>
                        <dt class="right-column">인원:</dt>
                        <dd class="right-column">${courseDTO.courseRecruitMax}명</dd>
                        <dt>일정:</dt>
                        <dd><%=result%>개월, 주 ${courseDTO.courseFrequency}회</dd>
                        <dt class="right-column">지역:</dt>
                        <dd class="right-column">${courseDTO.courseLoc}</dd>
                        <dt style="width: 150px;">오픈카톡방URL:</dt>
                        <dd style="width: 270px;">&nbsp<%=courseUrl%></dd>
                        <dt>시간:</dt>
                        <dd class="item" style="width: 320px;">
                           <span class="item-name">
                              <c:forEach items="${courseDayList}" var="list">	                              
	                              <c:forEach items="${list.courseDateDTO}" var="courseDay">
	                              		(${courseDay.day})
	                              </c:forEach>                          
                              </c:forEach>
                           </span> <span class="item-description"><%=startHour%>:<%=startMinute%> - <%=endHour%>:<%=endMinute%></span>
                           <div class="participation-info">
                              <!-- react-text: 2437 -->
                              지금 신청하면
                              <!-- /react-text -->
                              <span class="date"><%=startMonth%>월 <%=startDay%>일 (<%=day%>)</span>
                              <!-- react-text: 2439 -->
                              첫 스터디 시작!
                              <!-- /react-text -->
                           </div>
                        </dd>
                     </dl>
                  </div>
               </div>
            </section>

            <section id="leader-information">
               <div class="section-wrap">
                  <header class="section-label">
                     <h1 style="font-size: 14pt;">리더 소개</h1>
                     <img src="https://cdn.studysearch.co.kr/images/users/65235/profile/1518656373" class="leader-profile-image">
                  	////////${courseDTO.mentoDTO.menteeDTO.userPhoto}
                  
                  </header>
                  <div class="section-content">
                     <span class="leader-greeting"> </span> <br>
                     <div class="leader-introduction">
                        ${courseDTO.mentoDTO.mentoDesc}
                     </div>
                  </div>
               </div>
            </section><hr style="margin:0">
            

			<c:if test="${!empty courseReviewList}">
	            <section id="review-info" class="section-content1">
	               <header>
	                  <h1 id="review-count" class="heading">리더에 대한 후기</h1>
	               </header>
	               <ul id="reviews">
	                  
	                  <c:forEach items="${courseReviewList}" var="memtoReputation">
		                  <c:forEach items="${memtoReputation.courseDTO}" var="course">
		                   	  <c:forEach items="${course.menteeListDTO}" var="mentee">	
	
				                  <li class="review"><a name="review-5681"></a>
				                  	 <div class="heading writer-photo-wrap">
				                        <div class="writer-photo"
				                           style="display: inline-block; 
				                           background-image: url(&quot;https://cdn.studysearch.co.kr/images/users/106906/profile/1518666770&quot;); 
				                           background-size: cover; background-position: 50% 50%; float: left;">
				                        </div>
				                     		<!-- ${mentee.userPhoto}  -->
				                     </div>
				                     <div class="review-content-wrap trailing" style="margin: 0 0 20px;">
				                        <span class="writer-name">${mentee.userName}</span>
				                        <p class="review-content">${memtoReputation.repContent}</p>
				                        <span class="review-written-at">		                        
				                         	${memtoReputation.repDate}                
				                        </span>
				                     </div>
				                  </li><hr style="margin:0 0 20px 0 "> 
				                  
		                  	  </c:forEach>  
		                  </c:forEach>
	                  </c:forEach>
	                               
	               </ul>
	            </section>
            </c:if>
         </div>
      </div>

      <aside id="actions-widget" class="" style="float:left; margin:10px ">
         <div class="order-action-wrap" style="box-shadow: 0 0 15px rgba(0, 0, 0, 0.10);">
            <h1 class="title">${courseDTO.courseTitle}</h1>
            <form id="participation-form" style="margin:0 0 5px 0">
               <ul id="participation-choices">
                  <li><!-- <input type="radio" id="full-participation-choice" class="participation-choice-button" name="trial" value="N"> -->
                     <label for="full-participation-choice">
                     <!--    <span class="mock-radio">  -->
                        	<img style="width: 32px; height: 32px;" src="${pageContext.request.contextPath }/resources/images/course/check.png" class="img-responsive img-circle">                                                                                           
        				<!-- </span> -->
                        <span class="participation-choice-text">&nbsp&nbsp&nbsp<%=result1%>주</span>
                     </label>
                  </li>
               </ul>
               <div id="price-wrap">
                  <div class="amount-to-pay">
                     <span class="price-text">참가비</span><span class="price-value">
                        <fmt:formatNumber value="${courseDTO.coursePrice}" pattern="#,###.##"/>
                        원
                     </span>
                  </div>
               </div> 
               
               <c:choose>
               		<c:when test="${!empty coursePay}">
               		 	<input type="submit" id="purchase-action-button" class="action-button" style="width:100%; line-height:45px; background-color:gray;" value="결재 완료" disabled >           	
               		</c:when>
<%--                		<sec:authorize access="isAuthenticated()">
               		<c:when test="${courseDTO.userId} eq <sec:authentication property="principal.userId" />">
               			<input type="submit" id="purchase-action-button" class="action-button" style="width:100%; line-height:45px;  background-color:gray;" value="참여 신청하기" disabled >                           
               		</c:when>
               		</sec:authorize> --%>
               		<c:otherwise>
               			<input type="submit" id="purchase-action-button" class="action-button" style="width:100%; line-height:45px" value="참여 신청하기" >            
               		</c:otherwise>
               </c:choose>
               <input type="hidden" value="${courseDTO.userId }" id="mentoUserId">
               <!-- courseCode도? -->
            </form>

            <c:choose>
	            <c:when test="${empty courseFav}">
	            <a href="#" id="bookmark-action-button" class="action-button" >
	               <span class="icon" id="favButtonIcon"></span>
	               <span id="favButtonVal">찜하기</span>
	            </a> 
	            </c:when>
	            <c:otherwise>
	            <a href="#" id="bookmark-action-button" class="action-button" >
	               <span class="icon bookmarked" id="favButtonIcon"></span>
	               <span id="favButtonVal">찜 취소</span>
	            </a>
	            </c:otherwise>
            </c:choose>

         </div>
      </aside>

      <aside id="advertise" class="" style="float:left; margin:0 0 0 10px">
         <div class="order-action-wrap" style="box-shadow: 0 0 15px rgba(0, 0, 0, 0.10);">            
            <img style="width: 248px; height: 500px;" src="${pageContext.request.contextPath }/resources/images/men.png" class="img-responsive img-circle">                                                                                           
         </div>
      </aside>

   </div>



</body>

</html>