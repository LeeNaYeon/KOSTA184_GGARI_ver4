<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
   .gallery-nav {
       text-align: center;
       margin: 30px 0 40px;
       width: 100%;
   }
   
   .gallery-nav ul li {
       display: inline-block;
       margin-right: 15px;
       position: relative;
       padding: 8px 15px;
       font-size: 14px;
       -webkit-transition: all 0.3s ease;
       -moz-transition: all 0.3s ease;
       transition: all 0.3s ease;
       cursor: pointer;
       text-transform: capitalize;
       text-transform: uppercase;
       font-weight: 600;
       border: 1px solid #ccc;
   }
   
   .custom-select{
      margin:5px;
      font-size:15px;
   }

</style>

<body>
    
   <!-- 여기부터 수정 -->
   
   <section class="breadcrumb" style="background-image: url(${pageContext.request.contextPath}/resources/images/background/breadcrumb.jpg);">
        <div class="breadcrumb-overlay"></div>
        <div class="container">
            <h1><a href="courses.html">스터디</a></h1>
            <span><a href="index.html">Home</a></span><span><i class="fa fa-angle-right"></i>Courses</span>
        </div>
    </section>

   <div class="popular-course course-page">
        <div class="container">           
            <div class="pupular-course-inner clear">
                <div class="row">                     
                      <div class="gallery-nav">   
                      
                         <select class="custom-select" style="width:178px;">
                           <option class="selected">분류</option>
                            <optgroup label="스킬업단과">
                              <option value="건대">JAVA</option>
                              <option value="홍대">C</option>
                              <option value="종각">자료구조/알고리즘</option>
                              <option value="강남">DBMS</option>
                           </optgroup>
                           <optgroup label="웹/앱 개발">
                              <option value="백엔드 개발자">인천</option>
                              <option value="프론트엔드 개발자">부평</option>
                              <option value="안드로이드앱 개발자">수원역</option>
                              <option value="아이폰앱 개발자">영통역</option>
                           </optgroup>
                           <optgroup label="해킹/보안">
                              <option value="사이버해킹 보안">인천</option>
                              <option value="웹 해킹">부평</option>
                              <option value="시스템 해킹">수원역</option>
                              <option value="아이폰앱 개발자">영통역</option>
                           </optgroup>
                           <optgroup label="서버 네트워크">
                              <option value="리눅스 서버">인천</option>
                              <option value="네트워크 엔지니어">부평</option>
                           </optgroup>
                        </select>
      
                        <select class="custom-select" style="width:178px;">
                           <option class="selected">지역</option>
                            <optgroup label="서울">
                              <option value="건대">건대</option>
                              <option value="홍대">홍대</option>
                              <option value="종각">종각</option>
                              <option value="강남">강남</option>
                              <option value="신촌">신촌</option>
                              <option value="노원">노원</option>
                           </optgroup>
                           <optgroup label="수도권">
                              <option value="인천">인천</option>
                              <option value="부평">부평</option>
                              <option value="수원역">수원역</option>
                              <option value="영통역">영통역</option>
                              <option value="광교">광교</option>
                              <option value="분당">분당</option>
                              <option value="안양">안양</option>
                              <option value="일산">일산</option>
                           </optgroup>
                        </select>
                        
                        <select class="custom-select" style="width:178px;">
                           <option class="selected">레벨</option>                            
                              <option value="초급">인천</option>
                              <option value="중급">부평</option>
                              <option value="고급">수원역</option>
                        </select>
                        
                        <select class="custom-select" style="width:178px;">
                           <option class="selected">시간</option>                            
                              <option value="평일">인천</option>
                              <option value="주말">부평</option>
                        </select>
                        
                        <button type="submit" class="btn">검색하기</button>
                                                
                    </div>
                      
                      
      <h1>${mainCourseList[0].courseTitle}</h1>
                    <div class=" col-md-4 col-lg-4">
                        <div class="course-content">
                            <div class="course-img ">
                                <img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/course/2.jpg " alt="image" />
                            </div>
                            <div class="course-detail ">
                               <div style="text-align:center;">
                                  <div class="course-date" >                                   
                                       <span style="color:skyblue">6월 7일(목)</span>
                                       <span> 19:00~21:00 첫시작</span>
                                       <p style="color:#92B3B7"> 건대 | 초급</p>
                                   </div>
                                   
                                   <h3><a href="${pageContext.request.contextPath}/courseDetail" title="Details ">java 학습 노하우 가득한 Ray의 java시간 </a></h3>
                               </div>
                                
                                
                                
                                
                                <div class="course-icon">
                                    <img src="${pageContext.request.contextPath}/resources/images/users/2.jpg" class="img-responsive" alt="image">
                                </div>
                                <div class="course-bottom">
                                  <!--   <span><i class="fa fa-users"></i>365</span>
                                    <span><i class="fa fa-comment"></i>7</span> -->
                                    <span class="pull-right">188,000원</span>
                                    <span> 8주</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="page">
            <div class="container">
                <ul class="pagination">
                    <li class="disabled"><a href="#"><i class="fa fa-long-arrow-left"></i></a></li>
                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#"><i class="fa fa-long-arrow-right"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
   

</body>

</html>