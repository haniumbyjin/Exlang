<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link href="resources/css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div>
		<ul>
			<li>
				<c:choose>
	               <c:when test="${sessionScope.user != null || sessionScope.admin != null }">
	               <p>${sessionScope.user}</p><a href="${pageContext.request.contextPath}/logout">로그아웃</a>
	               
	               </c:when>
	               <c:otherwise>
	               <a href="/login">로그인</a>
	            	
	               </c:otherwise>
          		</c:choose>
          	</li>
          	<li>
          		<a href="/notice/list">게시판</a>
          	</li>
          	<li>
          		<a href="/meeting/add">모임등록</a>
          	</li>
          	<li>
          		<a href="/meeting/list">모임가입</a>
          	</li>
         </ul>
    </div>
</body>
</html>