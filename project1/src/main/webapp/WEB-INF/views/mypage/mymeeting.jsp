<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mymeeting.css">
</head>
<%@ include file="../login2.jsp"%>
<body>
	
	<div class="content">
		<div class ="title">
			<p>가입한 모임</p><hr>
		</div>
		<div class="meeting">
			<c:choose>
				<c:when test="${list.size()>0}">
					<c:forEach var="item" items="${list}">	
					  <div class="meetinglist">
					  <c:set var="upFilename" value="${item.mFilename}"/>
		                <c:if test="${item.mFilename != null}">
		                	<div class="m_photo">
								 <img src="${pageContext.request.contextPath}/upload/${item.mFilename}">
							</div>
						</c:if>
							<div class="m_info">
								<div class="info">
									
									<div class="m_name">${item.mName}</div>
									<div class="m_id">${item.mId}</div>
									<div class="m_info">${item.mIntro}</div>
									<div class="m_members">회원수 : ${item.total}</div>
									<c:choose>
										<c:when test="${item.calPlan!= null}">
											<div class="m_schedule"><fmt:formatDate value="${item.startDate}" type="date" pattern="MM/dd"/>~<fmt:formatDate value="${item.endDate}" type="date" pattern="MM/dd"/> | ${item.calPlan}</div>
											</c:when>
											<c:otherwise>
											<div class="m_schedule">
												등록된 일정이 없습니다.
											</div>
											</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<hr>
					</c:forEach>
				</c:when>
			</c:choose>
			</div>		
		</div>
	</div>
</body>
</html>