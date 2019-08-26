<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보입력</title>
 <%-- <jsp:include page="../gnb/GNB.jsp" flush="true" /> --%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <script src="./jquery-ui-1.12.1/datepicker-ko.js"></script> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    
    $(".datepicker").datepicker({

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
<script src="/resources/js/validation.js"></script>

</head>
        <body>

         <form name="add" id="signup_form" action="memberadd" method="post">
                <div id="signup_box">
                <div class=loginLogo><img src ="${pageContext.request.contextPath}/resources/images/loginLogo.png"></div>
                   	<div id="info1">
                    	<input id="name_input" name="name" type="text" minlength="2" placeholder="이름" />
                    	<hr>
                    </div>
                    
                    <div id="info2">
                        <div id="birthinput_box">
	                    	<input id="birth_input1" class="datepicker" name="birth_input1" type="text" readonly="readonly" placeholder="생년월일"/>
	                    	<hr>
	                    </div>
	                </div>    
	                
	                <div id="info3">
	                    	<label for="r1"><input id="r1" type="radio" name="gender" value="male">남</label>
	                        <label for="r2"><input id="r2" type="radio" name="gender" value="female">여</label>
	                </div>
	                                   
                    <div id="info4">
	                    <div id="idinput_box">
	                    	<li id="id_height">
	                    		<input id="id_input" name="id" type="text"/ placeholder="아이디">
	                    		<button type="button" id="id_doublecheck" onclick="idChk();"><div id="iddc_text">중복확인</div></button>
	                    		<hr>
	                    	</li>
	                    	<li class="id_text">최소 5 ~13 까지 아이디로 생성해주세요</li>
	                    </div>
	                    
                    </div>
                    
                    <div id="info4">
                    	<input id="nn_input" name="nickname" type="text" maxlength="20" placeholder="닉네임"/><button type="button" onclick="nameChk();" id="nn_doublecheck">중복확인</button>
                    	<hr>
                    </div>
                    
                    <div id="info5">
	                    <div id="pwinput_box">
	                    	<li><input id="pw_input" name="pw" type="password" placeholder="비밀번호"/></li>
	                    	<hr>
	                    	<li class="pw_text"> 최소 8~36자리 비밀번호로 생성해주세요</li>
	                    </div>
                    </div>
                    <div id="info7">
	                    <div id="pwiinput_box">
	                    	<input id="pwi_input" name="repw" type="password" placeholder="비밀번호 확인"/>
	                    	<hr>
	                    </div>
                    </div>
                    
                    <div id="info8">
                    	<div id="phone_box">
                    		휴대전화
	                    	<select id="phone1_input" name="phone1_input">
		                        <option value="010" selected="selected">010</option>
		                        <option value="011">011</option>
		                        <option value="016">016</option>
		                        <option value="019">019</option>                            
	                        </select>
	                        -<input id="phone2_input" name="phone2_input" type="number" max="9999"/>
	                         
	                        -<input id="phone3_input" name="phone3_input" type="number" max="9999"/>
	                        
	                  	</div>
                    </div>
                    
                    <div id="info9">
                    	<div id="address_box1">
                    		<input id="address1_input" name="address1_input" type="text" readonly="readonly" placeholder="주소"/>
                    		<button type="button" id="find_address" onclick="execPostCode();"><div class="find_addressText">주소선택</div></button>
                    		<hr>
                    	</div>
                    	
                    	<label id="address_box2"><input id="address2_input" name="address2_input" type="text" placeholder="상세주소"/><hr></label>
                    	
                    </div>
                           
                    <div class="confirmBtnBox">
                   		<button id="confirm_btn" type="button" onclick="MemberAdd();"><div id="confirm_text">가입완료</div></button>
                    </div>
                </div>
               
            </form>
            <div class="footer">
				<div class="footer-menu">
					<ul>
						<li>개인정보처리방침</li>
						<li>|</li>
						<li>이용약관</li>
						<li>|</li>
						<li>저작권정책</li>
						<li>|</li>
						<li>사이트맵</li>			
					</ul>
				</div>
				<div class="footer-con">
					<img src="${pageContext.request.contextPath}/resources/images/footer_logo2.png">
					<p>Copyright(C) MOMENT.All rights reserved.</p>
				</div>
			</div>
      </body>
</html>