<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="container">

	<sec:authorize access="isAuthenticated()">
		<c:set var="id"><sec:authentication property="principal.userId"/></c:set>
	</sec:authorize>
	
	<div>
		<div class="title inner-page-title">
			<h3>QnA 상세보기</h3>
		</div>
		<div style="width: 70%; margin-left: 200px;">
			<form>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="row">
					<div class="col-sm-12 ">
						<div class="form-group">
							<label>게시물 제목 :</label> 
							<input type="text" name="qaTitle" class="form-control" placeholder="title" value="${requestScope.qnADTO.qaTitle}" readonly="readonly">
						</div>
						<div class="form-group">
							<label>게시물 내용 :</label>
							<textarea rows="6" name="qaContent" class="form-control"
								placeholder="content" style="height: 400px;" readonly="readonly">${requestScope.qnADTO.qaContent}</textarea>
						</div>
					</div>
					<c:if test="${requestScope.qnADTO.userId==id}">
						<div class="col-md-12">
							<div class="form-group" style="text-align: right;">
								<a href="#" class="btn btn-primary">수정</a>
								<a href="#" class="btn btn-primary">삭제</a>
							</div>
						</div>
					</c:if>
				</div>
			</form>
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
