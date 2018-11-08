<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<c:import url="/common/basicIncludeCss.jsp" />
	<c:import url="/common/basicIncludeScript.jsp" />
	<c:import url="/common/topMenu.jsp" />
	<link href="<c:url value="/css/login/loginForm.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container">
		<div class="form form--login">
			<div class="form--heading">Welcome LaonZena! </div>
			<form autocomplete="off" action='<c:url value="/login/login.do" />' >
				<input type="text" id="memberId" name="memberId" placeholder="ID">
				<input type="password" id="memberPass" name="memberPass" placeholder="Password">
				<button class="button">Login</button>
			</form>
		</div>
	</div>
</body>

</html>