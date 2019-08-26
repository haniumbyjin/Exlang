<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	data-layout-decorate="~{sample/layout/sampleLayout}"
	>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
    <!--// include summernote css/js //-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/meeting_board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/lang/summernote-ko-KR.js"></script>
  


 <style type="text/css">


 </style>
 <script type="text/javascript">
 var jq = $.noConflict();
 </script>
 <script>
 jq(document).ready(function(){
	

//공지글 모달
	  var modalLayer = jq("#modalLayer");
	  var modalLink = jq("#nModal");
	  var modalCont = jq(".modalContent");
	  var marginLeft = modalCont.outerWidth()/2;
	  var marginTop = modalCont.outerHeight()/2; 
	  modalLink.click(function(){
	    modalLayer.fadeIn("slow");
	    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	    jq(this).blur();
	    jq(".modalContent > a").focus(); 
	    return false;
	  });

	  jq("#close_modal_btn").click(function(){
	    modalLayer.fadeOut("slow");
	    modalLink.focus();
	  });		
	
//noticeView modal
	  var modalLayer1 = jq("#modalLayer1");
	  var modalLink1 = jq("#nModal1");
	  var modalCont1 = jq(".modalContent1");
	  var marginLeft = modalCont1.outerWidth()/2;
	  var marginTop = modalCont1.outerHeight()/2; 

	  modalLink1.click(function(){
	    modalLayer1.fadeIn("slow");
// 	    modalCont1.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	    jq(this).blur();

	    return false;
	  });

	  jq("#notice_close").click(function(){
	    modalLayer1.fadeOut();
	    
	  });	
//Article 모달
	  var modalLayer2 = jq("#modalLayer2");
	  var modalLink2 = jq("#nModal2");
	  var modalCont2 = jq(".modalContent2");
	  var marginLeft = modalCont2.outerWidth()/2;
	  var marginTop = modalCont2.outerHeight()/2; 

	  modalLink2.click(function(){
	    modalLayer2.fadeIn("slow");
	    modalCont2.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	    jq(this).blur();
	    jq(".modalContent2 > a").focus(); 
	    return false;
	  });
	  jq("#close_modal_btn2").click(function(){
		    modalLayer2.fadeOut("slow");
		    modalLink2.focus();
		  });	
	  
	  	  
//review 모달
	 
	  var modalLayer3 = jq("#modalLayer3");
	  var modalLink3 = jq("#nModal3");
	  var modalCont3 = jq(".modalContent3");
	  var marginLeft = modalCont.outerWidth()/2;
	  var marginTop = modalCont.outerHeight()/2; 

	  modalLink3.click(function(){
	    modalLayer3.fadeIn("slow");
	    modalCont3.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	    jq(this).blur();
	    jq(".modalContent3 > a").focus(); 
	    return false;
	  });

	  jq("#close_modal_btn3").click(function(){
	    modalLayer3.fadeOut("slow");
	    modalLink3.focus();
	  });	
	//review list모달
		 
	  var modalLayer4 = jq("#modalLayer4");
	  var modalLink4 = jq("#nModal4");
	  var modalCont4 = jq(".modalContent4");
	  var marginLeft = modalCont.outerWidth()/2;
	  var marginTop = modalCont.outerHeight()/2; 

	  modalLink4.click(function(){
	    modalLayer4.fadeIn("slow");
	   
	    jq(this).blur();
	    jq(".modalContent4 > a").focus(); 
	    return false;
	  });

	  jq(".review_close").click(function(){
	    modalLayer4.fadeOut("slow");
	    modalLink4.focus();
	  });	
	
	  //calendar 모달
		 
	  var modalLayer5 = jq("#modalLayer5");
	  var modalLink5 = jq("#nModal5");
	  var modalCont5 = jq(".modalContent5");
	  var marginLeft = modalCont5.outerWidth()/2;
	  var marginTop = modalCont5.outerHeight()/2; 

	  modalLink5.click(function(){
		  
	    modalLayer5.fadeIn("slow");
	   
	    jq(this).blur();
	     
	    return false;
	  });

	  jq(".modalContent5 > button").click(function(){
	    modalLayer5.fadeOut("slow");
	    modalLink5.focus();
	  });	
	
 });	
 </script>       
 <script >
jq(document).ready(function(){
	
		   jq("#memadd").click(function(){
			   var buttonhide=jq("#memadd");
		      var mCode =${mCode};
		      var id = '${sessionScope.user}';
		      var con =confirm("가입하시겠습니까?")
		      if(con==true){
		      jq.ajax({ 
		              url : '/meeting/memadd', 
		                 type : 'post', 
		                 data : {'mCode':mCode,
		                       'id':id}, 
		                 success : function(){ 
		                    
		                   alert("가입이 완료되었습니다.");          
// 		                   buttonhide.fadeOut("fast");
		                  
		                 } 
		             }); 
		      }
		   });
	//공지 등록
	jq("#btnSubmit").click(function(){ 
	var noticeTitle=document.form1.noticeTitle.value;
	
	if(noticeTitle == ""){
	alert("제목을 입력하세요.");
	document.form1.noticeTitle.focus();
	return;
	};
	
	document.form1.submit();
	});
    
    //article 등록
    jq("#btnSubmit1").click(function(){ 
	var articleTitle=document.form2.articleTitle.value;

    	if(articleTitle == ""){
    	alert("제목을 입력하세요.");
    	document.form2.articleTitle.focus();
    	return;
    	};

    	document.form2.submit();
    	});
    //review 등록
    jq("#btnSubmit2").click(function(){ 
	var reviewTitle=document.form3.reviewTitle.value;

    	if(reviewTitle == ""){
    	alert("제목을 입력하세요.");
    	document.form3.reviewTitle.focus();
    	return;
    	};

    	document.form3.submit();
    	});

    	

    	
});



function chkword(obj, maxByte) {
	 
    var strValue = obj.value;
    var strLen = strValue.length;
    var totalByte = 0;
    var len = 0;
    var oneChar = "";
    var str2 = "";

    for (var i = 0; i < strLen; i++) {
        oneChar = strValue.charAt(i);
        if (escape(oneChar).length > 39) {
            totalByte += 2;
        } else {
            totalByte++;
        }

        // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
        if (totalByte <= maxByte) {
            len = i + 1;
        }
    }

    // 넘어가는 글자는 자른다.
    if (totalByte > maxByte) {
        alert(maxByte + "자를 초과 입력 할 수 없습니다.");
        str2 = strValue.substr(0, len);
        obj.value = str2;
        chkword(obj, 4000);
    }
}   
 
</script>       
</head>

<%@ include file="login2.jsp"%>

<body>
        <header class="head">
            <div class="header">
                    <a href="/" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                       <li><a href="${pageContext.request.contextPath}/meeting/add">모임 만들기</a></li>
                        <li><a href="${pageContext.request.contextPath}/meeting/list">모임 가입하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendar/calview">MY 캘린더</a></li>
                        <li><a href="#">주제별 찾기</a></li>
                    </ul>
                </nav>   
            <div class= "login">
                <nav class="navi2">
                	<ul class="navi2-login">
                     <c:choose>
			               <c:when test="${sessionScope.user != null || sessionScope.admin != null }">
				               <li><a class="custpage1" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
				               <li>|</li>
				               <li><a class="custpage3" href="${pageContext.request.contextPath}/myArticle">Mypage</a></li> 
			               </c:when>
			               <c:otherwise>
				               <li><a class="custpage1" href="modalLayer_login" id="nModal_login">로그인</a></li>
				               <li>|</li>
				            	<li><a class="custpage2" href="${pageContext.request.contextPath}/acceptTerms">회원가입</a></li>
			               </c:otherwise>
			           </c:choose>
			       </ul>
                </nav>
            </div>
            </div>
        </header>
        <div class="container">
        <aside id="info">
            <section id="infoInner">
                <div class="fixed">
                        <div class="cover">
                        	<span class="cover_inner">
                            <div class="cover_img">
                                <img src="${pageContext.request.contextPath}/upload/${item.mFilename}">
                            </div>
                            </span>
                            <div class= "cover_name">
                                <a href="" class="m_uri">${item.mName}</a>
                            </div>
                            <p class="member"><span class="memCount">멤버 ${item.total}</span> <img src="${pageContext.request.contextPath}/resources/images/bool.jpg" class="bool"><span class="leader">모임장 ${item.mId}</span></p>
                        </div>
		                
		                 <!--     게시글, 공지, 후기 부분       //-->
		            
		                <div class= "hover">
<%-- 		                <c:choose> --%>
		                
<%-- 		                <c:when test="${memchk.size()>0}"> --%>
<%-- 		                <c:set var="doneLoop" value="false"/> --%>
<%-- 							<c:forEach var="chk" items="${memchk}"> --%>
<%-- 							 <c:if test="${chk.mm_id !=sessionScope.user}"> --%>
							   
<%-- 							   <c:if test="${chk.mm_id ==sessionScope.user}"> --%>
							   	        <button class="navi_item"><a href ="#modalLayer2" id="nModal2">게시판 쓰기</a></button>
					                    <button class="navi_item"><a href ="#modalLayer" id="nModal">공지 글쓰기</a></button>
					                    <button class="navi_item"><a href ="#modalLayer3" id="nModal3" >후기 글쓰기</a></button>
					                    <button class="navi_item"><a href ="#modalLayer5" id="nModal5" >캘린더</a></button>
<%-- 							     <c:set var="doneLoop" value="true"/> --%>
<%-- 							   </c:if> --%>
<%-- 							 </c:if> --%>
<%-- 							</c:forEach> --%>
<%-- 							</c:when> --%>
<%-- 							</c:choose> --%>
		                
<%-- 		               <c:choose> --%>
<%-- 		               <c:when test="${memchk.size()>0}"> --%>
<%-- 							<c:forEach  var="chk" items="${memchk}"> --%>
                				
<%--                 				<c:if test="${chk.mm_id != sessionScope.user}"> --%>
                					
<!-- 	                					<button class="navi_item"><a href ="#modalLayer2" id="nModal2">게시판 쓰기</a></button> -->
<!-- 					                    <button class="navi_item"><a href ="#modalLayer" id="nModal">공지 글쓰기</a></button> -->
<!-- 					                    <button class="navi_item"><a href ="#modalLayer3" id="nModal3" >후기 글쓰기</a></button> -->
<!-- 					                    <button class="navi_item"><a href ="#modalLayer5" id="nModal5" >캘린더</a></button> -->
				                  
                					
<%--                 		       	</c:if> --%>
<!--                 		       	< -->
		                		
<%-- 		                    </c:forEach> --%>
<%--                 		</c:when> --%>
<%--                 		<c:otherwise> --%>
		            	   	<button class="navi_item_join" id="memadd"><a href ="#" id="" >가입하기 ${chk.mm_id}</a></button>
<%-- 		                </c:otherwise> --%>
<%-- 		            </c:choose> --%>
		                </div>
		            
            <div id="modalLayer">
				<div class="modalContent">
				  	<div class="addform"> 
	
				<h3 class="title">공지글쓰기</h3>
				<!--// action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL //-->
				<form action="${pageContext.request.contextPath}/notice/add" method="post" name="form1" enctype="multipart/form-data">
				
					
					<input type="hidden" name="mCode" value="${item.mCode}">
					<div class="freeTitle">
						<label>제목 &nbsp;&nbsp;</label> <input type="text" name="noticeTitle" placeholder="게시글 제목을 입력해주세요." style="width:620px" onkeyup="chkword(this,40)">
				
					</div>
					<textarea name="noticeContext" id="summernote" placeholder="이미지만 업로드시 이미지만 업로드하지마시고 텍스트도 함께 추가해주세요."></textarea>
						<script th:inline="javascript">
						
						jq(function(){
							jq('#summernote').summernote({
								height: 462,
								width: 666,
								lang: 'ko-KR' ,
								fontNames : [  '바탕','굴림','궁서','Nanum Gothic','맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Impact', 'Times New Roman' ],
								fontNamesIgnoreCheck : [ 'Nanum Gothic' ],
								focus: true,
								
								callbacks: {
									onImageUpload: function(files, editor, welEditable) {
							            for (var i = files.length - 1; i >= 0; i--) {
							            	sendFile(files[i], this);
							            }
							        }
								}
								
							});
			
						})
			    function sendFile(file, el) {
					var form_data = new FormData();
			      	form_data.append('file', file);
			      	jq.ajax({
			        	data: form_data,
			        	type: "POST",
			        	url: '/notice/imageUpload',
			        	cache: false,
			        	contentType: false,
			        	enctype: 'multipart/form-data',
			        	processData: false,
			        	success: function(data) {
			        		if(checkImageType(data)){
								str = "<div>"
									+ "<a href='/sample/upload/displayFile?fileName=" + getImageLink(data) + "'>"
									+ "<img src='/sample/upload/displayFile?fileName=" + data + "'/>"
									+ "</a>"
									+ "<small data-src='" + data + "'></small></div>";
							}else {
								str = "<div>"
									+ "<a href='/sample/upload/displayFile?fileName=" + data + "'>"
									+ getOriginalName(data) + "</a>"
									+ "<small data-src='" + data + "'></small></div>";
							}//else
			        		
			        		
			//           		jq(el).summernote('editor.insertImage', data);         
			          		jq(".note-editable").append(str);
			//                 jq('#summernote').summernote("insertNode", img_name[0]);
			          		
			        	}
			      	});
			    }
						
			/* 컨트롤러로 부터 전송받은 파일이 이미지 파일인지 확인하는 함수 */
			function checkImageType(fileName){
				var pattern = /jpg$|gif$|png$|jpeg$/i;
				return fileName.match(pattern);
			}//checkImageType
			
			//파일 이름 처리 : UUID 가짜 이름 제거
			function getOriginalName(fileName){
				if(checkImageType(fileName)){
					return;
			}
				
				var idx = fileName.indexOf("_") + 1;
				return fileName.substr(idx);
					
			}//getOriginalName
			
			//이미지 원본 링크 제공
			function getImageLink(fileName){
				
				if(!checkImageType(fileName)){
					return;
				}//if
				
				var front = fileName.substr(0, 14);
				var end = fileName.substr(14);
				
				return front + end;
				
			}//getImageLink
					
			

			</script>



	

			<div class="filebox bs3-primary preview-image">
						<label for="input_file1">파일 선택</label> 
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">

                            
                     	     <input type="file" id="input_file1" class="upload-hidden" name="uploadFile"> 
           </div>

	
 		</form>
		<div class="alarm-box"><p class="alarm">첨부파일은 최대 1개, 10mb까지 등록이 가능하며 <br>파일 형식은 jpg,gif,psd,png,tif,zop,ms office,아래한글(hwp),pdf만 가능합니다.</div>
		</div>
		
	
			<div class="Btn">
				
				<button type="button" id="btnSubmit" class="btnSubmit" >등록</button>
			
				
				
		
							    <button type="button" class="close_modal_btn" id="close_modal_btn">닫기</button>
			</div>										 
										    </div>
									</div>
			  <div id="modalLayer2">
					<div class="modalContent2">
						 	<div class="addform"> 
	
						<h3 class="title">메인글쓰기</h3>
						<!-- action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL //-->
						<form action="${pageContext.request.contextPath}/article/add" method="post" name="form2" enctype="multipart/form-data">
						
							
							<input type="hidden" name="mCode" value="${item.mCode}">
							<div class="articleTitle">
								<label>제목 &nbsp;&nbsp;</label> <input type="text" name="articleTitle" placeholder="게시글 제목을 입력해주세요." style="width:620px" onkeyup="chkword(this,40)">
						
							</div>
							<textarea name="articleContext" id="summernote1" placeholder="이미지만 업로드시 이미지만 업로드하지마시고 텍스트도 함께 추가해주세요."></textarea>
								<script th:inline="javascript">
								jq(function(){
									jq('#summernote1').summernote({
										height: 462,
										width: 666,
										lang: 'ko-KR' ,
										fontNames : [  '바탕','굴림','궁서','Nanum Gothic','맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Impact', 'Times New Roman' ],
										fontNamesIgnoreCheck : [ 'Nanum Gothic' ],
										focus: true,
										
										callbacks: {
											onImageUpload: function(files, editor, welEditable) {
									            for (var i = files.length - 1; i >= 0; i--) {
									            	sendFile(files[i], this);
									            }
									        }
										}
										
									});
					
								})
							    function sendFile(file, el) {
									var form_data = new FormData();
							      	form_data.append('file', file);
							      	jq.ajax({
							        	data: form_data,
							        	type: "POST",
							        	url: '/article/imageUpload',
							        	cache: false,
							        	contentType: false,
							        	enctype: 'multipart/form-data',
							        	processData: false,
							        	success: function(data) {
							        		if(checkImageType(data)){
												str = "<div>"
													+ "<a href='/sample/upload/displayFile?fileName=" + getImageLink(data) + "'>"
													+ "<img src='/sample/upload/displayFile?fileName=" + data + "'/>"
													+ "</a>"
													+ "<small data-src='" + data + "'></small></div>";
											}else {
												str = "<div>"
													+ "<a href='/sample/upload/displayFile?fileName=" + data + "'>"
													+ getOriginalName(data) + "</a>"
													+ "<small data-src='" + data + "'></small></div>";
											}//else
							        		
							        		
							//           		jq(el).summernote('editor.insertImage', data);         
							          		jq(".note-editable").append(str);
							//                 jq('#summernote').summernote("insertNode", img_name[0]);
							          		
							        	}
							      	});
							    }
										
							/* 컨트롤러로 부터 전송받은 파일이 이미지 파일인지 확인하는 함수 */
							function checkImageType(fileName){
								var pattern = /jpg$|gif$|png$|jpeg$/i;
								return fileName.match(pattern);
							}//checkImageType
							
							//파일 이름 처리 : UUID 가짜 이름 제거
							function getOriginalName(fileName){
								if(checkImageType(fileName)){
									return;
							}
								
								var idx = fileName.indexOf("_") + 1;
								return fileName.substr(idx);
									
							}//getOriginalName
							
							//이미지 원본 링크 제공
							function getImageLink(fileName){
								
								if(!checkImageType(fileName)){
									return;
								}//if
								
								var front = fileName.substr(0, 14);
								var end = fileName.substr(14);
								
								return front + end;
								
							}//getImageLink
									
					
		
					</script>



	

			<div class="filebox bs3-primary preview-image">
						<label for="input_file2">파일 선택</label> 
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">

                            
                     	     <input type="file" id="input_file2" class="upload-hidden" name="uploadFile"> 
           </div>

	
 		</form>
		<div class="alarm-box"><p class="alarm">첨부파일은 최대 1개, 10mb까지 등록이 가능하며 <br>파일 형식은 jpg,gif,psd,png,tif,zop,ms office,아래한글(hwp),pdf만 가능합니다.</div>
		</div>
		
	
	<div class="Btn">
		
		<button type="button" id="btnSubmit1" class="btnSubmit">등록</button>
		<button type="button" class="close_modal_btn" id="close_modal_btn2">닫기</button>
	</div>
		
		
		
							    
														 
					</div>
			</div>
			<div id="modalLayer3">
					<div class="modalContent3">
						 	<div class="addform"> 
	
						<h3 class="title">후기글쓰기</h3>
						<!-- action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL //-->
						<form action="${pageContext.request.contextPath}/review/add" method="post" name="form3" enctype="multipart/form-data">
						
							
							<input type="hidden" name="mCode" value="${item.mCode}">
							<div class="reviewTitle">
								<label>제목 &nbsp;&nbsp;</label> <input type="text" name="reviewTitle" placeholder="게시글 제목을 입력해주세요." style="width:620px" onkeyup="chkword(this,40)">
						
							</div>
							<textarea name="reviewContext" id="summernote2" placeholder="이미지만 업로드시 이미지만 업로드하지마시고 텍스트도 함께 추가해주세요."></textarea>
								<script th:inline="javascript">
								jq(function(){
									jq('#summernote2').summernote({
										height: 462,
										width: 666,
										lang: 'ko-KR' ,
										fontNames : [  '바탕','굴림','궁서','Nanum Gothic','맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Impact', 'Times New Roman' ],
										fontNamesIgnoreCheck : [ 'Nanum Gothic' ],
										focus: true,
										
										callbacks: {
											onImageUpload: function(files, editor, welEditable) {
									            for (var i = files.length - 1; i >= 0; i--) {
									            	sendFile(files[i], this);
									            }
									        }
										}
										
									});
					
								})
							    function sendFile(file, el) {
									var form_data = new FormData();
							      	form_data.append('file', file);
							      	jq.ajax({
							        	data: form_data,
							        	type: "POST",
							        	url: '/review/imageUpload',
							        	cache: false,
							        	contentType: false,
							        	enctype: 'multipart/form-data',
							        	processData: false,
							        	success: function(data) {
							        		if(checkImageType(data)){
												str = "<div>"
													+ "<a href='/sample/upload/displayFile?fileName=" + getImageLink(data) + "'>"
													+ "<img src='/sample/upload/displayFile?fileName=" + data + "'/>"
													+ "</a>"
													+ "<small data-src='" + data + "'></small></div>";
											}else {
												str = "<div>"
													+ "<a href='/sample/upload/displayFile?fileName=" + data + "'>"
													+ getOriginalName(data) + "</a>"
													+ "<small data-src='" + data + "'></small></div>";
											}//else
							        		
							        		
							//           		jq(el).summernote('editor.insertImage', data);         
							          		jq(".note-editable").append(str);
							//                 jq('#summernote').summernote("insertNode", img_name[0]);
							          		
							        	}
							      	});
							    }
										
							/* 컨트롤러로 부터 전송받은 파일이 이미지 파일인지 확인하는 함수 */
							function checkImageType(fileName){
								var pattern = /jpg$|gif$|png$|jpeg$/i;
								return fileName.match(pattern);
							}//checkImageType
							
							//파일 이름 처리 : UUID 가짜 이름 제거
							function getOriginalName(fileName){
								if(checkImageType(fileName)){
									return;
							}
								
								var idx = fileName.indexOf("_") + 1;
								return fileName.substr(idx);
									
							}//getOriginalName
							
							//이미지 원본 링크 제공
							function getImageLink(fileName){
								
								if(!checkImageType(fileName)){
									return;
								}//if
								
								var front = fileName.substr(0, 14);
								var end = fileName.substr(14);
								
								return front + end;
								
							}//getImageLink
									
					
		
					</script>



	

			<div class="filebox bs3-primary preview-image">
						<label for="input_file3">파일 선택</label> 
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">

                            
                     	     <input type="file" id="input_file3" class="upload-hidden" name="uploadFile"> 
           </div>

	
 		</form>
		<div class="alarm-box"><p class="alarm">첨부파일은 최대 1개, 10mb까지 등록이 가능하며 <br>파일 형식은 jpg,gif,psd,png,tif,zop,ms office,아래한글(hwp),pdf만 가능합니다.</div>
		</div>
		
	
	<div class="Btn">
		
		<button type="button" id="btnSubmit2" class="btnSubmit">등록</button>
		 <button type="button" class="close_modal_btn" id="close_modal_btn3">닫기</button>
	</div>
		
		
		
							   
														 
					</div>
			</div>											
			<div id="modalLayer5">
            <div class="modalContent5">
               <iframe src="/calendar/view/${item.mCode}&${item.mName}" width="1240px" height="800px" 
               frameborder=0  marginheight=0 marginwidth=0 scrolling=no vspace=0 framespacing=0 >
               <input type="hidden" name="mCode" value="${item.mCode}">
               <input type="hidden" name="mName" value="${item.mName}">
               </iframe>
         </div>
         </div>
<!--//      게시글, 공지, 후기 끝      //-->
</div>
            </section>
        </aside>

        <main id="content">
                <section class="board">
                	<div class="board_tlist">
		             <c:choose>
						<c:when test="${alist.size()>0}">
							<c:forEach var="aitem" items="${alist}">
		                <div class="board_list">
		                    <div class="titleWriter">
		                    	<div class="titleWriter_inner">
		                        <span class="ellipsis">
		                            <strong class="text">${aitem.id}</strong>
		                        </span>
		                        <div class="titlelist">
		                            <time class="time"><fmt:formatDate value="${aitem.regDate}" pattern="yyyy-MM-dd"/></time>
		                        </div>
		                        </div>
		                    </div>
		                    <div class="postMain">
		                        <div class="postBody">
		                            <div class="post_text">
		                                ${aitem.articleContext} 
		                                
		                            </div>
		                            <c:set var="upFilename" value="${aitem.upFilename}"/>
		                            <c:if test="${upFilename != null}">
		                            <div class="photoRegion">
		                                <div class="photo">
		                                    <img src="${pageContext.request.contextPath}/upload/${aitem.upFilename}">
		                                </div>
		                       	     </div>
		                            </c:if>
		                            <div class="postCount">
		                                <div class="post_comment">
		                                    <button type="button" class="comment">댓글
		                                        <span class="count">${aitem.totalcomment}</span>
		                                    </button>
		                                </div>
		                            </div>
		                        </div>    
		                    </div>
		                    <div class="post_function">
		                            <button type="button" class="btn_menu" id="nModal_post${aitem.articleCode}"></button>
		                            <div id="modalLayer_post${aitem.articleCode}" class="modalLayer_post">
										<div class="modalContent_post${aitem.articleCode}" id="modalContent_post">
											 <a href="update?code=${aitem.articleCode}">수정</a>
											 <a href="${pageContext.request.contextPath}/article/delete?articleCode=${aitem.articleCode}&mCode=${item.mCode}">삭제</a>
										</div>
									</div>
		                    </div>
							<script>
								jq(document).ready(function(){
									//post button모달
									 
									  var modalLayer_post${aitem.articleCode} = jq("#modalLayer_post${aitem.articleCode}");
									  var modalLink_post${aitem.articleCode} = jq("#nModal_post${aitem.articleCode}");
									  var modalCont_post${aitem.articleCode} = jq(".modalContent_post${aitem.articleCode}");
// 									  var marginLeft = modalCont_post${aitem.articleCode}.outerWidth()/2;
// 									  var marginTop = modalCont_post${aitem.articleCode}.outerHeight()/2; 

									  modalLink_post${aitem.articleCode}.click(function(){
									    modalLayer_post${aitem.articleCode}.fadeIn("slow");
// 									    modalCont_post${aitem.articleCode}.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
									    jq(this).blur();
									    jq(".modalContent_post${aitem.articleCode} > a").focus(); 
									    return false;
									  });

									  jq(".modalContent_post${aitem.articleCode} > button").click(function(){
									    modalLayer_post${aitem.articleCode}.fadeOut("slow");
									    modalLink_post${aitem.articleCode}.focus();
									  });	
								})
							
							</script>
		                
		                
		                    
		               	  <div class="commentBox">
							<div class="reply_view">
		                        <div class="write">
									<div id= "commentlist" class="commentList${aitem.articleCode}"></div>
								</div>
							</div>	
							<section class="comment_input">
		                            <div class="commentInputLayout">
		                            <form name="commentInsertForm${aitem.articleCode}">
									        <div class="input-group">
									        	<div class ="writeWrap">
									               <input type="hidden" name="articleCode" value="${aitem.articleCode}"/>
									               <input type="hidden" name="mCode" value="${item.mCode}"/>
									         <c:if test="${sessionScope.user != null}">
									        	   <script>
		 										    jq(document).ready(function(){ 
														jq('input[name="content"]').removeAttr('disabled','disabled');
														jq('input[name="content"]').removeAttr('placeholder','로그인 후 이용하실 수 있습니다.'); 
												
												   
											
												  }); 
													
												  </script>
											</c:if>
												  <input type="text" class="form-control" name="content" placeholder="로그인 후 이용하실 수 있습니다." disabled="disabled" >
												 </div>
									               <div class="submitBtn">
									               	<button class="commentBtn" type="button" name="commentInsertBtn${aitem.articleCode}">등록</button>
									              </div>
									         </div>
									  </form>
									  </div>
									  
								</section>	        
									  <div class="btnList">
							
								<div class="btnposition">
							
<%-- 							<c:choose> --%>
<%-- 									<c:when test="${sessionScope.user == item.mId or sessionScope.user == admin}"> --%>
<%-- 										<button class="update"><a href="update?articleCode=${aitem.articleCode}">수정</a></button>	 --%>
<!-- 										<button class="delete" onclick="deleteBtn()">삭제</button> -->
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> --%>
								
<%-- 									</c:otherwise> --%>
							
<%-- 							</c:choose> --%>
							
							
							</div>	
							</div>
							<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/moment_min.js"></script>
							<script>
							
							jq(document).ready(function(){
//  								 function enterkey(){
//  									   if(window.event.keyCode ==13){
//  										   var insertData = jq('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
//  										    commentInsert(insertData); //Insert 함수호출(아래)
//  									   }
//  									};
 									
//  								function deleteBtn(){
//  								    result = confirm('정말 삭제 하시겠습니까?');
//  								    if(result == true){
//  								        location.href = 'delete?articleCode=${aitem.articleCode}';
//  								    }else{
//  								    return false;
//  								    }
//  								};
							var articleCode = ${aitem.articleCode} 
						 commentList${aitem.articleCode}(articleCode); 
						} );
							
							
						var articleCode = ${aitem.articleCode} //게시글 번호 
							 
							jq('[name=commentInsertBtn${aitem.articleCode}]').click(function(){ //댓글 등록 버튼 클릭시  
							    var insertData = jq('[name=commentInsertForm${aitem.articleCode}]').serialize(); //commentInsertForm의 내용을 가져옴 
							    commentInsert${aitem.articleCode}(insertData); //Insert 함수호출(아래) 
							});
							 
							 
							 
  							//댓글 목록  
  							function commentList${aitem.articleCode}(articleCode){ 
  							var session = '${sessionScope.user}';   
  							var admin = 'admin'; 
  							var articleCode = ${aitem.articleCode}
								
  							    jq.ajax({ 
 							        url : '/acomment/list', 
  							        type : 'get', 
  									 data : {'articleCode':articleCode}, 
  									 dataType:'JSON', 
  							        success : function(response){ 
							        	
							        	
  							            var a ='';  
  							            
  							            jq.each(response, function(key, value){  

  							            	
  							            	var cRegDate=moment(value.regDate).format('YYYY.MM.DD'); 
  							                a += '<div class="commentArea">'; 
  							                a += '<div class="writerInfo"><strong class="reply_name">'+value.id+'</strong></div>'; 
  							                a += '<div class="commentBody"><p class="reply_txt">  '+value.content +'</p>'; 
  							                a += '<time class="cRegDate">'+cRegDate+'</span></div>'; 
  							                if(value.id == session || session == admin){ 
							                	
  							                a += '<span class="commentcontroller"><a onclick="commentUpdate('+value.cno+',\''+value.content+'\');"> 수정 </a>'; 
  							                a += '<a onclick="commentDelete('+value.cno+');"> 삭제 </a></span>';} 
  							             	            
  							                a += '</div>'; 
  							            }); 
							            
  							            jq(".commentList${aitem.articleCode}").html(a); 
  							        }, 
  							        error:function(xhr,status,error){ 
							        	
  							        	console.log(xhr+status+error); 
  							        } 
  							    }); 
  							} 
							 
  							//댓글 등록 
  							function commentInsert${aitem.articleCode}(insertData){ 
 								var articleCode = ${aitem.articleCode} 
								
  							    jq.ajax({ 
 							        url : '/acomment/insert', 
  							        type : 'post', 
  							        data : insertData, 
  							        success : function(){ 
							        	
							           
  							                commentList${aitem.articleCode}(articleCode); //댓글 작성 후 댓글 목록 reload 
  							                jq('[name=content]').val(''); 
							            
  							        } 
  							    }); 
  							} 
							 
  							 //댓글 수정 - 댓글 내용 출력을 input 폼으로 변경  
  							function commentUpdate(cno, content){ 
								 
  							    var a =''; 
							    
  							    a += '<div class="input-group">'; 
  							    a += '<input type="text" class="form-control" id="content" name="content_'+cno+'" value="'+content+'"/>'; 
  							    a += '<span class="input-group-btn"><button class="commentBtn" id="cUpdateBtn" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>'; 
  							    a += '</div>'; 
							    
  							    jq('.commentContent'+cno).html(a); 
							    
  							} 
							 
  							//댓글 수정 
  							function commentUpdateProc${aitem.articleCode}(cno){ 
  							    var updateContent = jq('[name=content_'+cno+']').val(); 
							    
  							    jq.ajax({ 
 							        url : '/acomment/update', 
  							        type : 'post', 
  							        data : {'content' : updateContent, 'cno' : cno}, 
  							        success : function(data){ 
  							            if(data == 1) commentList${aitem.articleCode}(articleCode); //댓글 수정후 목록 출력  
  							        } 
  							    }); 
  							}; 
							 
  							//댓글 삭제  
  							function commentDelete(cno){ 
  							    jq.ajax({ 
 							        url : '/acomment/delete/'+cno,
  							        type : 'post', 
  							        success : function(data){ 
  							            if(data == 1) commentList${aitem.articleCode}(articleCode); //댓글 삭제후 목록 출력  
  							        } 
  							    }); 
  							}; 
//   							function commentCount${aitem.articleCode}(articleCode){
//   								jq.ajax({
//   									url: '/acomment/count',
//   									type : 'get',
//   									data:{'articleCode' : articleCode},
//    									 dataType:'JSON', 
//    							        success : function(data){ 
  							        	
//    							        	alert(data);
  							        	
//    							        }, 
//    							        error:function(xhr,status,error){ 
  							        	
//    							        	alert(xhr+status+error); 
//    							        } 
//    							    }); 
//    							} 
							 
							 
							 
  							jq(document).ready(function(){ 
  							    commentList${aitem.articleCode}(); //페이지 로딩시 댓글 목록 출력  
//   							  	commentCount${aitem.articleCode}();
  							}); 
							   
							 
							 
							</script>
									  
						</div>
					</div>
					</c:forEach>
               	</c:when>
                		<c:otherwise>
                			<div class="no_content">
                				<img src="${pageContext.request.contextPath}/resources/images/no.png">
                				<h1>등록된 글이 없습니다.</h1>
                				<p>게시글을 남겨 다른 회원들과 이야기를 나눠보세요</p>
                			</div>
                		</c:otherwise>
         	  </c:choose>		
		               </div> 
		                 
		           </section>
           		</main>
          
<!--//      공지글      //-->
			<div class="ex">
            <div class="community">
                <div class="notice"><span style="color: red;">※</span> 공지<a href="#modallayer1" id="nModal1"><img src="${pageContext.request.contextPath}/resources/images/board_more.jpg"></a></div>
                	<c:choose>
						<c:when test="${nlist.size()>0}">
							<c:forEach end="1" var="nitem" items="${nlist}">
                				<li>${nitem.noticeTitle}</li>
                			</c:forEach>
                		</c:when>
                		<c:otherwise>
                				<li>등록된 공지가 없습니다.</li>
                		</c:otherwise>
                	</c:choose>
                	 	<div id="modalLayer1">
                	 		  <div class="modalContent1">
	                	 		  <div class="noticeViewTitle">
										<h1>공지사항</h1>
										<button class="notice_close" id="notice_close">[닫기]</button>
								  </div>
                	 		  	<iframe src="/notice/view/${item.mCode}" width="540px" height="1000px" 
					               frameborder=0  marginheight=0 marginwidth=0 scrolling=no vspace=0 framespacing=0 ></iframe>
					            <input type="hidden" name="mCode" value="${item.mCode}">
					            <input type="hidden" name="mName" value="${item.mName}">


							 </div>
						</div>
					
                </div>
            <div class="review">
                <div class="review_write"><span style="color: red;">※</span> 후기<a href="#modallayer4" id="nModal4"><img src="${pageContext.request.contextPath}/resources/images/board_more.jpg"></a></div>
                	<c:choose>
						<c:when test="${rlist.size()>0}">
							<c:forEach end="1" var="ritem" items="${rlist}">
                				<li>${ritem.reviewTitle}</li>
                			</c:forEach>
                		</c:when>
                		<c:otherwise>
                				<li>등록된 후기가 없습니다.</li>
                		</c:otherwise>
                	</c:choose>
					<div id="modalLayer4">
                	 		  <div class="modalContent4">
                	 		  	<div class="reviewViewTitle">
										<h1>후기 게시판</h1>
										<button class="review_close" id="review_close">[닫기]</button>
								  </div>
                	 		  	<iframe src="/review/view/${item.mCode}" width="540px" height="1000px" 
					               frameborder=0  marginheight=0 marginwidth=0 scrolling=no vspace=0 framespacing=0 ></iframe>
					            <input type="hidden" name="mCode" value="${item.mCode}">
					            <input type="hidden" name="mName" value="${item.mName}">
                	 		  	
                	 		  	</div>	
                	</div>
           		</div>
			</div>
            
            
        </main>
        </div>   
        
    </body>
    </html>