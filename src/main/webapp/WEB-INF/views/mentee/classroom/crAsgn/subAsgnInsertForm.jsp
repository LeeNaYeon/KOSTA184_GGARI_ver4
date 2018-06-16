<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<script>
	function checkValid() {
	    var f = window.document.subAsgnWriteForm;
			
		if ( f.crSubasgnTitle.value == "") {
		    alert( "제출과제 제목을 입력해 주세요." );
		    f.crSubasgnTitle.focus();
			return false;
	    }
		if ( f.crSubasgnContent.value == "" ) {
			alert( "제출과제 내용을 입력해 주세요." );
			f.crSubasgnContent.focus();
			return false;
		}
		if ( f.crSubasgnFile.value == "" ) {
			alert( "제출과제 내용을 입력해 주세요." );
			f.crSubasgnContent.focus();
			return false;
		}
	    return true;
	}
</script>

                    <div class="col-md-8">
                        <div class="title inner-page-title">
	                        <h3>${requestScope.crAsgnTitle}</h3>
	                    </div>
	                    <form name="subAsgnWriteForm" action="${pageContext.request.contextPath}/cr/subAsgn/insert?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" onsubmit="return checkValid()">
	                        <div class="row">
	                            <div class="col-sm-12 ">
	                                <input type="hidden" name="crAsgnCode" value="${requestScope.crAsgnCode}"/>
	                            	<input type="hidden" name= "userId" value="astro"/>
	                                <div class="form-group">
	                                    <label>과제제목 :</label>
	                                    <input type="text" name="crSubasgnTitle" class="form-control" placeholder="title">
	                                </div>
	                                <div class="form-group">
	                                    <label>과제내용 :</label>
	                                    <textarea rows="6" name="crSubasgnContent" class="form-control" placeholder="content" style="height: 400px;"></textarea>
	                                </div>
	                                <div class="form-group">
	                                    <label class="btn btn-primary">
	                                    	업로드
	                                    	<input type="file" name="file" style="display: none;">
	                                    </label>
	                                    <span>
	                                    	<!--  동적으로 선택된 파일명을 여기에 띄워줘야함 -->
	                                    	<b>선택된 파일이 없습니다.</b>
	                                    </span>	                                    
	                                </div>
	                            </div>
	                            <div class="col-md-12">
	                                <div class="form-group" style="text-align: right;">
	                                    <input type="submit" class="btn btn-primary" value="과제등록">
	                                	<input type="reset" class="btn btn-primary" value="다시쓰기">
	                                </div>
	                            </div>
	                        </div>
	                    </form>               
                    </div>
                </div>
            </div>
        </div>
    </section>

    

    <!-- scroll top -->
    <a class="scroll-top fa fa-angle-up" href="javascript:void(0)"></a>
    <!-- srolltop end -->
