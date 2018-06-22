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
				       <h3 style="font-size: 20px">dashboard</h3>
				    </div>
				    <ul>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/dashboard/selectCourse">강좌별 수익</a>
                      </li>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/selectMento">강사별 수익</a>
                      </li>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/selectCourseComission">강좌수수료 수익</a>
                      </li>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/selectBanner">광고 수익</a>
                      </li>
                      <li>
                        <a ${pageContext.request.contextPath}/admin/memberMgr/selectByMonthYear">월/년 총매출</a>
                      </li>
                    </ul>                    
                	</div>
                  </div>
                </div>
                	<div class="col-md-8">
                    	<div><h3  class="MonthYearImage" style="font-size: 20px"><img alt="MonthYearImage" src="${pageContext.request.contextPath}/resources/images/MonthYearImage.png";>월/년 총매출</h3></div>
                        	<!-- 관리자 멘토신청자 명단 리스트 화면 -->
                            <div style="margin-top: .5em;">
				            <div class="table-responsive" style="text-align: center;">
				                <table class="table">
				                    <tbody>
				                        <tr bgcolor="lightGrey"; style="color: white">
				                        	
				                        	<th>수수료 수익</th>
				                            <th>광고 수익</th>
				                            <th>총 수익</th>
				                        </tr>
				                        <tr>
				                    		<td><span>5,000,000</span></td>
				                            <td><span>10,000,000</span></td>
				                            <td><span>15,000,000</span></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
				            <div style="width: 200px; float: right; border-radius: 10px;">
								  <input style="border-radius: 8px;" type="date" id="datepicker1">
                            </div>
                            <div style="width: 200px; margin-left:5px; float: right;">
                            	   <input style="border-radius: 8px;" type="date" id="datepicker2">
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
