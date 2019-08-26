<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <jsp:include page="navi.jsp" flush="true" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
<script>
  $(document).ready(function(){
		$(".login_btn").click(function(){
			login();
		
		});	

	//로그인 모달
		  var modalLayer_login = $(".modalLayer_login");
		  var modalLink_login = $("#nModal_login");
		  var modalCont_login = $(".modalContent_login");
		  var marginLeft_login = modalCont_login.outerWidth()/2;
		  var marginTop_login = modalCont_login.outerHeight()/2; 
		  modalLink_login.click(function(){
		    modalLayer_login.fadeIn("slow");
		    modalCont_login.css({"margin-top" : -marginTop_login, "margin-left" : -marginLeft_login});
		    $(this).blur();
// 		    $(".modalContent_login > a").focus(); 
		    return false;
		  });

		  $("body").click(function(e){
			if(!$(e.target).hasClass("modalLayer_login") && !$(e.target).parents().hasClass("modalLayer_login")){
		    modalLayer_login.fadeOut("slow");
// 		    modalLink_login.focus();
			}
		     });
		
		
			
  });
  



		function enterkey(){
			   if(window.event.keyCode ==13){
			      login();
			   }
			}

		function login(){
			var id = document.getElementById('id').value;
			var pw= document.getElementById('pw').value;

			if(id==""){
				alert('아이디를 입력해 주세요');
				form.id.focus();
			}else if(pw==""){
				alert('비밀번호를 입력해 주세요');
				form.pw.focus();
			}else{
				var id = document.getElementById('id').value;
				var pw= document.getElementById('pw').value;
				$.ajax({
					url:'${pageContext.request.contextPath}/loginChk',
					type:'post',
					data:{
						'id':id,
						'pw':pw
					},
					success:function(data){
						if(data == true){
							alert('환영합니다.');
							location.reload();
						}else{
							alert('아이디나 비밀번호를 확인하세요.');
							return;
						}
//		 				form.submit();
					}
				});
			}
		}

  </script>
</head>
<body>

		<div class="modalLayer_login">
						<div class="modalContent_login">
							<form name="login" id="login">
					 			
					                <div class="loginbox">
					                	<div class=loginLogo><img src ="${pageContext.request.contextPath}/resources/images/loginLogo.png"></div>
					      				<div class=logininput>
						      				<input class="inputlogin" type="text" id="id" name="id" placeholder="아이디"/>
							                <input class="inputpassword"  type="password" id="pw" name="id" placeholder="비밀번호" onkeyup="enterkey();"/>						                    
						                </div>
						               
						                	<div class="login_btn"><div class="btn_text" >로그인</div></div>
							            	<div class="signup_btn"><div class="sign_up"><a id="sign_up"  href="${pageContext.request.contextPath}/acceptTerms">아직 가입이 안되어 있나요? 회원가입</a></div></div>
							          
					                </div>
				 	           
            	            </form>
						</div>
					</div>

</body>
</html>