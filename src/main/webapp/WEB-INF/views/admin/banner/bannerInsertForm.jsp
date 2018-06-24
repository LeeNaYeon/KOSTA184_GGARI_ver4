<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

	
	<head>
		<style type="text/css">
			.file_input label {
			    position:relative;
			    cursor:pointer;
			    display:inline-block;
			    vertical-align:middle;
			    overflow:hidden;
			    width:100px;
			    height:30px;
			    background:#777;
			    color:#fff;
			    text-align:center;
			    line-height:30px;
			}
			.file_input label input {
			    position:absolute;
			    width:0;
			    height:0;
			    overflow:hidden;
			}
			.file_input input[type=text] {
			    vertical-align:middle;
			    display:inline-block;
			    width:400px;
			    height:28px;
			    line-height:28px;
			    font-size:11px;
			    padding:0;
			    border:0;
			    border:1px solid #777;
			}


		</style>
	</head>
	
	
    <script type="text/javascript">
		function checkValid() {
		    var f = window.document.bannerInsertForm;
		    
		    if ( f.adsName.value == "" ) {
			      alert( "회사명을 입력해주세요.");
			      f.adsName.focus();
			      return false;
			   }
		    if ( f.adsPrice.value == "" ) {
			      alert( "광고가격을 입력해주세요.");
			      f.adsPrice.focus();
			      return false;
			   }
		    
		   if ( f.adsStartDate.value == "" ) {
			      alert( "시작일을 선택해주세요." );
			      return false;
			   }
		   if ( f.adsEndDate.value == "" ) {
			      alert( "마감일을 선택해주세요." );
			      return false;
			   }
		   if ( f.adsLink.value == "" ) {
			      alert( "연결주소를 입력해주세요." );
			      f.adsLink.focus();
			      return false;
			   }
		   if ( f.adsFileName.value == "" ) {
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
	                    <form style="width: 800px" name="bannerInsertForm" method="post" action="${pageContext.request.contextPath}/admin/banner/register?${_csrf.parameterName}=${_csrf.token}" onsubmit="return checkValid()" enctype="multipart/form-data">
                           <div class="row">
                               <div class="col-sm-12 ">
                                  <!-- 배너위치설정 -->
                                   <div class="form-group" style="width: 300px; float:left">
                                        <H5 style="color: cornFlowerBlue">광고회사명</H5>
                                      <input type="text" name="adsName" placeholder="회사명을 입력해주세요." style="border-radius: 5px"/>
                                   </div>
                                   <!-- 광고가격 -->
                                   <div class="form-group" style="width: 200px; float:left; margin-left: 200px">
                                        <H5 style="color: cornFlowerBlue">광고가격</H5>
                                      <input type="text" name="adsPrice" placeholder="금액을 입력해주세요" style="border-radius: 5px"/>
                                   </div><hr style="background:LightGrey">
                                   <!-- 시작일 마감일 설정 -->
                                   <div class="form-group" style="width: 400px; float:left;">
                                      <h5 style="color: cornFlowerBlue">시작일</h5>
                                    <div style="width: 150px; float:left;">
                                       <input id="adsStartDate" name="adsStartDate" type="date" style="border-radius:5px"/>
                                    </div>
                                    <div  style="width:150px; float:left;">
                                       <input id="adsEndDate" name="adsEndDate" type="date" style="border-radius: 5px"/>
                                    </div>
                                   </div>
                                   <!-- 연결주소 -->
                                   <div class="form-group" style="width: 200px; float:left; margin-left: 100px">
                                         <h5 style="color:cornFlowerBlue;">연결주소[링크]</h5>
                                      <input name="adsLink" type="text" placeholder="연결주소를 입력해주세요" style="border-radius:5px; width: 300px">
                                   </div><hr style="background:LightGrey">
                                   <!-- 이미지등록 -->
                                   <div class="form-group">
                                   		<h5 style="color: cornFlowerBlue">배너이미지</h5>
	                      				<div class="file_input">
										    <label class="btn btn-primary" style="margin-top: 0px;">
										        업로드
										        <input type="file" name="file" onchange="javascript:document.getElementById('file_route').value=this.value">
										    </label>
										    <input type="text" readonly="readonly"  class="form-control" title="File Route" id="file_route" style="height: 40px; margin-top: 15px;">
										</div>
	                                </div>
                                   <hr style="background:LightGrey">
                                   
                               </div>
                               <div class="col-md-12">
                                   <div class="form-group" style="text-align: center;">
                                      <input type="submit" class="btn btn-primary" value="등록하기">
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