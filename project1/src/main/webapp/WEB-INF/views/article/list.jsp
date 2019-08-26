<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>게시물 관리</div>
	
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${list.size()>0}">
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.articleCode}</td>
							<td><a href="view?code=${item.articleCode}">${item.articleTitle}</a></td>
							<td>${item.id}</td>
							<td><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/> </td>
							<td><a href="update?code=${item.articleCode}">변경</a><a href="delete?code=${item.articleCode}">삭제</a></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">동록된 사용자가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
			</tbody>
		</table>
	</div>
	
	
	<div>
		<a href="./list">처음으로</a>
		<a href="add">등록</a> <a href="/admin/board_manager/list">게시글 관리 목록</a>
	</div>
</body>
</html>