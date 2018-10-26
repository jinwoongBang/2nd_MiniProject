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
	<!-- JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.16.1/TweenMax.min.js"></script>
</head>
<body>
	<h1 id="title">모두의<br>편의점</h1>
	
	<!-- 로그인 버튼 -->
	<div class="login-button">
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
	
	<!-- 회원가입 -->
	<div id="sign-in-container">
		<h1>Sign-In</h1>
		<span class="close-btn">
			<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>
		<form>
			<input type="text" name="id" id="sign-in-id" placeholder="Identification">
			<input type="password" name="pass" id="sign-in-pass" placeholder="Password">
			<input type="password" name="passC" id="sign-in-passC"placeholder="Confirm Password">
			<input type="text" name="name" id="sign-in-name" placeholder="Name">
			<input type="email" name="email" id="sign-in-email" placeholder="Email">
			<input type="text" name="address" id="sign-in-address" placeholder="Address">
			<input type="text" name="cellphone" id="sign-in-cellphone" placeholder="Cell-Phone">
			<a href="#" id="createAccount" class="orange-btn">Create Account</a>
		</form>
	</div>
	
	<!-- 비밀번호 찾기 -->
	<div id="forgotten-container">
		<h1>Forgotten</h1>
		<span class="close-btn">
			<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>
		<form>
			<input type="email" name="forgotten-email" placeholder="E-mail">
			<a href="#" id="findPass" class="orange-btn">Get new password</a>
		</form>
	</div>
	
	<!-- 메인 편의점 -->
	<div class="banner">
		<div class="banner__item">
			<div class="banner__title">CU</div>
		</div>
		<div class="banner__item">
			<div class="banner__title">GS25</div>
		</div>
		<div class="banner__item">
			<div class="banner__title">Seven Eleven</div>
		</div>
		<div class="banner__item">
			<div class="banner__title">Mini Stop</div>
		</div>
		<div class="banner__item">
			 <div class="banner__title">Emart 24</div>
		</div>
	</div>
</body>
<script>
		$(".login-button").click(function(){
		  $(".login-button").fadeOut("slow",function(){
		    $("#container").fadeIn();
		    TweenMax.from("#container", .4, { scale: 0, ease:Sine.easeInOut});
		    TweenMax.to("#container", .4, { scale: 1, ease:Sine.easeInOut});
		    $(".banner").fadeOut("slow");
		    
		  });
		});
	
		$(".close-btn").click(function(){
		  TweenMax.from("#container", .4, { scale: 1, ease:Sine.easeInOut});
		  TweenMax.to("#container", .4, { left:"0px", scale: 0, ease:Sine.easeInOut});
		  $("#container, #forgotten-container, #sign-in-container").fadeOut(800, function(){
		    $(".login-button").fadeIn(800);
		    $(".banner").fadeIn();
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
					} else {
						alert("로그인 성공");
					}
				}
			})
		})
		
		/* Sign-In */
		$('#sign-in').click(function(){
	  		$("#container").fadeOut(function(){
	    		$("#sign-in-container").fadeIn();
		  });
		});
		
		/* Sign-In Success/Fail */
		$("#createAccount").click(function(){
			var info = {
					"id" : $("#sign-in-id").val(),
					"pass" : $("#sign-in-pass").val(),
					"passC" : $("#sign-in-passC").val(),
					"name" : $("#sign-in-name").val(),
					"email" : $("#sign-in-email").val(),
					"address" : $("#sign-in-address").val(),
					"cellphone" : $("#sign-in-cellphone").val()
			}
			console.log(info.id);
			console.log(info.pass);
			console.log(info.passC);
			console.log(info.name);
			console.log(info.email);
			console.log(info.address);
			console.log(info.cellphone);
			
			if(info.id==""){
				alert("id를 입력해주세요");
			} else if(info.pass==""){
				alert("비밀번호를 입력해주세요");
			} else if(info.passC==""){
				alert("비밀번호 확인을 위해 한 번 더 입력해주세요");
			} else if(info.passC!=info.pass){
				alert("비밀번호가 다릅니다");
			} else if(info.name==""){
				alert("이름을 입력해주세요");
			} else if(info.email==""){
				alert("이메일을 입력해주세요");
			} else if(info.address==""){
				alert("주소를 입력해주세요");
			} else if(info.cellphone==""){
				alert("휴대폰번호를 입력해주세요");
			} else {
				alert("회원가입 완료");
				$(".login-button").fadeIn(800);
				$(".banner").fadeIn();
				$("#sign-in-container").fadeOut("slow");
			}
		})
		
		/* Forgotten Password */
		$('#forgotten').click(function(){
	  		$("#container").fadeOut(function(){
	    		$("#forgotten-container").fadeIn();
		  });
		});
		
		/* Forgotten Password Success/Fail */
		$("#findPass").click(function(){
			var email= $("input[name=forgotten-email]").val();
			console.log(email);
			if(email==""){
				alert("이메일을 입력해주세요");
			} else {
				alert("비밀번호 이메일 전송 완료");
				$(".login-button").fadeIn(800);
				$(".banner").fadeIn();
				$("#forgotten-container").fadeOut("slow");
				console.log(email);
			}
		})
	</script>
</html>