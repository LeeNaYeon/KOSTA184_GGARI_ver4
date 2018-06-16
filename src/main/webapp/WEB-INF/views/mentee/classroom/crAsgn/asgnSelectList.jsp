<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


                    <div class="col-md-8">
	                    <!-- 멘토가 보는 부분 공지등록버튼-->
	                    <div style="margin-bottom: 15px; text-align: right;">
	                    	<a class="btn btn-primary" href="${pageContext.request.contextPath}/cr/mentoAsgn/asgnInsertForm">과제 등록</a>
	                    </div>
	                    
                    	<c:forEach items="${mento.asgns}" var="asgn">
                    		<div class="blog-div">
	                            <div class="blog-desc">
	                            	<b>${mento.userName}</b><br>
	                                <date>${asgn.crAsgnDate}</date>
	                                <hr style="margin-top: 5px; margin-bottom: 5px;">
	                                <date>${asgn.crAsgnDeadline} 마감</date>
	                                <h3><a href="${pageContext.request.contextPath}/cr/asgn/select/${asgn.crAsgnCode}" title="Details">${asgn.crAsgnTitle}</a></h3>
	                               	<pre>${asgn.crAsgnContent}</pre>
	                            </div>
                            </div>
                    	</c:forEach>
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

    

    <!-- scroll top -->
    <a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
    <!-- srolltop end -->

    