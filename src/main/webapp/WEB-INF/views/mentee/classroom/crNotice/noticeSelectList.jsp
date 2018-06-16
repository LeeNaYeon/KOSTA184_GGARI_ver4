<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                    <div class="col-md-8">
                    <!-- 멘토가 보는 부분 공지등록버튼-->
                    <div style="margin-bottom: 15px; text-align: right;">
                    	<a class="btn btn-primary" href="${pageContext.request.contextPath}/cr/mentoNotice/noticeInsertForm">공지사항 등록</a>
                    </div>
                    
                    
                    	<c:choose>
                    		<c:when test="${empty mento.notices}">
                    			<div class="blog-div">
		                            <div class="blog-desc" style="text-align: center;">
		                            	<h4>등록된 공지사항이 없습니다.</h4>	              
		                            </div>
		                        </div>
                    		</c:when>
                    		
                    		
                    		<c:otherwise>
                    		
                    			<c:forEach items="${mento.notices}" var="notice">
	                    			<div class="blog-div">
			                            <div class="blog-desc">
			                            	<b>${mento.userName}</b><br>
			                                <date>${notice.crNoticeDate}</date>
			                                <hr style="margin-top: 5px; margin-bottom: 5px;">
			                                                                
			                                <h3><a href="#" title="Details">${notice.crNoticeTitle } </a></h3>
			                                <pre>${notice.crNoticeContent}</pre>
			                                
			                                <section class="comment-form">
					                            <form>
					                                <div class="row">
					                                    <div class="col-md-12">
								                            <!-- First Comment -->
								                            <div class="title inner-page-title">
								                                <h6>수업 댓글 n개</h6>
								                            </div>
								                            <article class="row">
								                                <div style="margin-left: 10px;">
								                                    <figure class="thumbnail">
								                                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/users/2.jpg" alt="avatar" style="border-radius: 50px; width: 50px; height: 50px;"/>
								                                    </figure>
								                                </div>
								                                <div class="col-md-10 col-sm-10 col-xs-9">
								                                    <div class="panel panel-default arrow left">
								                                        <div class="panel-body">
								                                            <header class="text-left">
								                                            	<br>
								                                                <div class="comment-user"><b>이원섭 오후 7:54</b></div>
								                                            </header>
								                                            <div class="comment-post">
								                                                <p>
								                                                	알겠습니다! 늦지않을게요.알겠습니다! 
								                                                </p>
								                                            </div>
								                                        </div>
								                                    </div>
								                                </div>
								                            </article>
											                                    	
					                                        <div class="form-group">
					                                            <label>댓글 :</label>
					                                            <textarea rows="6" name="name" class="form-control"></textarea>
					                                        </div>
					                                        <div class="form-group" style="text-align: right; margin-bottom: 5px;">
					                                            <a class="btn btn-primary" href="#">등록</a>
					                                        </div>
					                                    </div>
					                                </div>
					                            </form>
					                        </section>
			                                
			                                <!-- 멘토가 보는 부분 수정 삭제버튼-->
			                                <div style="margin-top: 15px; text-align: center;">
			                                	<a class="btn btn-primary" href="#">수정</a>
			                                	<a class="btn btn-primary" href="${pageContext.request.contextPath}/cr/notice/delete/${notice.crNoticeCode}">삭제</a>
			                                </div>                             
			                            </div>
			                        </div>
                    			</c:forEach>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </div>
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
        </div>
    </section>