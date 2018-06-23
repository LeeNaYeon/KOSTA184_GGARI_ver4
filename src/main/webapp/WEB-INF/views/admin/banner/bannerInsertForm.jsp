<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


    <script type="text/javascript">
		function checkValid() {
		    var f = window.document.bannerInsertForm;
		   if ( f.bannerPosition.value == "" ) {
		      alert( "배너위치설정을 선택해주세요." );
		      return false;
		   }
		   if ( f.radio.value == "" ) {
			      alert( "게시여부설정을 선택해주세요." );
			      return false;
			   }
		   if ( f.startDay.value == "" ) {
			      alert( "시작일을 선택해주세요." );
			      return false;
			   }
		   if ( f.endDay.value == "" ) {
			      alert( "마감일을 선택해주세요." );
			      return false;
			   }
		   if ( f.urlText.value == "" ) {
			      alert( "연결주소를 입력해주세요." );
			      return false;
			   }
		   if ( f.file.value == "" ) {
			      alert( "이미지를 등록해주세요." );
			      return false;
			   }
		    return true;
		}
	</script>

<body>
   	<section class="blog-page inner-page">
        <div class="container">
            <div class="blog-page-inner clear">
                <div class="row">
                  <div class="col-md-4">
                    <div class="col-md-8">
                        <div class="title inner-page-title">
	                        <h3>배너광고 등록</h3>
	                    </div>
	                    <form style="width: 600px" name="bannerInsertForm" action="${pageContext.request.contextPath}/" onsubmit="return checkValid()">
	                        <div class="row">
	                            <div class="col-sm-12 ">
	                            	<!-- 배너위치설정 -->
	                                <div class="form-group" style="width: 200px; float:left">
	                                     <H5 style="color: cornFlowerBlue">배너위치설정</H5>
				                    		<select name="bannerPosition" style="border-radius: 5px">
				                           		<option value="">선택</option>
				                           		<option>강의 레이아웃 배너</option>
								            </select>
	                                </div>
	                                <!-- 게시여부설정 -->
	                                <div class="form-group" style="width: 200px; float:left; margin-left: 200px">
	                                	<h5 style="color: cornFlowerBlue">게시여부</h5>
			                        	<input type="radio" name="radio">보이기</input>
			                        	<input type="radio" name="radio">숨기기</input>
	                                </div><hr style="background:LightGrey">
	                                <!-- 시작일 마감일 설정 -->
	                                <div class="form-group" style="width: 300px; float:left;">
	                                	<h5 style="color: cornFlowerBlue">시작일</h5>
			                        	<div style="width: 150px; float:left;">
			                        	   <input id="startDay" name="startDay" type="date" style="border-radius:5px"/>
			                        	</div>
			                        	<div  style="width:150px; float:left;">
			                        	   <input id="endDay" name="endDay" type="date" style="border-radius: 5px"/>
			                        	</div>
	                                </div>
	                                <!-- 연결주소 -->
	                                <div class="form-group" style="width: 200px; float:left; margin-left: 100px">
	                                  	 <h5 style="color:cornFlowerBlue;">연결주소[링크]</h5>
		               				     <input name="urlText" type="text" placeholder="연결주소를 입력해주세요" style="border-radius:5px; width: 300px">
	                                </div><hr style="background:LightGrey">
	                                <!-- 이미지등록 -->
	                                <div class="form-group">
		                                  <h5 style="color: cornFlowerBlue">배너이미지</h5>
				                          <label class="btn btn-primary">
				                              	사진찾기
				                              	<input type="file" name="file" style="display: none;">
				                          </label>	  
			                              <span>
			                              	<!--  동적으로 선택된 파일명을 여기에 띄워줘야함 -->
			                              	<b>선택된 파일이 없습니다.</b>
			                              </span>                     
	                                </div><hr style="background:LightGrey">
	                                
	                            </div>
	                            <div class="col-md-12">
	                                <div class="form-group" style="text-align: center;">
	                                	<input type="submit" class="btn btn-primary" value="보내기">
	                                	<input type="reset" value="다시쓰기" style="background-color: LightGrey; border-radius: 5px;">
									</div>
	                            </div>
	                        </div>
	                    </form>               
                    </div>
                </div>
            </div>
        </div>
     </div>
    </section>