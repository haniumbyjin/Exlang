<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <meta charset="utf=8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

  
<style>

/* .mask{width:100%; height:100%; position:fixed; left:0; top:0; z-index:10; background:#000; opacity:.5; filter:alpha(opacity=50);} */




</style> 

<script type="text/javascript">
// $(function() {
	
// 	   $(".submitBtn").on('click',function(){ 	
// 		    var str = ""
// 		    var tdArr = new Array();	// 배열 선언
// 			var submitbtn = $(this);

// 		    var tr = submitBtn.parent().parent();
// 			var td = tr.children();
	    	
// 			var mCode = td.eq(0).text();
			
// 			td.each(function(i){	
// 				tdArr.push(td.eq(i).text());
// 			});
// 	 		alert("12344");
// 	 	    document.form1.submit();
// 	});
// 	   $(".btnSubmit").on('click',function(){ 
// 		   var mCode = this.getAttribute('data-code');
// // 		   alert(mCode);
// 		   $.ajax({
// 			   type: 'POST',
// 		   		dataType: 'text',
// 		   		data: {mCode : mCode},
// 		   		contentType: 'application/json',
// 		   		url:'/meeting/memadd',
// 		   		success:function(response){
// 		   			alert('success');
// 		   		}
// 		   })
// 		   });

//   $(document).ready(function(){
//   var modalLayer${item.mCode} = $("#modalLayer${item.mCode}");
//   var modalLink${item.mCode} = $(".modalLink${item.mCode}");
//   var modalCont${item.mCode} = $(".modalContent${item.mCode}");
//   var marginLeft= modalCont.outerWidth()/2;
//   var marginTop = modalCont${item.mCode}.outerHeight()/2; 

//   modalLink${item.mCode}.click(function(){
//     modalLayer${item.mCode}.fadeIn("slow");
//     modalCont${item.mCode}.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
//     $(this).blur();
//     $(".modalConten${item.mCode}t > a").focus(); 
//     return false;
//   });

//   $(".modalContent${item.mCode} > button").click(function(){
//     modalLayer${item.mCode}.fadeOut("slow");
//     modalLink${item.mCode}.focus();
//  	 });		
//   });
//카테고리 박스 모달
  $(document).ready(function(){
	  var modalLayer1 = $("#modalLayer1");
	  var modalLink1 = $(".modalLink1");
	  var modalCont1 = $(".modalContent1");
	  var marginLeft1 = modalCont1.outerWidth()/2;
	  var marginTop1 = modalCont1.outerHeight()/2; 

	  modalLink1.click(function(){
	    modalLayer1.fadeIn("slow");
	    modalCont1.css({"margin-top" : -marginTop1, "margin-left" : -marginLeft1});
	    $(this).blur();
// 	    $(".modalContent1 > a").focus(); 
	    return false;
	  });

	  $("body").click(function(e){
			if(!$(e.target).hasClass("modalLayer1") && !$(e.target).parents().hasClass("modalLayer1")){
		    modalLayer1.fadeOut("slow");
// 		    modalLink1.focus();
			}
		     });
	 	 });		
	
			

 



</script>

                                    	
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join_meeting.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<title>모임리스트</title>
</head>
<%@ include file="login2.jsp"%>
<body>

 <header class="head">
            <div class="header">
                    <a href="/" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/logo_2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/meeting/add">모임 만들기</a></li>
                        <li><a href="${pageContext.request.contextPath}/meeting/list">모임 가입하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendar/view">MY 캘린더</a></li>
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
                <hr width=100% class="line">
            </div>
           
        </header>
            <div class="meeting_join">
                <div class="join">
                    
                </div>
                <section class="searchbox">
                <div class="category_box">
                	<div class="category_logo">
                		<a href="#modalLayer1" class="modalLink1">
                			<img src="${pageContext.request.contextPath}/resources/images/category_logo.png">
                			<c:choose>
	                			<c:when test="${category != null}">
	                				<h1 class="notall">${category}</h1>
	                			</c:when>
	                			<c:otherwise>
	                				<h1 class="all">카테고리</h1>
	                			</c:otherwise>
	                		</c:choose>
                		</a>
                	</div>
                	<div id="modalLayer1">
						<div class="modalContent1">
                	        <div class="swiper-slide">
	                           <a href="/meeting/list?name=운동" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/exercise.png" alt="운동" class="pic">
	                              <p class="name">운동</p>
	                            </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=독서" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/reading.png" alt="독서" class="pic">
	                               <p class="name">독서</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=요리" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/cooking.png" alt="요리" class="pic">
	                               <p class="name">요리</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=연극" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/theater.png" alt="연극" class="pic">
	                               <p class="name">연극</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=영화" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/movie.png" alt="영화" class="pic">
	                               <p class="name">영화</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=미용" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/beauty.png" alt="미용" class="pic">
	                               <p class="name">미용</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=음악" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/music.png" alt="음악" class="pic">
	                               <p class="name">음악</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=게임" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/game.png" alt="게임" class="pic">
	                               <p class="name">게임</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=예술" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/culture.png" alt="예술" class="pic">
	                               <p class="name">예술</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=친목" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/friendship.png" alt="친목도모" class="pic">
	                               <p class="name">친목</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=패션" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/fashion.png" alt="패션/스타일" class="pic">
	                               <p class="name">패션</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=어학" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/language.png" alt="어학" class="pic">
	                               <p class="name">어학</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=등산" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/climing.jpg" alt="등산" class="pic">
	                               <p class="name">등산</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=건강" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/health.png" alt="건강" class="pic">
	                               <p class="name">건강</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=동물" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/animal.png" alt="동물" class="pic">
	                               <p class="name">동물</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=여행" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/travel.png" alt="여행" class="pic">
	                               <p class="name">여행</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=자연" class="inner" >
	                              <img src="${pageContext.request.contextPath}/resources/images/nature.png" alt="자연" class="pic">
	                               <p class="name">자연</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=경제" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/economy.png" alt="경제" class="pic">
	                               <p class="name">경제</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=종교" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/religion.png" alt="종교" class="pic">
	                               <p class="name">종교</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=만화" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/cartoon.png" alt="만화" class="pic">
	                               <p class="name">만화</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=연애" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/broadcast.png" alt="연예" class="pic">
	                               <p class="name">연예</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=교육" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/education.png" alt="교육" class="pic">
	                               <p class="name">교육</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=정치" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/politics.png" alt="정치" class="pic">
	                               <p class="name">정치</p>
	                             </a>    
	                        </div>
	                           <div class="swiper-slide">
	                           <a href="/meeting/list?name=취업" class="inner">
	                              <img src="${pageContext.request.contextPath}/resources/images/employment.png" alt="취업" class="pic">
	                               <p class="name">취업</p>
	                             </a>    
	                        </div>
                       </div>
	                </div>
				</div>                 
                	<div class="search_box">
                    <form>                       
                        <div class="search">
                            
                            <input type="text" id="search" name="search" class="search_input" >
                           
                        

                        <button type="submit" class="btn_type">검색</button>
                        </div>
                    </form>
                    
                    </div>
                </section>
                <div>
				<section class="result_box">
                    <ul class="result_list">
                       <c:choose>
							<c:when test="${list.size() > 0 }">
								<c:forEach var="item" items="${list}">
                            <li>
                            	<article class="list">
		                     
                                    <div class="event_list">
                                        <a href="view/${item.mCode}"><img src="${pageContext.request.contextPath}/upload/${item.mFilename}" class="img"></a>
                                    </div>
                                    <div class="event_category">
                                    
                                    	<input type="hidden"  name="mCode" id="mCode" value="${item.mCode}">
			                          
                                    	
                                    	
                                    	
                                        <div class="mt_name">
                                            <h2><a href="view/${item.mCode}">${item.mName}</a></h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>${item.mCategory}</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#modalLayer${item.mCode}" class="modalLink${item.mCode}"><h2>가입하기</h2></a>
                                             
<!-- 												<a href="" onclick="memadd()"><h2>가입하기</h2></a> -->
                                            
                                        </div>
                                        <div class="date">${item.mId}</div>
                                        
                                        </div>
                                        <div class="event_title">
	                                        <div class="title">
	                                            <h1>${item.mIntro}</h1>   
	                                        </div>
                                        </div>
                                  <form action="memadd" method="post" id="form1">
                                  	<div id="modalLayer${item.mCode}" class="modalLayer">
										  <div class="modalContent${item.mCode}" id="modalContent">
										  	<div>
										  		<input name="mmId" value="${sessionScope.user}">
										  		<input name="mCode" value="${item.mCode}">
										  	</div>
										    <div>
										    	<label></label>
										    	<input type="text">
										    </div>
										    <div>
										    	<input type="text">
										    </div>
										    <div>
										    	<input type="text">
										    </div>
										   
										    <button type="button">닫기</button>
										    <button type="submit">가입하기</button>										 
										    </div>
									</div>
                                  </form>
                                  <script>
                                  $(document).ready(function(){
                                	  var modalLayer${item.mCode} = $("#modalLayer${item.mCode}");
                                	  var modalLink${item.mCode} = $(".modalLink${item.mCode}");
                                	  var modalCont${item.mCode} = $(".modalContent${item.mCode}");
                                	  var marginLeft= modalCont${item.mCode}.outerWidth()/2;
                                	  var marginTop = modalCont${item.mCode}.outerHeight()/2; 

                                	  modalLink${item.mCode}.click(function(){
                                	    modalLayer${item.mCode}.fadeIn("slow");
                                	    modalCont${item.mCode}.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
                                	    $(this).blur();
                                	    $(".modalConten${item.mCode}t > a").focus(); 
                                	    return false;
                                	  });

                                	  $(".modalContent${item.mCode} > button").click(function(){
                                	    modalLayer${item.mCode}.fadeOut("slow");
                                	    modalLink${item.mCode}.focus();
                                	 	 });		
                                	  });
                                  </script>
                           	 	</article>
                           	 </li>
                           	  </c:forEach>
							</c:when>
						<c:otherwise>
							
							<div class="no_content">
								<div class="no_conimg">
                				<img src="${pageContext.request.contextPath}/resources/images/no.png">
                				</div>
								<h1>등록된 모임이 없습니다.</h1>
							</div>
							
						</c:otherwise>
					</c:choose>
                       
			         </ul>
			        </section>
			    </div>    
                </div>
                <div class="pagination">
                    <div class="page">
                    <div class="page_prev">
                            <img src="${pageContext.request.contextPath}/resources/images/page_prev.png">
                            <a href="#" class="btn_prev">이전</a>
                        </div>    
                        <div class="number">    
                            <a href="#" class="page_number" data-page="1">1</a>
                            <a href="#" class="page_number" data-page="2">2</a>
                        </div>
                        <div class="page_next">    
                            <a href="#" class="btn_next">다음</a>
                            <img src="${pageContext.request.contextPath}/resources/images/page_next.png">
                        </div>
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
