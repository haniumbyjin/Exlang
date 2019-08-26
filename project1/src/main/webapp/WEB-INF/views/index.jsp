<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="login2.jsp"%>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
 	<link href="resources/css/index.css" rel="stylesheet" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"> --%>
<style>

</style>
  <script>
//   $(document).ready(function(){
// 		$(".login_btn").click(function(){
// 			login();
		
// 		});	

// 	//로그인 모달
// 		  var modalLayer_login = $(".modalLayer_login");
// 		  var modalLink_login = $("#nModal_login");
// 		  var modalCont_login = $(".modalContent_login");
// 		  var marginLeft_login = modalCont_login.outerWidth()/2;
// 		  var marginTop_login = modalCont_login.outerHeight()/2; 
// 		  modalLink_login.click(function(){
// 		    modalLayer_login.fadeIn("slow");
// 		    modalCont_login.css({"margin-top" : -marginTop_login, "margin-left" : -marginLeft_login});
// 		    $(this).blur();
// 		    $(".modalContent_login > a").focus(); 
// 		    return false;
// 		  });

// 		  $("body").click(function(e){
// 			if(!$(e.target).hasClass("modalLayer_login") && !$(e.target).parents().hasClass("modalLayer_login")){
// 		    modalLayer_login.fadeOut("slow");
// 		    modalLink_login.focus();
// 			}
// 		     });
		
		
			
//   });
  



// 		function enterkey(){
// 			   if(window.event.keyCode ==13){
// 			      login();
// 			   }
// 			}

// 		function login(){
// 			var id = document.getElementById('id').value;
// 			var pw= document.getElementById('pw').value;

// 			if(id==""){
// 				alert('아이디를 입력해 주세요');
// 				form.id.focus();
// 			}else if(pw==""){
// 				alert('비밀번호를 입력해 주세요');
// 				form.pw.focus();
// 			}else{
// 				var id = document.getElementById('id').value;
// 				var pw= document.getElementById('pw').value;
// 				$.ajax({
// 					url:'loginChk',
// 					type:'post',
// 					data:{
// 						'id':id,
// 						'pw':pw
// 					},
// 					success:function(data){
// 						if(data == true){
// 							alert('환영합니다.');
// 							window.location.href="/";
// 						}else{
// 							alert('아이디나 비밀번호를 확인하세요.');
// 							return;
// 						}
// //		 				form.submit();
// 					}
// 				});
// 			}
// 		}

  </script>
</head>
<body>
        <div id="container">  
            <header ciass="main">
                <div class="mainback">
                    <div class="main-manu">
                    <a href="/" class="logo"> <img src="resources/images/logo.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                        <li><a href="/meeting/add">모임 만들기</a></li>
                        <li><a href="/meeting/list">모임 가입하기</a></li>
                        <li><a href="/calendar/calview">MY 캘린더</a></li>
                        <li><a href="/article/list">주제별 찾기</a></li>
                    </ul>
                </nav>   
            <div class= "login">
                <nav class="navi2">
                    <ul class="navi2-login">
                         <c:choose>
			               <c:when test="${sessionScope.user != null || sessionScope.admin != null }">
				               <li><a class="custpage1" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
				               <li>|</li>
				               <li><a class="custpage3" href="${pageContext.request.contextPath}/mypage/view">Mypage</a></li> 
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
                <h2>당신의 일정을 관리해드립니다.</h2>
                <p>MOMENT는 모임 멤버와 함께하는 공간입니다.
                <br>모임만의 일정을 관리해보세요.</p>
                </div>    
                </header>
        <section class= "container2">
            <div class= "content-top">
                <ul class= "planlist">
                    <div class="list">
                    <div class="explan">
                        <a href="/meeting/list"><img src="resources/images/teamwork.png" class= "image" alt="모임 가입하기" ></a>
                            <div class="title">
                            <h2>모임 가입하기</h2>
                            <p>나와 같은 관심사를 <br>가진 사람과 함께해보세요.</p>
                        </div>
                    </div>
                    <div class="explan2">
                        <a href="/meeting/add"><img src="resources/images/conference.png" class= "image" alt="모임 만들기" ></a>
                            <div class="title">
                            <h2>모임 만들기</h2>
                            <p>함께 하고 싶은 사람과 <br>우리만의 공간을 만들어보세요.</p>
                        </div>
                    </div>
                    <div class="explan3">
                        <a href="calendar/view"><img src="resources/images/calendar.png" class= "image" alt="캘린더" ></a>
                            <div class="title">
                            <h2>MY 캘린더</h2>
                            <p>나만의 캘린더로 <br>일정을 관리해보세요.</p>
                        </div>
                    </div>
                </div>
                </ul>      
            </div>        
        </section>
            
            <section class="keyword">
                <h1 class="kw_title"><span class="sub">주제별</span> 찾기</h1>
                <div class="keywordWrap">
                   <div class="swiper-container">
                        <div class="swiper-wrapper">
<!--                           <a href="#"><img src="resources/images/prev.jpg" class="prev"></a>  -->
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=운동" class="inner">
                              <img src="resources/images/exercise.png" alt="운동" class="pic">
                               <p class="name">운동</p>
                            </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=독서" class="inner">
                              <img src="resources/images/reading.png" alt="독서" class="pic">
                               <p class="name">독서</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=요리" class="inner">
                              <img src="resources/images/cooking.png" alt="요리" class="pic">
                               <p class="name">요리</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=연극" class="inner">
                              <img src="resources/images/theater.png" alt="연극" class="pic">
                               <p class="name">연극</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=영화" class="inner">
                              <img src="resources/images/movie.png" alt="영화" class="pic">
                               <p class="name">영화</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=미용" class="inner">
                              <img src="resources/images/beauty.png" alt="미용" class="pic">
                               <p class="name">미용</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=음악" class="inner">
                              <img src="resources/images/music.png" alt="음악" class="pic">
                               <p class="name">음악</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=게임" class="inner">
                              <img src="resources/images/game.png" alt="게임" class="pic">
                               <p class="name">게임</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=예술" class="inner">
                              <img src="resources/images/culture.png" alt="예술" class="pic">
                               <p class="name">예술</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=친목" class="inner">
                              <img src="resources/images/friendship.png" alt="친목도모" class="pic">
                               <p class="name">친목</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=패션/스타일" class="inner">
                              <img src="resources/images/fashion.png" alt="패션/스타일" class="pic">
                               <p class="name">패션</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=여학" class="inner">
                              <img src="resources/images/language.png" alt="어학" class="pic">
                               <p class="name">어학</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=등산" class="inner">
                              <img src="resources/images/climing.jpg" alt="등산" class="pic">
                               <p class="name">등산</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=건강" class="inner">
                              <img src="resources/images/health.png" alt="건강" class="pic">
                               <p class="name">건강</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=동물" class="inner">
                              <img src="resources/images/animal.png" alt="동물" class="pic">
                               <p class="name">동물</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=여행" class="inner">
                              <img src="resources/images/travel.png" alt="여행" class="pic">
                               <p class="name">여행</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=자연" class="inner" >
                              <img src="resources/images/nature.png" alt="자연" class="pic">
                               <p class="name">자연</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=경제" class="inner">
                              <img src="resources/images/economy.png" alt="경제" class="pic">
                               <p class="name">경제</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=종교" class="inner">
                              <img src="resources/images/religion.png" alt="종교" class="pic">
                               <p class="name">종교</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=만화" class="inner">
                              <img src="resources/images/cartoon.png" alt="만화" class="pic">
                               <p class="name">만화</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=연애" class="inner">
                              <img src="resources/images/broadcast.png" alt="연예" class="pic">
                               <p class="name">연예</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=교육" class="inner">
                              <img src="resources/images/education.png" alt="교육" class="pic">
                               <p class="name">교육</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=정치" class="inner">
                              <img src="resources/images/politics.png" alt="정치" class="pic">
                               <p class="name">정치</p>
                             </a>    
                        </div>
                           <div class="swiper-slide">
                           <a href="/meeting/list?name=취업" class="inner">
                              <img src="resources/images/employment.png" alt="취업" class="pic">
                               <p class="name">취업</p>
                             </a>    
                        </div>
<!--                            <a href="#"><img src="resources/images/next.jpg" class="next"></a>-->
<!--                            <ul class="sub_more">   -->
<!--                         <li><a href="/meeting/add">더보기<img src="resources/images/best_more.png" class="sub_more2" alt="더보기"></a></li> -->
<!--                           </ul> -->
                        
                        </div>
                         <!-- Add Pagination -->
					    <div class="swiper-pagination"></div>
					    <!-- Add Arrows -->
<!-- 					    <div class="swiper-button-next"></div> -->
<!-- 					    <div class="swiper-button-prev"></div> -->
                    </div>   
<!--                     	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.js"></script> -->
						<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
                    <script>
						 var swiper = new Swiper('.swiper-container', {
							  slidesPerView: 6,
						      spaceBetween: 5,
						      slidesPerGroup: 6,
						      loop: true,
						      loopFillGroupWithBlank: true,
						      pagination: {
						        el: '.swiper-pagination',
						        clickable: true,
						      },
						      navigation: {
						        nextEl: '.swiper-button-next',
						        prevEl: '.swiper-button-prev',
						      },
						      autoplay: 5000,
						        autoplayDisableOnInteraction: true, // 쓸어 넘기거나 버튼 클릭 시 자동 슬라이드 정지.
						    });
					 </script>
						
                </div>
                
            </section>
            
            <section class="popularity">
                    <ul class="poplist">
                      <div class="list2">  
                <div class="pop1">
                <img src="resources/images/TOP3.jpg" class="pop_img" alt="모임 아이콘">
                </div>
                        
                <h1 class="pop_title">가장 인기있는 모임<span class="sub"> TOP3</span></h1>
                    
                    <div id="top_ping">
                    <div class="top">
                        <P class="top_title">Picture_story</P>
                        <a href="#"><img src="resources/images/photo.png" class="pop_image" alt="인기 사진 모임"></a>
                        <P class="top_store">사진 작가 지망생들의 이야기</P>
                    </div>
                    <div class="top2">
                        <P class="top_title">영화인들을 위한 모임</P>
                        <a href="#"><img src="resources/images/movie.png" class="pop_image" alt="인기 영화 모임"></a>
                        <P class="top_store">같이 영화 보고 이야기 하실 분 구합니다</P>
                    </div>
                    <div class="top3">
                        <P class="top_title">낚시광들의 스토리</P>
                        <a href="#"><img src="resources/images/fising.png" class="pop_image" alt="인기 낚시 모임"></a>
                        <P class="top_store">대어를 향한 우리들의 이야기</P>
                    </div> 
                          
                        <ul>  
                        <li><a href="#">더보기<img src="resources/images/more.jpg" class="pop_img2" alt="더보기"></a></li>
                          </ul>
                            </div>
                          </div>
                    </ul>    
            </section>
            
            <section class="Best Metting">
                <div class="list3">
                <div class="pop1">
                <img src="resources/images/TOP3.jpg" class="pop_img" alt="모임 아이콘">
                </div>
                     <h1 class="pop_title"><span class="sub"> BEST</span>모임</h1>
                    
                    <div class="best_ping">
                    <article class="best">
                        <h3>Picture_story</h3>
                        <a href="#"><img src="resources/images/photo.png" class="metting" alr="베스트 사진 모임"></a>
                        <p>사진 작가 지망생들의 이야기 <br>멤버 56 <img src="resources/images/bool.jpg"> 모임장 수진</p>
                        <a href="#" class="moreBandLink"><strong>사진</strong> 밴드 더보기</a>
                    </article>
                    <article class="best2">
                        <h3>영화인들을 위한 모임</h3>
                        <a href="#"><img src="resources/images/movie.png" class="metting" alr="베스트 사진 모임"></a>
                        <p>같이 영화 보고 이야기 하실분을 구합니다. <br>멤버 32 <img src="resources/images/bool.jpg"> 모임장 셜록</p>
                        <a href="#" class="moreBandLink"><strong>영화</strong> 밴드 더보기</a>
                    </article>
                    <article class="best3">
                        <h3>등산하며 건강챙기기</h3>
                        <a href="#"><img src="resources/images/climing.jpg" class="metting" alr="베스트 사진 모임"></a>
                        <p>등산을 좋아하는 사람이라면 누구나!! <br>멤버 112 <img src="resources/images/bool.jpg"> 모임장 미소하나</p>
                        <a href="#" class="moreBandLink"><strong>등산</strong> 밴드 더보기</a>
                    </article>
                    <article class="best4">
                        <h3>낚시광들의 스토리</h3>
                        <a href="#"><img src="resources/images/fising.png" class="metting" alr="베스트 사진 모임"></a>
                        <p>대어를 향한 우리들의 이야기 <br>멤버 59 <img src="resources/images/bool.jpg"> 모임장 물고기리더</p>
                        <a href="#" class="moreBandLink"><strong>낚시</strong> 밴드 더보기</a>
                    </article>
                        <ul>  
                        <li><a href="/meeting/list2">더보기<img src="resources/images/best_more.png" class="best_more" alt="더보기"></a></li>
                          </ul>
                    </div>
                </div>
            </section>
            
            <footer class="footer">
              <div class="main_footer">
                 <nav class="footer_menu>">
                    <ul class="flex">
                        <li>
                            <a href="#">개인정보처리방침</a> 
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
                        <img src="resources/images/footer_logo.png">
                      </div>
                  </div>
                </div>  
            </footer>
        </div>
    </body>
</html>