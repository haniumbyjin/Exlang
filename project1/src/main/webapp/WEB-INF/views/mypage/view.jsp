<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
		
		
		$("#myinfo").click(function(){
			location.reload();
		})
		//가입한모임 모달
		  var modalLayer1 = $("#modalLayer1");
		 
		  var modalCont1 = $(".modalContent1");
		  var marginLeft = modalCont1.outerWidth()/2;
		  var marginTop = modalCont1.outerHeight()/2; 
		  $("#mymeeting").click(function(){
		    modalLayer1.fadeIn("slow");
		    modalCont1.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
		    $(this).blur();
		    
		    return false;
		  });

		  $(".modalContent1 > button").click(function(){
		    modalLayer1.fadeOut("slow");
		  
		  });
		  //내가 쓴글 모달
		  var modalLayer2 = $("#modalLayer2");
			 
		  var modalCont2 = $(".modalContent2");
		  var marginLeft = modalCont2.outerWidth()/2;
		  var marginTop = modalCont2.outerHeight()/2; 
		  $("#myarticle").click(function(){
		    modalLayer2.fadeIn("slow");
		    modalCont2.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
		    $(this).blur();
		    
		    return false;
		  });

		  $(".modalContent2 > button").click(function(){
		    modalLayer2.fadeOut("slow");
		  
		  });
		  //모임 가입 승인 모달
		  var modalLayer3 = $("#modalLayer3");
			 
		  var modalCont3 = $(".modalContent3");
		  var marginLeft = modalCont3.outerWidth()/2;
		  var marginTop = modalCont3.outerHeight()/2; 
		  $("#meetingaccept").click(function(){
		    modalLayer3.fadeIn("slow");
		    modalCont3.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
		    $(this).blur();
		    
		    return false;
		  });

		  $(".modalContent3 > button").click(function(){
		    modalLayer3.fadeOut("slow");
		  
		  });
	});
	
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <script src="./jquery-ui-1.12.1/datepicker-ko.js"></script> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
var jq = $.noConflict();
</script>
<script>
jq(document).ready(function() {
    
    jq(".datepicker").datepicker({

          showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
//           buttonImage: "images/calendar.gif",// 버튼 이미지
//           buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
          changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
          changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
          minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
          nextText: '다음 달', // next 아이콘의 툴팁.
          prevText: '이전 달', // prev 아이콘의 툴팁.
          numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
          stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가. 
          yearRange: 'c-100:c+0', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
          showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. ( ...으로 표시되는부분이다.) 
          currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
          closeText: '닫기',  // 닫기 버튼 패널
          buttonText:'선택',
          dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
          showAnim: "slide", //애니메이션을 적용한다.  
          showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
          dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
          monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.

     });
    
});

</script>
</head>
<%@ include file="../login2.jsp"%>
<body>
	<header class="head">
            <div class="header">
                    <a href="/" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                       <li><a href="${pageContext.request.contextPath}/meeting/add">모임 만들기</a></li>
                        <li><a href="${pageContext.request.contextPath}/meeting/list">모임 가입하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/calender/view">MY 캘린더</a></li>
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
					<div class="sidebar">
					
						<button class="navi_item" id="myinfo">내정보<img src="${pageContext.request.contextPath}/resources/images/range.png"></button>
		                <button class="navi_item" id="mymeeting">가입한 모임<img src="${pageContext.request.contextPath}/resources/images/range.png"></button>
		                <button class="navi_item" id="myarticle">내가 쓴글<img src="${pageContext.request.contextPath}/resources/images/range.png"></button>
		           
		               
		         
					</div>
				</section>
			</aside>
				<main id="content">
					<div class="main">
						<div class="myinfoBox">
							<div class="infoTitle">
								<div class ="info_title">
									<p>내정보</p><hr>
								</div>
							</div>
							<div class ="profile">
								<div class="uName">
									<p>이름</p> ${item.name}
									 
								</div>
								<div class="uId">
									<p>아이디 </p> ${item.id}
								</div>
								<div class="uNick">
									<p>닉네임</p> <input type="text" placeholder="${item.nickname}" id="nickupdate"> 
									<button class="nickupdate"></button>
								</div>
								<div class="uBirth">
									<p>생일</p>
									<input id="birth_input1" class="datepicker" name="birth_input1" type="text" readonly="readonly" placeholder="생년월일"/>
				                                              
			                      							
								</div>
								<div class="uPhone">
									<p>휴대폰번호</p> 
									<select id="phone1_update" name="phone1_update">
				                        <option value="010" selected="selected">010</option>
				                        <option value="011">011</option>
				                        <option value="016">016</option>
				                        <option value="019">019</option>                            
			                        </select>
			                        -<input id="phone2_update" name="phone2_update" type="number" max="9999"/>
			                         
			                        -<input id="phone3_update" name="phone3_update" type="number" max="9999"/>
			                        <button class="phoneupdate"></button>
								</div>
								<div class="uPw">
									<p>비밀번호</p>
									<input id="pw_update" name="pw" type="password" placeholder="비밀번호"/>
									<button class="pwupdate"></button>
								</div>
							</div>
						</div>
						<div id="modalLayer1">
							<div class="modalContent1">
								<iframe src="/mypage/mymeeting" width="600px" 
								frameborder=0  marginheight=0 marginwidth=0 vspace=0 framespacing=0 >
								</iframe>
							</div>
						</div>
						<div id="modalLayer2">
							<div class="modalContent2">
								<iframe src="/mypage/myarticle" width="750px" 
								frameborder=0  marginheight=0 marginwidth=0 vspace=0 framespacing=0 >
								</iframe>
							</div>
						</div>
						<div id="modalLayer3">
							<div class="modalContent3">
								<iframe src="/mypage/meetingaccept" width="750px" min-height="550px" 
					               frameborder=0  marginheight=0 marginwidth=0 scrolling=no vspace=0 framespacing=0 >
								</iframe>
							</div>
						</div>
					</div>
				</main>
				
			
		</div>
</body>
</html>