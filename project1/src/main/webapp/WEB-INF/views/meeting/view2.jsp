<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>모임 게시판</title>
        <meta name="description" content="Brackets에 대한 대화식 시작 안내서입니다.">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/meeting_board.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header2.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    </head>
    <body>
        <header class="head">
            <div class="header">
                    <a href="#" class="logo"> <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png"></a>
                    <nav id="use" class="navi">
                    <ul>
                        <li><a href="#">모임 만들기</a></li>
                        <li><a href="#">모임 가입하기</a></li>
                        <li><a href="#">MY 캘린더</a></li>
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
            </div>
        </header>
        <div class="container">
        <aside id="info">
            <section id="infoInner">
                <div class="fixed">
                        <div class="cover">
                            <div class="cover_img">
                                <img src="${pageContext.request.contextPath}/resources/images/dog.png">
                            </div>
                            <div class= "cover_name">
                                <h1>포메라니안의 모든것</h1>
                            </div>
                            <div class="member">
                                <p>멤버 471 <img src="${pageContext.request.contextPath}/resources/images/bool.jpg" class="bool"> 모임장 포메지기</p>
                            </div>
                        </div>      
                </div>
            </section>
        </aside>
<!--     게시글, 공지, 후기 부분       -->
            <div class="navi_cover">
                <div class= "hover">
                    <a href ="#" class="navi_item">게시판 쓰기</a>
                    <a href ="#" class="navi_item">공지 글쓰기</a>
                    <a href ="#" class="navi_item">후기 글쓰기</a>
                </div>
            </div>
<!--      게시글, 공지, 후기 끝      -->
        <main id="content">
            <section class="board">
                <div class="board_list">
                    <div class="titleWriter">
                        <span class="ellipsis">
                            <strong class="text">포메지기</strong>
                        </span>
                        <div class="titlelist">
                            <time class="time">2019년 5월 8일</time>
                        </div>
                    </div>
                    <div class="postMain">
                        <div class="postBody">
                            <div class="post_text">
                                <p class="textbody">
                                    꼬물이 입양 1달째^^<br>건강하고 이쁘게만 자라줬으면 좋겠네요~^^ 
                                </p>
                            </div>
                            <div class="photoRegion">
                                <div class="photo">
                                    <img src="${pageContext.request.contextPath}/resources/images/puppy.png">
                                </div>
                            </div>
                            <div class="postCount">
                                <div class="post_comment">
                                    <button type="button" class="comment">댓글
                                        <span class="count">12개</span>
                                    </button>
                                </div>
                            </div>
                        </div>    
                    </div>
                    <div class="modal">
                        <div class="post_function">
                            <button type="button" class="btn_menu"></button>   
                        </div>
<!--
                        <div id="Menu_view" class="Menu_more" style="min-width: 145px;" tabindex="-1">
                            <ul class="post_moreMenu">
                                <li><a href="#">삭제하기</a></li>
                            </ul>
                        </div>
-->
                    </div>
                </div>
                <div class="reply">
                    <div class="reply_view">
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">울 장군이</string>
                            </h1>     
                            <p class="reply_txt">
                                건강하게 자라라~~
                            </p>
                            <time class="reply_time">5월8일</time>
                        </div>
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">(대전) 겨울이</string>
                            </h1>     
                            <p class="reply_txt">
                                완전 아가네요 ㅎㅎ 너무 귀여워요~
                            </p>
                            <time class="reply_time">5월9일</time>
                        </div>
                    </div>      
                </div>
            </section>
            <section class="board">
                <div class="board_list">
                    <div class="titleWriter">
                        <span class="ellipsis">
                            <strong class="text">솜이 엄마☆</strong>
                        </span>
                        <div class="titlelist">
                            <time class="time">2019년 5월 9일</time>
                        </div>
                    </div>
                    <div class="postMain">
                        <div class="postBody">
                            <div class="post_text">
                                <p class="textbody">
                                    우리 솜이 드디어 배변 활동 성공 했어요~~~!!! <br> 해맑게 웃고 있는게 너무 사랑스럽네요 ㅎㅎ
                                </p>
                            </div>
                            <div class="photoRegion">
                                <div class="photo">
                                    <img src="${pageContext.request.contextPath}/resources/images/pup1.png">
                                </div>
                            </div>
                            <div class="postCount">
                                <div class="post_comment">
                                    <button type="button" class="comment">댓글
                                        <span class="count">5개</span>
                                    </button>
                                </div>
                            </div>
                        </div>    
                    </div>
                    <div class="modal">
                        <div class="post_function">
                            <button type="button" class="btn_menu"></button>   
                        </div>
<!--
                        <div id="Menu_view" class="Menu_more" style="min-width: 145px;" tabindex="-1">
                            <ul class="post_moreMenu">
                                <li><a href="#">삭제하기</a></li>
                            </ul>
                        </div>
-->
                    </div>
                </div>
                <div class="reply">
                    <div class="reply_view">
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">포도포동</string>
                            </h1>     
                            <p class="reply_txt">
                                우리 포도도 엊그제 배변 성공 했는데 정말 축하드려요~
                            </p>
                            <time class="reply_time">5월9일</time>
                        </div>
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">누리 ♡♡</string>
                            </h1>     
                            <p class="reply_txt">
                                ㅎㅎ 우리 솜이가 드디어 성공 했구나 <br> 이제 엄마 속 그만 썩여라~
                            </p>
                            <time class="reply_time">5월10일</time>
                        </div>
                    </div>      
                </div>
            </section>
            <section class="board">
                <div class="board_list">
                    <div class="titleWriter">
                        <span class="ellipsis">
                            <strong class="text">휴지♥</strong>
                        </span>
                        <div class="titlelist">
                            <time class="time">2019년 5월 10일</time>
                        </div>
                    </div>
                    <div class="postMain">
                        <div class="postBody">
                            <div class="post_text">
                                <p class="textbody">
                                    울 휴지 드디어 우리집에 왔어여ㅜㅜㅜㅜㅜ <br> 언니가 행복하게 해주께ㅜㅜ♥♥♥♥♥
                                </p>
                            </div>
                            <div class="photoRegion">
                                <div class="photo">
                                    <img src="${pageContext.request.contextPath}/resources/images/pup2.png">
                                </div>
                            </div>
                            <div class="postCount">
                                <div class="post_comment">
                                    <button type="button" class="comment">댓글
                                        <span class="count">3개</span>
                                    </button>
                                </div>
                            </div>
                        </div>    
                    </div>
                    <div class="modal">
                        <div class="post_function">
                            <button type="button" class="btn_menu"></button>   
                        </div>
<!--
                        <div id="Menu_view" class="Menu_more" style="min-width: 145px;" tabindex="-1">
                            <ul class="post_moreMenu">
                                <li><a href="#">삭제하기</a></li>
                            </ul>
                        </div>
-->
                    </div>
                </div>
                <div class="reply">
                    <div class="reply_view">
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">꼬미 엄마</string>
                            </h1>     
                            <p class="reply_txt">
                               ㅎㅎ 너무 귀엽네요
                            </p>
                            <time class="reply_time">5월10일</time>
                        </div>
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">♡미르♡</string>
                            </h1>     
                            <p class="reply_txt">
                                우리집 아가랑 비슷하게 생겼네요~~
                            </p>
                            <time class="reply_time">5월11일</time>
                        </div>
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">꽁이</string>
                            </h1>     
                            <p class="reply_txt">
                                앜ㅋㅋㅋㅋㅋㅋㅋ 너무 귀여워ㅜㅜㅜㅜㅜ
                            </p>
                            <time class="reply_time">5월13일</time>
                        </div>
                    </div>      
                </div>
            </section>
            <section class="board">
                <div class="board_list">
                    <div class="titleWriter">
                        <span class="ellipsis">
                            <strong class="text">댕댕이</strong>
                        </span>
                        <div class="titlelist">
                            <time class="time">2019년 5월 11일</time>
                        </div>
                    </div>
                    <div class="postMain">
                        <div class="postBody">
                            <div class="post_text">
                                <p class="textbody">
                                    우리집 애기가 노트북 누르는 바람에 파일이 날라갔어요ㅜㅜ
                                </p>
                            </div>
                            <div class="photoRegion">
                                <div class="photo">
                                    <img src="${pageContext.request.contextPath}/resources/images/pup3.png">
                                </div>
                            </div>
                            <div class="postCount">
                                <div class="post_comment">
                                    <button type="button" class="comment">댓글
                                        <span class="count">2개</span>
                                    </button>
                                </div>
                            </div>
                        </div>    
                    </div>
                    <div class="modal">
                        <div class="post_function">
                            <button type="button" class="btn_menu"></button>   
                        </div>
<!--
                        <div id="Menu_view" class="Menu_more" style="min-width: 145px;" tabindex="-1">
                            <ul class="post_moreMenu">
                                <li><a href="#">삭제하기</a></li>
                            </ul>
                        </div>
-->
                    </div>
                </div>
                <div class="reply">
                    <div class="reply_view">
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">초코초코</string>
                            </h1>     
                            <p class="reply_txt">
                                아이고ㅋㅋㅋㅋㅋㅋ 사고뭉치네여
                            </p>
                            <time class="reply_time">5월12일</time>
                        </div>
                        <div class="write">
                            <h1 class="reply_name">
                                <string class="name">(서울)구르미</string>
                            </h1>     
                            <p class="reply_txt">
                                우리 구름이도 사고 많이 쳐요ㅜㅜ
                            </p>
                            <time class="reply_time">5월14일</time>
                        </div>
                    </div>      
                </div>
            </section>
<!--      공지글      -->
            <div class="community">
                <div class="notice"><span style="color: red;">※</span> 공지<img src="${pageContext.request.contextPath}/resources/images/board_more.jpg"></div>
                <li>6월5일 정기 모임 날짜 입니다. 바쁘시지 않다면 들러주세요~</li>
                <li>6월5일 정기 모임 날짜 입니다. 바쁘시지 않다면 들러주세요~</li>
            </div>
            <div class="review">
                <div class="review_write"><span style="color: red;">※</span> 후기<img src="${pageContext.request.contextPath}/resources/images/board_more.jpg"></div>
                <li>폴리 공원에 길 고양이들이 너무 많아서 걱정을 많이 했는데 우리ㄴㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㅇㄴㄹㄴㅇ</li>
                <li>폴리 공원에 길 고양이들이 너무 많아서 걱정을 많이 했는데 우리ㄴㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㅇㄴㄹㄴㅇ</li>
            </div>
        </main>
        </div>    
    </body>
    </html>