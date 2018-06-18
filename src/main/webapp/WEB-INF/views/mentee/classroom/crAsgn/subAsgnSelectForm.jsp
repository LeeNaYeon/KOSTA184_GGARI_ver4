<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                    <div class="col-md-8">
                        <div class="title inner-page-title">
	                        <h3>${requestScope.crSubAsgnDTO.userId}님 과제</h3>
	                        <div style="text-align: right;">
	                        	<date>${requestScope.crSubAsgnDTO.crSubasgnDate}</date><br>
	                        </div>
	                    </div>
	                    <form>
	                        <div class="row">
	                         <div class="col-sm-12 ">
	                            	<input type="hidden" name="crAsgnCode" value="${requestScope.crAsgnCode}"/>
	                            	<input type="hidden" name= "userId" value="astro"/>
	                                <div class="form-group">
	                                    <label>과제제목 :</label>
	                                    <input type="text" name="crSubasgnTitle" class="form-control" placeholder="title" 
	                                    value="${requestScope.crSubAsgnDTO.crSubasgnTitle}" readonly="readonly">
	                                </div>
	                                <div class="form-group">
	                                    <label>과제내용 :</label>
	                                    <textarea rows="6" name="crSubasgnContent" class="form-control" placeholder="content" style="height: 400px;"
	                                    readonly="readonly">${requestScope.crSubAsgnDTO.crSubasgnContent}</textarea>
	                                </div>
	                                <div class="form-group">
	                                    
	                                    <label>다운로드</label> : 
                                    	<a href='${pageContext.request.contextPath}/cr/asgn/subAsgn/downLoad?fname=${requestScope.crSubAsgnDTO.crSubasgnFile}'>
							    			${requestScope.crSubAsgnDTO.crSubasgnFile} 
							      		</a>
	                                </div>
	                            </div>
	                        
	                            <div class="col-md-12">
	               					<div class="form-group" style="text-align: right;">
	                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/cr/subAsgn/updateform/${requestScope.crSubAsgnDTO.crAsgnCode}/astro">과제수정</a>
	                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/cr/subAsgn/delete/${requestScope.crSubAsgnDTO.crAsgnCode}/astro">과제삭제</a><br><br>
	                                </div>
	                               	<!-- 멘토에서 보이는 피드백 작성란 -->
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
		                                                <div class="comment-user"><b>장희정 오후 7:54</b></div>
		                                            </header>
		                                            <div class="comment-post">
		                                                <p>
		                                                	참잘했어요^^ 
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
                                        <a class="btn btn-primary" href="#">피드백 등록</a>
                                    </div>
	                            </div>
	                        </div>
	                    </form>               
                    </div>
                </div>
            </div>
        </div>
    </section>