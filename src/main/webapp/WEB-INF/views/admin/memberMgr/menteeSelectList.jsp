<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

   	<section class="blog-page inner-page">
        <div class="container">
            <div class="blog-page-inner clear">
                <div class="row">
                <div class="col-md-4">
                  <div class="sidebar">
                   <div class="sidebar-widget category-widget">
                    <div class="title inner-page-title">
				       <h3 style="font-size: 20px">회원명단</h3>
				    </div>
				    <ul>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/mentoSelectList">멘토</a>
                      </li>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/menteeSelectList">멘티</a>
                      </li>
                    </ul>                    
                	</div>
                  </div>
                </div>
                    <div class="col-md-8">
                    	<div><h3  class="menteeImage" style="font-size: 20px"><img alt="menteeImage" src="${pageContext.request.contextPath}/resources/images/menteeImage.png";>멘티회원</h3></div>
                        	<!-- 관리자 멘토신청자 명단 리스트 화면 -->
                            <div style="margin-top: .5em;">
				            <div class="table-responsive" style="text-align: center;">
				                <table class="table">
				                    <tbody>
				                        <tr bgcolor="lightGrey"; style="color: white">
				                        	<th>순번</th>
				                            <th>이름</th>
				                            <th>아이디</th>
				                            <th>이메일</th>
				                            <th>지역</th>
				                            <th>삭제</th>
				                        </tr>
				                        <tr>
				                    		<td><span>1</span></td>
				                            <td><span>이원섭</span></td>
				                            <td><span>OneThing</span></td>
				                            <td><span>OneThing@naver.com</span></td>
				                            <td><span>대전</span></td>
				                            <td><input type="checkbox"></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
				            <div class="blog-btn" style="text-align: right;">
                                	<!-- 회원삭제버튼 -->
                                	<a href="#" class="btn btn-primary">회원삭제</a>
                            </div>
				        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 페이지 -->
        <div class="page">
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
    </section>
    <!-- scroll top -->
    <a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
    <!-- srolltop end -->
