<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


   	<section class="blog-page inner-page">
        <div class="container">
            <div class="blog-page-inner clear">
                <div class="row">
                <div class="col-md-4">
                    <div class="title inner-page-title">
				       <h3 class="bannerImage" style="font-size: 20px"><img alt="bannerImage" src="${pageContext.request.contextPath}/resources/images/bannerImage.png";>배너등록</h3>
				    </div>                    
                </div>
                    <div class="col-md-8">
                        	<!-- 관리자 광고배너 등록 리스트 화면 -->
                            <div style="margin-top: .5em">
				            <div class="table-responsive" style="text-align: center;">
				                <table class="table">
				                    <tbody>
				                        <tr bgcolor="skyblue"; style="color: white;">
				                        	<th>순번</th>
				                            <th>회사명</th>
				                            <th>등록일</th>
				                            <th>마감일</th>
				                            <th>연결주소</th>
				                            <th>배너이미지</th>
				                            <th>삭제</th>
				                        </tr>
				                        <tr>
				                    		<td><span>1</span></td>
				                            <td><span>KOSTA</span></td>
				                            <td><span>2018.06.01</span></td>
				                            <td><span>2018.07.01</span></td>
				                            <td><span>http://www.naver.com/</span></td>
				                            <td><span>adsNaver.jsp</span></td>
				                           	<td><input type="checkbox"/></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
				        </div>
                    </div>
                   <div class="col-md-12">
		            <div class="form-group" style="text-align: center; margin-left: 20em">
		                  <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/banner/insertForm>"/>광고등록</a>
						  <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/banner/delete>" style="background-color: LightGrey"/>광고삭제</a><br><br>
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