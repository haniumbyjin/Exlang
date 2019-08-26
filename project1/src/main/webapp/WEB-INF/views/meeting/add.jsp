<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="sessionCheck.jsp"%>
<%@ include file="login2.jsp"%>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/create_meeting.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
<script>


// $(document).ready(function(){
//    var fileTarget = $('.filebox .upload-hidden');

//     fileTarget.on('change', function(){
//         if(window.FileReader){
//             // 파일명 추출
//             var filename = $(this)[0].files[0].name;
//         } 

//         else {
//             // Old IE 파일명 추출
//             var filename = $(this).val().split('/').pop().split('\\').pop();
//         };

//         $(this).siblings('.upload-name').val(filename);
//     });

//     //preview image 
//     var imgTarget = $('.preview-image .upload-hidden');

//     imgTarget.on('change', function(){
//         var parent = $(this).parent();
//         parent.children('.upload-display').remove();

//         if(window.FileReader){
//             //image 파일만
//             if (!$(this)[0].files[0].type.match(/image\//)) return;
            
//             var reader = new FileReader();
//             reader.onload = function(e){
//                 var src = e.target.result;
//                 parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
//             }
//             reader.readAsDataURL($(this)[0].files[0]);
//         }

//         else {
//             $(this)[0].select();
//             $(this)[0].blur();
//             var imgSrc = document.selection.createRange().text;
//             parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

//             var img = $(this).siblings('.upload-display').find('img');
//             img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
//         }
//     });
// });

</script>
</head>
 <header class="head">
            <div class="header">
                    <a href="/" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/logo_2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/meeting/add">모임 만들기</a></li>
                        <li><a href="${pageContext.request.contextPath}/meeting/list">모임 가입하기</a></li>
                        <li><a href="/calender/view">MY 캘린더</a></li>
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
				               <li><a class="custpage1" href="/login">로그인</a></li>
				               <li>|</li>
				            	<li><a class="custpage2" href="${pageContext.request.contextPath}/acceptTerms">회원가입</a></li>
			               </c:otherwise>
			           </c:choose>
                    </ul>
                </nav>
            </div>
                <hr width=100% class="line">
            </div>
            <div>
                <ul class="home">
                    <li><a href="/">Home<img src="${pageContext.request.contextPath}/resources/images/nav.png" class="nav_next"></a></li>
                    <li><a href="/meeting/add">모임 만들기</a></li>
                </ul>
            </div>
        </header>
            <div class="meeting_join">
                <div class="creat">
                    <h1>모임 만들기</h1>   
                </div>
            <div class="mt_body">
                <form id=joinInput name="joinInput" action="add" method="post" enctype="multipart/form-data">
                    <div class="join">
                        <div class="box_info">
                            <img src="${pageContext.request.contextPath}/resources/images/one_step.png">
                            <p>1/5단계</p>
                            <dl class="item_info">
                                <dt>
                                    <label for="inpArea" class="lab_info">새로운 모임의 주 지역은 어디인가요?</label>
                                </dt>
                                <dd>
                                    <div class="wrap_inp">
                                        <label for="Area"></label>
                                        <input type="text" id="Area" name="mLocation" class="inp_info" value autocomplete="off" maxlength="10" style="font-size: 20px;">
                                    </div>
                                </dd>
                            </dl>
                        </div>
                        <div class="box_info2">
                            <img src="${pageContext.request.contextPath}/resources/images/two_step.png">
                            <p>2/5단계</p>
                            <dl class="item_info2">
                                <dt>
                                    <label for="inpArea" class="lab_info">어떤 주제와 관련된 모임인가요?</label>
                                </dt>
                                <p2> 카테고리를 골라주세요</p2>
                                <div class="inline">
                                <dd class="border">
                                    <label for="animal" class="txt_border">동물</label>
                                    <input type="radio" id="animal" value="동물" name="mCategory">
                                </dd>
                                 <dd class="border">
                                    <label for="exercise" class="txt_border">운동</label>
                                    <input type="radio" id="exercise" value="운동" name="mCategory">
                                </dd>
                                 <dd class="border">
                                    <label for="reding" class="txt_border">독서</label>
                                    <input type="radio" id="reding" value="독서" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="game" class="txt_border">게임</label>
                                    <input type="radio" id="game" value="게임" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="movie" class="txt_border">영화</label>
                                    <input type="radio" id="movie" value="영화" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="language" class="txt_border">어학</label>
                                    <input type="radio" id="language" value="어학" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="music" class="txt_border">음악</label>
                                    <input type="radio" id="music" value="음악" name="mCategory">
                                </dd>
                                 <dd class="border">
                                    <label for="theater" class="txt_border">연극</label>
                                    <input type="radio" id="theater" value="연극" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="beauty" class="txt_border">미용</label>
                                    <input type="radio" id="beauty" value="미용" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="friendship" class="txt_border">친목</label>
                                    <input type="radio" id="friendship" value="친목" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="fashion" class="txt_border">패션</label>
                                    <input type="radio" id="fashion" value="패션" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="culture" class="txt_border">예술</label>
                                    <input type="radio" id="culture" value="예술" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="beauty" class="txt_border">등산</label>
                                    <input type="radio" id="climing" value="등산" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="health" class="txt_border">건강</label>
                                    <input type="radio" id="health" value="건강" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="travel" class="txt_border">여행</label>
                                    <input type="radio" id="travel" value="여행" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="economy" class="txt_border">경제</label>
                                    <input type="radio" id="economy" value="경제" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="broadcast" class="txt_border">연예</label>
                                    <input type="radio" id="broadcast" value="연애" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="religion" class="txt_border">종교</label>
                                    <input type="radio" id="religion" value="종교" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="cartoon" class="txt_border">만화</label>
                                    <input type="radio" id="cartoon" value="만화" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="education" class="txt_border">교육</label>
                                    <input type="radio" id="education" value="교육" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="employment" class="txt_border">취업</label>
                                    <input type="radio" id="employment" value="취업" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="cooking" class="txt_border">요리</label>
                                    <input type="radio" id="cooking" value="요리" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="nature" class="txt_border">자연</label>
                                    <input type="radio" id="nature" value="자연" name="mCategory">
                                </dd>
                                <dd class="border">
                                    <label for="politics" class="txt_border">정치</label>
                                    <input type="radio" id="politics" value="정치" name="mCategory">
                                </dd>   
                                </div>
                            </dl>
                        </div>
                        <div class="box_info3">
                            <img src="${pageContext.request.contextPath}/resources/images/thr_step.png">
                            <p>3/5단계</p>
                            <dl class="item_info3">
                                <dt>
                                    <label for="inpArea" class="lab_info" >모임의 이름을 정해주세요.</label>
                                </dt>
                                <dd>
                                    <div class="wrap_inp">
                                        <label for="Area"></label>
                                        <input type="text" id="Area" name="mName" class="inp_info" value autocomplete="off" maxlength="20" style="font-size: 20px;">
                                    </div>
                                </dd>
                                <dt style="margin: 30px 0 0 0;">
                                    <label for="inpArea" class="lab_info2">간단히 한줄소개를 작성해주세요.</label>
                                </dt>
                                <dd>
                                    <div class="wrap_inp">
                                        <label for="Area"></label>
                                        <input type="text" id="Area" name="mIntro" class="inp_info" value autocomplete="off" maxlength="10" style="font-size: 20px;">
                                    </div>
                                </dd>
                            </dl>
                        </div>
                         <div class="box_info4">
                            <img src="${pageContext.request.contextPath}/resources/images/camera.png">
                            <p>4/5단계</p>
                            <dl class="item_info">
                                <dt>
                                    <label for="inpArea" class="lab_info">커버 이미지를 선택해 주세요.</label>
                                </dt>
                                <dd>
                                    <div class="wrap_inp">
                                        <label for="file"></label>
                                        <input type="file" id="input_file" class="upload-hidden" name="uploadFile"> 
                                    </div>
                                </dd>
                            </dl>
                        </div>
                        <div class="box_info3">
                            <img src="${pageContext.request.contextPath}/resources/images/four_step.png">
                            <p>5/5단계</p>
                            <dl class="item_info3">
                                <dt>
                                    <label for="inpArea" class="lab_info">모임의 주최자가 지켜야 할 사항</label>
                                </dt>
                                <ul>
                                    <li>회원을 가장 우선으로 하기</li>
                                    <li>서로를 존중하고 예의를 갖추어 대하기</li>
                                    <li>목적은 언제나 정직하고 투명하게</li>
                                </ul>
                            </dl>
                        </div>
                        <button type="submit" class="btn_type">등록하기</button>
                    </div>    
                </form>       
            </div>    
        </div>
        <footer class="footer">
              <div class="main_footer">
                 <nav class="footer_menu>">
                    <ul class="flex">
                        <li>
                            <a href="#"><span class="yellow">개인정보처리방침</span></a> 
                        </li>
                        <li>
                            <a href="#">이용약관</a> 
                        </li>
                        <li>
                            <a href="#">저작권정책</a> 
                        </li>
                        <li>
                            <a href="#">사이트맵</a> 
                        </li>
                     </ul>
                  </nav>
                  <div class="address">
                    <div class="add_text">
                       <p>본 홈페이지에 게시된 이메일 주소가 자동으로 수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 처벌됨을 유념하시길 바랍니다.
                        <br>(34503)대전광역시 동구 우암로 352-21/TEL.010-2303-0735
                        <br>Copyright(C) MOMENT.All rights reserved.</p>
                      </div>
                      <div class="footer_logo">
                        <img src="${pageContext.request.contextPath}/resources/images/footer_logo.png">
                      </div>
                  </div>
                </div>  
            </footer>
    </body>
</html>