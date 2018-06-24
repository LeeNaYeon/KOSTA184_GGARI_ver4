<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

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
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">

    <!-- stylesheet start -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <style type="text/css">
    
    .title h3::after {
    background: transparent none repeat scroll 0 0;
    bottom: -15px;
    content: "";
    height: 2px;
    left: 0;
    position: absolute;
    width: 50px;
}
    
    
    </style>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

</script>
</head>


<body>
    
   	<section class="blog-page inner-page">
        <div class="container">
            <div class="blog-page-inner clear">
                <div class="row">
                <div class="col-md-4">
                    <div class="title inner-page-title">
				       <h3 class="appImage" style="font-size: 20px"><img alt="appImage" src="${pageContext.request.contextPath}/resources/images/admin/appImage.png">멘토신청자 명단</h3>
				    </div>                    
                </div>
                
                    <div class="col-md-8">
                    
                        	<!-- 관리자 멘토신청자 명단 리스트 화면 -->
                        	
                            <div style="margin-top: .5em">
				            <div class="table-responsive" style="text-align: center;">
				                <table class="table">
				                    <tbody>
				                        <tr bgcolor="gray"; style="color: white;">
				                        	
				                            <th style="width: 100px; height: 10px">이름</th>
				                            <th style="width: 100px; height: 10px">아이디</th>
				                            <th style="width: 100px; height: 10px">주력분야</th>
				                            <th style="width: 100px; height: 10px">이력서</th>
				                            <th style="width: 100px; height: 10px">상태</th>
				                            <th style="width: 50px; height: 10px"></th>
				                        </tr>
				             			<c:forEach items="${selectApplicantList}" var="applicantDTO">
					                        <tr>
					                    		
					                            <td><span>${applicantDTO.menteeDTO.userName}</span></td>
					                            <td><span>${applicantDTO.userId}</span></td>
					                            <td>
					                            	<span>${applicantDTO.applicantMajor}</span>
					                            	<span>${applicantDTO.applicantMajor2}</span>
					                            	<span>${applicantDTO.applicantMajor3}</span>
					                            </td>
					                            <td><span>${applicantDTO.applicantResume}</span></td>
					                            <form action="${pageContext.request.contextPath}/admin/changeStatus" id="changeStatusForm">
					                            <td>
					                            	<input type="text" value="${applicantDTO.applicantStatus}">
					                            	
					                            	<select style="border-radius: 5px" id="selectBoxStatus" name="selectBox">
					                            		<option class="selected">상태</option>
					                            		<option id="0" value="서류심사중">서류심사중</option>
					                            		<option id="1" value="면접심사중">면접심사중</option>
					                            		<option id="2" value="멘토승인완료">멘토승인완료</option>
					                            		<option id="3" value="거절">거절</option>
					                            	</select>
					                            	
					                            </td>
					                            <td>
					                            	<button type="submit" class="btn" id="changeStatus" style="background-color: gray">확인</button>
					                            </td>
					                            
					                            <!-- <input type="hidden" name="selectBoxStatus" value=""> -->
					                            <input type="hidden" name="userId" value="${applicantDTO.userId}">
					                            </form>
					                        </tr>
				                      </c:forEach>
				                    </tbody>
				                </table>
				                
				            </div>
				        </div>
				        
				         
                    </div>
                  
                </div>
            </div>
        </div>
       
    </section>
    <!-- scroll top -->
    <a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
    <!-- srolltop end -->

    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/countdown.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</body>

</html>