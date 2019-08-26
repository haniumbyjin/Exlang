	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

  
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review_view.css">
<script>

var jq = $.noConflict();

jq(document).ready(function(){

	var reviewView = jq("#reviewView");
	  jq(".review_close").click(function(){
	   	window.close();
	    
	  });	
});
</script>
</head>
<body>
	<div id=reviewView>
		
		<main id="review_content">
                <section class="reviewreviewBoard">
                	<div class="reviewBoard_tlist">
		             <c:choose>
						<c:when test="${list.size()>0}">
							<c:forEach var="item" items="${list}">
		                <div class="reviewBoard_list">
		                    <div class="reviewTitleWriter">
		                    	<div class="reviewTitleWriter_inner">
		                        <span class="ellipsis">
		                            <strong class="text">${item.id}</strong>
		                        </span>
		                        <div class="reviewTitlelist">
		                            <time class="time"><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></time>
		                        </div>
		                        </div>
		                    </div>
		                    <div class="reviewPostMain">
		                        <div class="reviewPostBody">
		                            <div class="reviewPost_text">
		                                ${item.reviewContext} 
		                                
		                            </div>
		                            <c:set var="upFilename" value="${item.upFilename}"/>
		                            <c:if test="${upFilename != null}">
		                            <div class="photoRegion">
		                                <div class="photo">
		                                    <img src="${pageContext.request.contextPath}/upload/${item.upFilename}">
		                                </div>
		                       	     </div>
		                            </c:if>
		                            <div class="reviewPostCount">
		                                <div class="reviewPost_comment">
		                                    <button type="button" class="comment">댓글
<%-- 		                                        <span class="count">${item.totalcomment}</span> --%>
		                                    </button>
		                                </div>
		                            </div>
		                        </div>    
		                    </div>
		                     <div class="reviewPost_function">
		                            <button type="button" class="btn_menu" id="nModal_npost${item.reviewCode}"></button>
		                            <div id="modalLayer_npost${item.reviewCode}" class="modalLayer_npost">
										<div class="modalContent_npost${item.reviewCode}" id="modalContent_npost">
											 <a href="update?code=${item.reviewCode}">수정</a>
											 <a href="${pageContext.request.contextPath}/review/delete?reviewCode=${item.reviewCode}&mCode=${item.mCode}">삭제</a>
										</div>
									</div>
		                    </div>
		                    <script>
								jq(document).ready(function(){
									//post button모달
									 
									  var modalLayer_npost${item.reviewCode} = jq("#modalLayer_npost${item.reviewCode}");
									  var modalLink_npost${item.reviewCode} = jq("#nModal_npost${item.reviewCode}");
									  var modalCont_npost${item.reviewCode} = jq(".modalContent_npost${item.reviewCode}");
// 									  var marginLeft = modalCont_npost${item.reviewCode}.outerWidth()/2;
// 									  var marginTop = modalCont_npost${item.reviewCode}.outerHeight()/2; 

									  modalLink_npost${item.reviewCode}.click(function(){
									    modalLayer_npost${item.reviewCode}.fadeIn("slow");
// 									    modalCont_npost${item.reviewCode}.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
									    jq(this).blur();
									    jq(".modalContent_npost${item.reviewCode} > a").focus(); 
									    return false;
									  });

									  jq(".modalContent_npost${item.reviewCode} > button").click(function(){
									    modalLayer_npost${item.reviewCode}.fadeOut("slow");
									    modalLink_npost${item.reviewCode}.focus();
									  });	
								})
							
							</script>
							 <div class="commentBox">
							<div class="reply_view">
		                        <div class="write">
									<div id= "commentlist" class="commentList${item.reviewCode}"></div>
								</div>
							</div>	
							<section class="comment_input">
		                            <div class="commentInputLayout">
		                            <form name="commentInsertForm${item.reviewCode}">
									        <div class="input-group">
									        	<div class ="writeWrap">
									               <input type="hidden" name="reviewCode" value="${item.reviewCode}"/>
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
									               	<button class="commentBtn" type="button" name="commentInsertBtn${item.reviewCode}">등록</button>
									              </div>
									         </div>
									  </form>
									  </div>
									  
								</section>	        
									  <div class="btnList">
							
								<div class="btnposition">
							
<%-- 							<c:choose> --%>
<%-- 									<c:when test="${sessionScope.user == item.mId or sessionScope.user == admin}"> --%>
<%-- 										<button class="update"><a href="update?reviewCode=${item.reviewCode}">수정</a></button>	 --%>
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
//  								        location.href = 'delete?reviewCode=${item.reviewCode}';
//  								    }else{
//  								    return false;
//  								    }
//  								};
							var reviewCode = ${item.reviewCode} 
						 commentList${item.reviewCode}(reviewCode); 
						} );
							
							
						var reviewCode = ${item.reviewCode} //게시글 번호 
							 
							jq('[name=commentInsertBtn${item.reviewCode}]').click(function(){ //댓글 등록 버튼 클릭시  
							    var insertData = jq('[name=commentInsertForm${item.reviewCode}]').serialize(); //commentInsertForm의 내용을 가져옴 
							    commentInsert${item.reviewCode}(insertData); //Insert 함수호출(아래) 
							});
							 
							 
							 
  							//댓글 목록  
  							function commentList${item.reviewCode}(reviewCode){ 
  							var session = '${sessionScope.user}';   
  							var admin = 'admin'; 
  							var reviewCode = ${item.reviewCode}
								
  							    jq.ajax({ 
 							        url : '/rcomment/list', 
  							        type : 'get', 
  									 data : {'reviewCode':reviewCode}, 
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
							            
  							            jq(".commentList${item.reviewCode}").html(a); 
  							        }, 
  							        error:function(xhr,status,error){ 
							        	
  							        	console.log(xhr+status+error); 
  							        } 
  							    }); 
  							} 
							 
  							//댓글 등록 
  							function commentInsert${item.reviewCode}(insertData){ 
 								var reviewCode = ${item.reviewCode} 
								
  							    jq.ajax({ 
 							        url : '/rcomment/insert', 
  							        type : 'post', 
  							        data : insertData, 
  							        success : function(){ 
							        	
							           
  							                commentList${item.reviewCode}(reviewCode); //댓글 작성 후 댓글 목록 reload 
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
  							function commentUpdateProc${item.reviewCode}(cno){ 
  							    var updateContent = jq('[name=content_'+cno+']').val(); 
							    
  							    jq.ajax({ 
 							        url : '/rcomment/update', 
  							        type : 'post', 
  							        data : {'content' : updateContent, 'cno' : cno}, 
  							        success : function(data){ 
  							            if(data == 1) commentList${item.reviewCode}(reviewCode); //댓글 수정후 목록 출력  
  							        } 
  							    }); 
  							}; 
							 
  							//댓글 삭제  
  							function commentDelete(cno){ 
  							    jq.ajax({ 
 							        url : '/rcomment/delete/'+cno,
  							        type : 'post', 
  							        success : function(data){ 
  							            if(data == 1) commentList${item.reviewCode}(reviewCode); //댓글 삭제후 목록 출력  
  							        } 
  							    }); 
  							}; 
//   							function commentCount${item.reviewCode}(reviewCode){
//   								jq.ajax({
//   									url: '/rcomment/count',
//   									type : 'get',
//   									data:{'reviewCode' : reviewCode},
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
  							    commentList${item.reviewCode}(); //페이지 로딩시 댓글 목록 출력  
//   							  	commentCount${item.reviewCode}();
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
	</div>

</body>
</html>