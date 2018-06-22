<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
	<style type="text/css">
		.table thead tr th{text-align: center;}
		.table tbody tr td{text-align: center;}
	</style>
</head>

<div class="popular-course course-page">
	<div class="container">
		<div class="pupular-course-inner clear">
			<div class="row">
				<div style="text-align: center; width: 100%;">
					<h3>QnA게시판</h3>
					<hr>
				</div>
				<sec:authorize access="isAuthenticated()">
					<div style="text-align: right; width: 100%;">
						<a class="btn btn-primary" href="${pageContext.request.contextPath}/qna/insertQnAForm" >글쓰기</a>
					</div>
				</sec:authorize>
				<table class="table" style="margin-top: 5px;">
					<thead>
						<tr>
							<th style="width: 10%;">번호</th>
							<th style="width: 20%;">아이디</th>
							<th style="width: 40%;">제목</th>
							<th style="width: 30%;">날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty requestScope.qnAList }">
								<tr>
									<td colspan="5">
										<div style="text-align: center;">
											<b>등록된 게시물이 없습니다.</b>
										</div>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${requestScope.qnAList}" var="qna"
									varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>${qna.userId}</td>
										<td><a href="${pageContext.request.contextPath}/qna/select/${qna.qaCode}">${qna.qaTitle}</a></td>
										<td>${qna.qaDate }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

</body>

</html>


