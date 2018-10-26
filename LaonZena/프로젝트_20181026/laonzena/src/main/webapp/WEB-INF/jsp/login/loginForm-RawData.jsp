<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!-- CSS -->
	<c:import url="/common/includeCss.jsp" />

	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.16.1/TweenMax.min.js"></script>
</head>
<body>
	<div id="login-button">
  		<img src="https://dqcgrsy5v35b9.cloudfront.net/cruiseplanner/assets/img/icons/login-w-icon.png"></img>
	</div>
	<div id="container">
		<h1>Log In</h1>
		<span class="close-btn">
			<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>
		
		<form method="post" action='<c:url value="/login/log-in.do" />'>
			<input type="text" id="log-in-id" placeholder="Identification">
			<input type="password" id="log-in-pass" placeholder="Password">
			<a id="login">Log in</a>
			<div id="remember-container">
				<!--       <input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked"/> -->  
				<span id="sign-in">Sign-In</span>
				<span id="forgotten">Forgotten password</span>
			</div>
		</form>
	</div>

	<!-- Forgotten Password Container -->
	<div id="forgotten-container">
		<h1>Forgotten</h1>
		<span class="close-btn">
			<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>
		<form>
			<input type="email" name="email" placeholder="E-mail">
			<a href="#" class="orange-btn">Get new password</a>
		</form>
	</div>

	<!-- Sign In Container -->
	<div id="sign-in-container">
		<h1>Sign-In</h1>
		<span class="close-btn">
			<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>
		<form>
			<input type="text" name="sign-in-id" placeholder="Identification">
			<input type="password" name="sign-in-pass" placeholder="Password">
			<input type="password" name="sign-in-pass-C" placeholder="Confirm Password">
			<input type="email" name="email" placeholder="Name">
			<input type="text" name="address" placeholder="Address">
			<input type="text" name="cell-phone" placeholder="Cell-Phone">
			<input type="text" name="section" placeholder="비밀번호가 일치하지 않습니다.">
			<a href="#" class="orange-btn">Create Account</a>
		</form>
	</div>

	<script>
		$('#login-button').click(function(){
		  $('#login-button').fadeOut("slow",function(){
		    $("#container").fadeIn();
		    TweenMax.from("#container", .4, { scale: 0, ease:Sine.easeInOut});
		    TweenMax.to("#container", .4, { scale: 1, ease:Sine.easeInOut});
		  });
		});
	
		$(".close-btn").click(function(){
		  TweenMax.from("#container", .4, { scale: 1, ease:Sine.easeInOut});
		  TweenMax.to("#container", .4, { left:"0px", scale: 0, ease:Sine.easeInOut});
		  $("#container, #forgotten-container, #sign-in-container").fadeOut(800, function(){
		    $("#login-button").fadeIn(800);
		  });
		});
	
		/* Forgotten Password */
		$('#forgotten').click(function(){
		  $("#container").fadeOut(function(){
		    $("#forgotten-container").fadeIn();
		  });
		});
		
		/* Sign-In */
		$('#sign-in').click(function(){
		  $("#container").fadeOut(function(){
		    $("#sign-in-container").fadeIn();
		  });
		});
		
		/* Log-In */
		$("#login").click(function () {
			$.ajax({
				url: "/laonzena/login/log-in.do",
				type: "POST",
				data: {id: $("#log-in-id").val(), pass:$("#log-in-pass").val()},
				beforeSend: function () {
					if($("#log-in-id").val() == ""){
						alert("아이디를 입력하세요")
						return false;
					} else if ($("#log-in-pass").val() == "") {
						alert("비밀번호를 입력하세요")
						return false;
					}
				}
			}).done(function (result) {
				alert(result);
				location.href = "/laonzena/main.do";
			}).fail(function () {
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			});
		})
		
	</script>
</body>
</html>