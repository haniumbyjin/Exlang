<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css); -->


<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />

<link href='${pageContext.request.contextPath}/resources/css/c_calendar.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />


 
<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.js'></script>
 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" 
integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" 
integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" 
integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>




<script>
var dataset = [
    <c:forEach var="citem" items="${list}">
    <c:choose>
    <c:when test="${citem.mName == null}">
            
            {
	            id:'<c:out value="${citem.calNum}" />', 
	        	title:'나의일정 : '+'<c:out value="${citem.calPlan}" />',
	        	start:'<c:out value="${citem.startDate}" />',
	        	end:'<c:out value="${citem.endDate}" />',
	        	color:'blue',
            },
    </c:when>
    <c:otherwise>
		    {
		    	id:'<c:out value="${citem.calNum}" />',
		    	title:'<c:out value="${citem.mName}" />'+' 의 일정 :   '+'<c:out value="${citem.calPlan}" />',
		    	start:'<c:out value="${citem.startDate}" />',
		    	end:'<c:out value="${citem.endDate}" />',
		    },
    </c:otherwise>
    </c:choose>
    </c:forEach>
];
 var jq= $.noConflict();
  jq(document).ready(function() {

    jq('#calendar').fullCalendar({
      header: {
        left: '',
        center: 'title',
        right: 'today prev,next'
      },
      events: dataset,   // DB안에 있는 이벤트를 가져와서 보여주는것
      
      
      editable: true,
      
      
      	// 드래그 앤 드랍 막기
//       eventStartEditable: true, //evnet drag and drop
//       eventDurationEditable: false,  // event day
//       eventResourceEditable: false,  // event reosurece
      
      
      defaultDate: new Date(),
      navLinks: false,      // can click day/week names to navigate views
      eventLimit: true, // allow "more" link when too many events
      selectable: true,
      selectHelper: true,
      eventLimit: true,
      droppable: true,// allow "more" link when too many events
      resizable: true,
      resourceEditable: true,
      dragRevertDuration: 0, 
      monthNames : ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
      monthNamesShort : ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
      dayNames : ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
      dayNamesShort : ["일","월","화","수","목","금","토"],
      views: {
	        month: { // name of view
	            titleFormat: 'YYYY년 MM월'
	        },
	        agendaWeek: {
	        	titleFormat: 'YYYY년 MM월 DD일'
	        },
	        listWeek: {
	        	titleFormat: 'YYYY년 MM월 DD일'
	        }
	    },

	    
	    // 이벤트 추가
	select: function(start, end) {    //날짜 하루 줄어듬.
        var title = prompt('일정을 입력해주세요');
        
        var start = jq.fullCalendar.moment(start).format("YYYY-MM-DD 00:00:00"); 
        var endDate = jq.fullCalendar.moment(end);
        
        //endDate = endDate.add('days', 1);
        
        
        var end = endDate.format("YYYY-MM-DD 23:59:59");
        
       // console.log(start,end);
       // return false;
        
        if (title != null && title != "") {
        	jq.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/calendar/padd',
                dataType: "json",
                data:{
                	calPlan: title,
                	startDate: start,
                	endDate: end,
                },
                success:function(data){
				location.reload();
                }
             }); //ajax끝
             
        }  //if문 끝
        
        jq('#calendar').fullCalendar('unselect');
        return true;
      }, //select: function 끝
       
      //bar 날짜변경
      eventDrop: function(event, delta, revertFunc) {
    	  var calNum = event.id;
    	  var title = event.title;
    	  var startDate = jq.fullCalendar.moment(event.start).format("YYYY-MM-DD");
    	  var endDate = jq.fullCalendar.moment(event.end).format("YYYY-MM-DD");

    		  jq.ajax({
                  type:'post',
                  url:'${pageContext.request.contextPath}/calendar/update1',
                  dataType: "json",
                  data: {
                	  "calNum": calNum,
                	  "endDate": endDate,
                	  "startDate": startDate, 
                  },
                  success:function(data){
                	  location.reload();
                  }, error:function(request,status,error){
                	  revertFunc();
                      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                  }
               });

      },
      
      //bar 이동
	   eventResize: function(event , delta , revertFunc , jsEvent , ui , view) {
			var calNum = event.id;
	    	var title = event.title;
	    	var startDate = jq.fullCalendar.moment(event.start).format("YYYY-MM-DD");
	    	var endDate = jq.fullCalendar.moment(event.end).format("YYYY-MM-DD");
    		  jq.ajax({
                  type:'post',
                  url:'${pageContext.request.contextPath}/calendar/update1',
                  dataType: "json",
                  data: {
                	  "calNum":calNum,
                	  "endDate": endDate,
                	  "startDate": startDate,
                  },
                  success:function(data){
                	  location.reload();
                  }, error:function(request,status,error){
                	  revertFunc();
                      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                  }
               });
      },

      
      //클릭후 일정 수정
	eventClick: function(event, jsEvent, view) {
		var calNum = event.id;
		var title = prompt('일정을 변경후 OK를 눌러주세요', event.title, {  //calEvent.title은 현재저장된 calPlan에 해당
              buttons: { Ok: true,  Cancel: false }
          });

        if (title != null ){  
          jq.ajax({
              type:'post',
              url:'${pageContext.request.contextPath}/calendar/update',
              dataType: "json",
              data: {
            	  "calPlan": title,
            	  "calNum":calNum,
              },
              success:function(data){
            	  location.reload();
              }
           }); //ajax끝
        }//if end
      },
      
      eventRender: function(eventObj, $el) {
          $el.popover({
            title: eventObj.title,
            content: eventObj.description,
            trigger: 'hover',
            placement: 'top',
            container: 'body'
          });
        },
    	
      //이벤트 휴지통으로 끌고가서 삭제
	eventDragStop: function(event,jsEvent) {
		var calNum = event.id;
	    var trashEl = jQuery('#calendarTrashicon');
	    var ofs = trashEl.offset();
	    var x1 = ofs.left;
	    var x2 = ofs.left + trashEl.outerWidth(true);
	    var y1 = ofs.top;
	    var y2 = ofs.top + trashEl.outerHeight(true);


 	    console.log(calNum);
	    if (jsEvent.pageX >= x1 && jsEvent.pageX<= x2 && jsEvent.pageY >= y1 && jsEvent.pageY <= y2) {
	        if(confirm("삭제하시겠습니까?")){
	        	
	        	jq.ajax({
	                type:'post',
	                url:'${pageContext.request.contextPath}/calendar/delete',
	                data: {
	              		"calNum":calNum,
	                },
	                success:function(data){
	                	location.reload();
	                	
	                	
	                },error:function(xhr,status,error){
	                    console.log(xhr)
	                    console.log(xhr+status+error);
	                 }
	             });
	        } //if(confirm문 끝)
	    } else {
	    	return false;
	    }
	 }, //eventdragstop  [end]
    }); //$calender.fullcalendar  [end]	
  }); //ready[end]
  
  jq(function(){
	  jq('.fc-left').click(function(){
	    window.location.href="/"
	  });
	});

  
</script>
<style>
</style>
</head>

<body>
<div id="container">
            <div id="header"></div>
			
            <div id="content">
            	<div id="calendar"></div>
            </div>
            
            <div id="sideinfo">
            <div id="c_schdule">
				<img src="${pageContext.request.contextPath}/resources/images/cal_schdule.png" />
			</div>
            	<div id="c_calList">
						<c:choose>
							<c:when test="${list.size() > 0 }">
								<c:forEach var="item" items="${list}">
									<div id="dlist">
									<c:choose>
										<c:when test="${item.mName == null}">
										<div id="perName">
											나의 일정
										</div>
										</c:when>
										<c:otherwise>
										<div id="mpName">
											${item.mName}
										</div>
										</c:otherwise>
									</c:choose>
									
									<div id="mPlan">
										${item.calPlan}
									</div>
									<div id="plandate">
										${item.startDate} ~ ${item.endDate}
									</div>
								</div>
									
								</c:forEach>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
				</div>	
				
				<div id="calendarTrash">
					<div id="calendarTrashicon">
						<img src="${pageContext.request.contextPath}/resources/images/cal_trash.png" />
					</div>
        		</div>
			</div>
		    
        
				
</div>
            
		
		
	 	
</body>
</html>

