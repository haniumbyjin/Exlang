<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
                	 		  	<div class = "noticeBox">
                	 		  		<div class = "notice">
                	 		  			<span>공지사항</span><button class="notice_close" id="notice_close">[닫기]</button>
                	 		  			
                	 		  		</div>
                	 		  		<hr>
                	 		  		<div class ="noticeList">
                	 		  			<ul>
                	 		  				<c:choose>
                	 		  				<c:when test="${nlist.size()>0}">
                	 		  				<c:forEach end ="4" var="nitem" items="${nlist}">
                	 		  				<li><div class="title"><a href="#modallayer_noticeveiw${nitem.noticeCode}" class="modalLink${nitem.noticeCode}">${nitem.noticeContext}</a></div>
                	 		  					<div class="noticeDate">[<time><fmt:formatDate value="${nitem.regDate}" pattern="yyyy.MM.dd"/></time>]</div>
                	 		  										                	 	
                	 		  				</li>
                	 		  				</c:forEach>
                	 		  				</c:when>
                	 		  				</c:choose>
                	 		  			</ul>
                	 		  		</div>
                	 		  	</div>
</body>
</html>