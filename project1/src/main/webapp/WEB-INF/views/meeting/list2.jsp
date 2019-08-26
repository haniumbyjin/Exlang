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
 
<style>

.newArticle{
	color:orange;
	font-weight:bold;
}

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
// })

  function memadd(){
	  
	if(confirm("가입하시겠습니까?")){ 
	        alert("가입이 완료되었습니다."); 
	    }

	else{

	};



	
	

  };
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join_meeting.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<title>모임리스트</title>
</head>
        <header class="head">
            <div class="header">
                    <a href="/" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/logo_2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/meeting/add">모임 만들기</a></li>
                        <li><a href="#">모임 가입하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendar/view">MY 캘린더</a></li>
                        <li><a href="#">주제별 찾기</a></li>
                    </ul>
                </nav>   
            <div class= "login">
                <nav class="navi2">
                    <ul class="navi2-login">
                        <li><a href="#">로그인</a></li>
                        <li>|</li>
                        <li><a href="#">회원가입</a></li> 
                    </ul>
                </nav>
            </div>
                <hr width=100% class="line">
            </div>
            <div>
                <ul class="home">
                    <li><a href="#">Home<img src="${pageContext.request.contextPath}/resources/images/nav.png" class="nav_next"></a></li>
                    <li><a href="#">모임 가입하기</a></li>
                </ul>
            </div>
        </header>
            <div class="meeting_join">
                <div class="join">
                    <h1>모임 가입하기</h1>   
                </div>
                <section class="search_box">
                    <form name="searchBox" class ="keyword_search" action="#" method="post">
                        <div class="category_box">
                            <label class="category" for="lab_category"></label>
                            <select id="lab_category">
                                <option value="animal">동물</option>
                                <option value="exercise">운동</option>
                                <option value="reading">독서</option>
                                <option value="game">게임</option>
                                <option value="movie">영화</option>
                                <option value="language">어학</option>
                                <option value="music">음악</option>
                                <option value="theater">연극</option>
                                <option value="beauty">미용</option>
                                <option value="friendship">친목</option>
                                <option value="fashion">패션</option>
                                <option value="art">예술</option>
                                <option value="climing">등산</option>
                                <option value="health">건강</option>
                                <option value="travel">여행</option>
                                <option value="economy">경제</option>
                                <option value="entertainments">연예</option>
                                <option value="religion">종교</option>
                                <option value="cartoon">만화</option>
                                <option value="education">교육</option>
                                <option value="employment">취업</option>
                                <option value="cooking">요리</option>
                                <option value="nature">자연</option>
                                <option value="politics">정치</option>
                            </select>
                        </div>
                        <div class="Area">
                            <label for="lab_area"></label>
                            <input type="text" id="lab_area" name="area" class="inp_area" value autocomplete="off" style="font-size: 15px;" placeholder="지역">
                        </div>
                        <div class="meetingName">
                            <label for="lab_name"></label>
                            <input type="text" id="lab_name" name="name" class="inp_name" value autocomplete="off" style="font-size: 15px;" placeholder="모임이름">
                        </div>
                        <button type="submit" class="btn_type">검색</button>
                    </form>
                </section>
                <div>
                <section class="result_box">
                    <ul class="result_list">
                      <li>
                            <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/excel.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>IT 자격증 따기</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>취업</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">6.15</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>엑셀, 파워포인트 자격증 공부 하시는 분 같이 공부해요!</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                            <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/diet.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>건강 지킴이</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>건강</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">6.13</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>건강에 대한 모든 정보를 다루고 있어요! 각종 생활 정보, 질병, 식이요법까지 다 공유해요</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/cook.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>즐거운 요리 교실</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>요리</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">6.10</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>어떤 요리든! 재미있고 쉽게 가르쳐드립니다. 요리수업에 놀러오세요~! </h1>   
                                        </div>
                                    </div>
                            </article>
                    </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/LOL.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>LOL play</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>게임</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">6.8</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>롤 커뮤니티 모임! 모두 들어와서 즐겁게 게임해요! </h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/animal.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>애견인들 모여라</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>동물</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <h2>가입하기</h2>
                                            </div>
                                        <div class="date">6.5</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1> 반려견 산책 모임입니다 지역별 산책로, 애견카페, 애견운동장 좋은곳 공유 많이 해주세요</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/cartoon.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>애니 덕후</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>만화</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">6.1</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>만화를 좋아한다면 얼른 오세요~ 친목이 강한 모임 입니다. </h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/climing.jpg" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>산 정복!</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>둥산</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.31</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>같이 등산도 하고 좋은 등산로 있으면 같이 공유해봐요!</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/language.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>일본어 배우기</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>어학</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.28</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>일본어 기초 문법부터 회화, 문화, 여행등을 함께 공부하고 공유하는 모임입니다.</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/travel.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>대한민국 기차여행</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>여행</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.24</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>국내 어디든 기차타고 여행하는 기차여행 커뮤니티 모임입니다.</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/공유.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>공유 팬클럽</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>연예</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.22</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>공유 팬클럽 모임입니다. 와서 같이 소통해요 ㅎ</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/theater.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>연극&뮤지컬</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>연극</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.21</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>연극이나 뮤지컬 배우가 되고 싶으신 분 오세용 </h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
                      <li>
                        <article class="list">
                                    <div class="event_list">
                                        <img src="${pageContext.request.contextPath}/resources/images/friendship.png" class="img">
                                    </div>
                                    <div class="event_category">
                                        <div class="mt_name">
                                            <h2>20대 친목 모임</h2>
                                            </div>
                                        <div class="ct_gory">
                                            <h2>친목</h2>
                                            </div>
                                        <div class="ct_gory2">
                                            <a href="#" onclick="memadd();"><h2>가입하기</h2></a>
                                            </div>
                                        <div class="date">5.15</div>
                                        </div>
                                    <div class="event_title">
                                        <div class="title">
                                            <h1>20대 친목 모임이에요 같이 얘기도 하고 놀러도 가요 ㅎㅎ</h1>   
                                        </div>
                                    </div>
                            </article>
                      </li>
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
