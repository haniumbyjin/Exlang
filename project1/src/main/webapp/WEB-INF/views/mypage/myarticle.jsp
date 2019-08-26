<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/moment_min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myarticle.css">

</head>
<body>
	<div class="Acontent">
		<div class ="Atitle">
			<p>내가 쓴글</p><hr>
		</div>
		<div class="AmeetingTlist">
		<p>내가 쓴글 목록</p>
			<c:choose>
				<c:when test="${list.size()>0}">
					<c:forEach var="item" items="${list}">
						<div class="Ameetinglist">
							<div class ="AmeetingInfo">
								<div class="am_img">
									<img src="${pageContext.request.contextPath}/upload/${item.mFilename}">
								</div>
								<div class="am_name">
									<p>${item.mName}</p>
								</div>
							</div>
							<div class="articleTlist">
								<div class= "alist">
								
									<div class="atitle">
										<p>일반 게시판</p>
									</div>
									
									<div id="acontext" class="articleList${item.mCode}">
									</div>
									<script>
							$(document).ready(function(){
								var mCode = ${item.mCode} 
								 articleList${item.mCode}(mCode); 
								} );
							function articleList${item.mCode}(mCode){ 
	  							var id = '${sessionScope.user}';   
	  							 
	  							var mCode = ${item.mCode}
									
	  							    $.ajax({ 
	 							        url : '/mypage/articlelist', 
	  							        type : 'get', 
	  									 data : {'mCode':mCode,
	  										 'id':id}, 
	  									 dataType:'JSON', 
	  							        success : function(response){ 
								        	
								        	
	  							            var a ='';  
	  							            
	  							            $.each(response, function(key, value){  

	  							            	
	  							            	var cRegDate=moment(value.regDate).format('YYYY.MM.DD');  
	  							                a += '<div class="articleArea">'; 
	  							                a += '<div class="articlecontext">  '+value.articleTitle +'</div>'; 
	  							             	a += '<div class="aRegDate"><time class="aReg_date">'+cRegDate+'</time></div>';
	  							             
	  							               
	  							             	            
	  							                a += '</div>'; 
	  							            });
								            
	  							            $(".articleList${item.mCode}").html(a); 
	  							        }, 
	  							        error:function(xhr,status,error){ 
								        	
	  							        	console.log(xhr+status+error); 
	  							        } 
	  							        
	  							    }); 
	  							    }
							$(document).ready(function(){
								articleList${item.mCode}();
								
							});
						</script>
									<div class="areg_date">
									</div>
								</div>
								<div class= "rlist">
									<div class="rtitle">
										<p>후기 게시판</p>
									</div>
									<div id="rcontext" class="reviewList${item.mCode}">
									</div>
										<script>
							$(document).ready(function(){
								var mCode = ${item.mCode} 
								reviewList${item.mCode}(mCode); 
								} );
							function reviewList${item.mCode}(mCode){ 
	  							var id = '${sessionScope.user}';   
	  							 
	  							var mCode = ${item.mCode}
									
	  							    $.ajax({ 
	 							        url : '/mypage/reviewlist', 
	  							        type : 'get', 
	  									 data : {'mCode':mCode,
	  										 'id':id}, 
	  									 dataType:'JSON', 
	  							        success : function(response){ 
								        	
								        	
	  							            var a ='';  
	  							            
	  							            $.each(response, function(key, value){  

	  							            	
	  							            	var cRegDate=moment(value.regDate).format('YYYY.MM.DD');  
	  							                a += '<div class="reviewArea">'; 
	  							                a += '<div class="reviewcontext">  '+value.reviewTitle +'</div>'; 
	  							             	a += '<div class="rRegDate"><time class="rReg_date">'+cRegDate+'</time></div>';
	  							             
	  							             
	  							               
	  							             	            
	  							                a += '</div>'; 
	  							            });
								            
	  							            $(".reviewList${item.mCode}").html(a); 
	  							        }, 
	  							        error:function(xhr,status,error){ 
								        	
	  							        	console.log(xhr+status+error); 
	  							        } 
	  							        
	  							    }); 
	  							    }
							$(document).ready(function(){
								reviewList${item.mCode}();
								
							});
						</script>
									<div class="rreg_date">
									</div>
								</div>					
							</div>
						</div>
						
					</c:forEach>
				</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>