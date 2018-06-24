<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<!--meta tag start-->
<meta content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="edustar">
<meta name="author" content="khanalprem">
<meta name="copyright" content="khanalprem">

<!--title-->
<title>Edustar-Educational html5 template</title>

<!-- faveicon start   -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">

<!-- stylesheet start -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var sel_file;
	$(document).ready(function() {
		$("#input_img").on("change", handleImgFileSelect);
	});
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}

	//유효성체크
	function checkValid() {
		var f = window.document.courseAddForm;

		if (f.courseTitle.value == "") {
			alert("과제제목을 입력해 주세요.");
			f.courseTitle.focus();
			return false;
		}
		
		var text = $('#courseTitle').val();
        // 입력값 길이 저장
        var textlength = text.length;
        var limit = 10;
        if(textlength > 10)
        {
                $('#courseTitle').html('글내용을 '+limit+
                '자 이상 쓸수 없습니다!');
                // 제한 글자 길이만큼 값 재 저장
                $('#courseTitle').val(text.substr(0,limit));
                return false;
        }
		var major1 = $('#major1').val();
		var major2 = $('#major2').val();
		var major3 = $('#major3').val();
	
		if (f.classification.value == "") {
			alert("맞는 분야를 선택해 주십시오.");
			f.classification.focus();
			return false;
		}else{
			if (f.classification.value != major1) {
				if (f.classification.value != major2) {
					if (f.classification.value != major3) {
						alert("본인과 맞는 분야를 선택해주십시오.");
						f.classification.focus();
						return false;
					}
				}
			}
		}

		if (f.courseLevel.value == "") {
			alert("강좌 레벨을 선택해 주십시오.");
			f.courseLevel.focus();
			return false;
		}
		if (f.courseRecruitMax.value == "") {
			alert("총 인원을 입력해 주십시오.");
			f.courseRecruitMax.focus();
			return false;
		}
		if (f.courseRecruitPerid.value == "") {
			alert("모집 마감 날짜를 선택해 주십시오.");
			f.courseRecruitPerid.focus();
			return false;
		}
		if (f.courseStartDate.value == "") {
			alert("개강날짜를 선택해 주십시오.");
			f.courseStartDate.focus();
			return false;
		}
		if (f.courseEndDate.value == "") {
			alert("종강날짜를 선택해 주십시오.");
			f.courseEndDate.focus();
			return false;
		}
		if (f.classDay.value == "") {
			alert("요일을 선택해 주십시오.");
			f.classDay.focus();
			return false;
		}
		if (f.courseLoc.value == "") {
			alert("지역을 선택해 주십시오.");
			f.courseLoc.focus();
			return false;
		}
		if (f.courseStartTime.value == "") {
			alert("시작시간을 선택해 주십시오.");
			f.courseStartTime.focus();
			return false;
		}
		if (f.courseEndTime.value == "") {
			alert("종료시간을 선택해 주십시오.");
			f.courseEndTime.focus();
			return false;
		}
		if (f.coursePrice.value == "") {
			alert("가격을 입력해 주십시오.");
			f.coursePrice.focus();
			return false;
		}
		if (f.courseDetail.value == "") {
			alert("상세설명을 입력해주십시오");
			f.courseDetail.focus();
			return false;
		}
		return true;
	}
</script>
</head>

<body>

	<section id="gallery">
	<div class="container">
		<div class="col-md-12">
			<div class="row">
				<!-- gallery Nav -->
				<div class="gallery-nav">
					<ul>
						<li class="filter" data-filter="all"><a href="#">내 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">찜한 스터디</a></li>
						<li class="filter" data-filter="all"><a href="#">완료된 스터디</a></li>
						<li class="filter" data-filter="all"><a
							href="${pageContext.request.contextPath}/myPage/profile/updateForm">프로필
								수정</a></li>
						<li class="filter"><a
							href="${pageContext.request.contextPath}/myPage/studyInsert/insertForm">스터디
								만들기</a></li>
					</ul>
				</div>
				<!--/ End gallery Nav -->

				<div class="login-form">

					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="navbar-brand">
							<img
								src="${pageContext.request.contextPath}/resources/images/logo.png"
								class="img-responsive" alt="">
						</div>
					</div>
					<input type="hidden" id="major1" value="${majorList.mentoMajor}"/>
					<c:if test="${majorList.mentoMajor2 ne null}">
						<input type="hidden" id="major2" value="${majorList.mentoMajor2}"/>
					</c:if>
					<c:if test="${majorList.mentoMajor3 ne null}">
						<input type="hidden" id="major3" value="${majorList.mentoMajor3}"/>
					</c:if>
					
					
					<form name="courseAddForm" method="post" 
					action="${pageContext.request.contextPath}/myPage/courseInsertConfirm?${_csrf.parameterName}=${_csrf.token}"
						onSubmit='return checkValid()' enctype="multipart/form-data">

						<div class="form-group">
							강좌제목<br> <input type="text" placeholder="class title"
								name="courseTitle" id="courseTitle">
						</div>
						<div class="form-group">
							강좌종류<br> <select name="courseSubGroup">
								<optgroup label="스킬업단과">
									<option value="U001">JAVA</option>
									<option value="U002">C</option>
									<option value="U003">알고리즘</option>
									<option value="U004">DBMS</option>
								</optgroup>
								<optgroup label="Web Developer">
									<option value="W001">Back-End</option>
									<option value="W002">Front-End</option>
									<option value="W003">Android Application</option>
									<option value="W004">iOS Application</option>
								</optgroup>
								<optgroup label="보안">
									<option value="H001">사이버보안</option>
									<option value="H002">웹 보안</option>
									<option value="H003">시스템보안</option>
								</optgroup>
								<optgroup label="server/networking">
									<option value="S001">Linux</option>
									<option value="S002">Network</option>
								</optgroup>
							</select>
						</div>
						<div class="form-group">
							강좌레벨<br> <select name="courseLevel">
								<optgroup label="강좌레벨">
									<option value="초급">초급</option>
									<option value="중급">중급</option>
									<option value="고급">고급</option>
								</optgroup>
							</select>
						</div>
						<div class="form-group">
							모집인원<br> <input type="number" placeholder="모집인원"
								name="courseRecruitMax">
						</div>
						<div class="form-group">
							모집마감 날짜<input type="date" name="courseRecruitPerid">
						</div>
						<div class="form-group">
							강좌 시작 날짜<input type="date" name="courseStartDate"> ~ 강좌
							종료 날짜<input type="date" name="courseEndDate">
						</div>

						<div class="form-group">
							강좌가능요일선택<br> <input type="checkbox" name="classDay"
								value="월">월 <input type="checkbox" name="classDay"
								value="화">화 <input type="checkbox" name="classDay"
								value="수">수 <input type="checkbox" name="classDay"
								value="목">목 <input type="checkbox" name="classDay"
								value="금">금 <input type="checkbox" name="classDay"
								value="토">토 <input type="checkbox" name="classDay"
								value="일">일
						</div>
						<div class="form-group">
							강좌가능지역<br> <select name="courseLoc">
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
						</div>

						<div class="form-group">
							강좌시작시간<br> <select name="courseStartTime" size="5"
								style="height: 100px">
								<optgroup label="오전">
									<option value="030">0:30am</option>
									<option value="100">1:00am</option>
									<option value="130">1:30am</option>
									<option value="200">2:00am</option>
									<option value="230">2:30am</option>
									<option value="300">3:00am</option>
									<option value="330">3:30am</option>
									<option value="400">4:00am</option>
									<option value="430">4:30am</option>
									<option value="500">5:00am</option>
									<option value="530">5:30am</option>
									<option value="600">6:00am</option>
									<option value="630">6:30am</option>
									<option value="700">7:00am</option>
									<option value="730">7:30am</option>
									<option value="800">8:00am</option>
									<option value="830">8:30am</option>
									<option value="900">9:00am</option>
									<option value="930">9:30am</option>
									<option value="1000">10:00am</option>
									<option value="1030">10:30am</option>
									<option value="1100">11:00am</option>
									<option value="1130">11:30am</option>
									<option value="1200">noon</option>
								</optgroup>
								<optgroup label="오후">
									<option value="1230">00:30pm</option>
									<option value="1300">01:00pm</option>
									<option value="1330">01:30pm</option>
									<option value="1400">02:00pm</option>
									<option value="1430">02:30pm</option>
									<option value="1500">03:00pm</option>
									<option value="1530">03:30pm</option>
									<option value="1600">04:00pm</option>
									<option value="1630">04:30pm</option>
									<option value="1700">05:00pm</option>
									<option value="1730">05:30pm</option>
									<option value="1800">06:00pm</option>
									<option value="1830">06:30pm</option>
									<option value="1900">07:00pm</option>
									<option value="1930">07:30pm</option>
									<option value="2000">08:00pm</option>
									<option value="2030">08:30pm</option>
									<option value="2100">09:00pm</option>
									<option value="2130">09:30pm</option>
									<option value="2200">10:00pm</option>
									<option value="2230">10:30pm</option>
									<option value="2300">11:00pm</option>
									<option value="2330">11:30pm</option>
									<option value="2400">midnight</option>
								</optgroup>
							</select>
						</div>
						<div class="form-group">
							강좌종료시간<br> <select name="courseEndTime" size="5"
								style="height: 100px">
								<optgroup label="오전">
									<option value="030">0:30am</option>
									<option value="100">1:00am</option>
									<option value="130">1:30am</option>
									<option value="200">2:00am</option>
									<option value="230">2:30am</option>
									<option value="300">3:00am</option>
									<option value="330">3:30am</option>
									<option value="400">4:00am</option>
									<option value="430">4:30am</option>
									<option value="500">5:00am</option>
									<option value="530">5:30am</option>
									<option value="600">6:00am</option>
									<option value="630">6:30am</option>
									<option value="700">7:00am</option>
									<option value="730">7:30am</option>
									<option value="800">8:00am</option>
									<option value="830">8:30am</option>
									<option value="900">9:00am</option>
									<option value="930">9:30am</option>
									<option value="1000">10:00am</option>
									<option value="1030">10:30am</option>
									<option value="1100">11:00am</option>
									<option value="1130">11:30am</option>
									<option value="1200">noon</option>
								</optgroup>
								<optgroup label="오후">
									<option value="1230">00:30pm</option>
									<option value="1300">01:00pm</option>
									<option value="1330">01:30pm</option>
									<option value="1400">02:00pm</option>
									<option value="1430">02:30pm</option>
									<option value="1500">03:00pm</option>
									<option value="1530">03:30pm</option>
									<option value="1600">04:00pm</option>
									<option value="1630">04:30pm</option>
									<option value="1700">05:00pm</option>
									<option value="1730">05:30pm</option>
									<option value="1800">06:00pm</option>
									<option value="1830">06:30pm</option>
									<option value="1900">07:00pm</option>
									<option value="1930">07:30pm</option>
									<option value="2000">08:00pm</option>
									<option value="2030">08:30pm</option>
									<option value="2100">09:00pm</option>
									<option value="2130">09:30pm</option>
									<option value="2200">10:00pm</option>
									<option value="2230">10:30pm</option>
									<option value="2300">11:00pm</option>
									<option value="2330">11:30pm</option>
									<option value="2400">midnight</option>
								</optgroup>
							</select>
						</div>
						<div class="form-group">
							수강금액<br> <input type="number" placeholder="수강금액"
								name="coursePrice">
						</div>
						<div class="form-group">
							강좌 오픈 카톡방 URL<br> <input type="url"
								placeholder="강좌 오픈 카톡방 URL" name="courseUrl">
						</div>


						<div class="form-group">
							강좌소개<br>
							<textarea rows="100" name="courseDetail" cols="50"
								style="height: 300px"
								placeholder="   강좌소개말을 입력해 주십시오. 수강생들이 보는 강좌에 대한 첫 인상이기 때문에 무엇보다도 중요할 수 있습니다. 그러니 조금이라도 신경을 써 주신다면 감사하겠습니다. 항상, 최선을 다 하는 postIT이 되겠습니다."></textarea>
						</div>

						<div class="form-group">
							<div>
								<p class="title">
									배경화면사진 업로드 <input type="file" id="input_img" name="file" />
							</div>

						</div>

						<div>
							<div class="img_wrap">
								<img id="img" />
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<button type="submit" class="login-btn btn" style="align: center">Register
								now</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>

	<a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
	<!-- srolltop end -->


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/countdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</body>

</html>