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

<title>게시판</title>
</head>
<body>
<div class="currentaddress">
		<div class="addressContents">
			
           		
           		  <p>&nbsp;&nbsp;&nbsp;&nbsp;> &nbsp;&nbsp;&nbsp;&nbsp;게시판</p>
           
            </div>
 </div>
	<div class="fullBody">
            <h2 class="title">게시판</h2>
            <div class="countArticle">
	새 글<span class="newArticle"> ${pager.todayTotal}</span><span>/${pager.vTotal}</span>
	</div>
	<div class="searchArea">
		<form> 
			<select name="search" class="category">
				<option value="notice_title">제목</option>
				<option value="notice_context">내용</option>
				<option value="id">작성자</option>
				<option value="all">제목+내용</option>
			</select>
				<input type="text" name="keyword" class="keywordArea">
			<input type="submit" class="submitBtn" value="검색">
		</form>
		
	</div>
	
		<table class="articleList">

			<thead>
				<tr>
					<th>번호</th>
					<th class="123">제목</th>
					<th>작성자</th>
					<th>추천</th>
					<th>작성일</th>
					<th>조회</th>
		
				</tr>
			</thead>
			
			<tbody>
				<c:choose>
					<c:when test="${list.size() > 0 }">
						<c:forEach var="item" items="${list}">
							<tr>
								
								<td>${item.noticeCode}</td>
								<td class="ntitle"><a href="view/${item.noticeCode}">
									
								 ${item.noticeTitle}
								 	
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<c:set var="sysDate">
								<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
								<fmt:formatDate var="regDate" value="${item.regDate}" pattern="yyyy-MM-dd"/>
<%-- 								<c:if test="${sysDate == regDate}"> --%>
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/new.jpg"> --%>
<%-- 								</c:if> --%>
<%-- 								<c:if test="${item.upFilename != null}"> --%>
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/file.jpg"> --%>
<%-- 								</c:if> --%>
								</a>
								
								</td>
								<td>${item.id}</td>
								<td>${item.recommend}</td>
								<td><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></td>
								<td>${item.ref}</td>
						
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="6">등록 된 게시물이 없습니다</td>
						</tr> 
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		
	   <div class="addArticle">
	   
            <a href="add">등록</a>
            <a href="/">홈으로</a>
        </div>
	
	
	
	${pager.pagination}
	
	
	 </div>

</body>
</html>
