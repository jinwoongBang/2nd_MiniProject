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
	<link href="<c:url value="/css/login/signinForm.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
  <div class="form form--signup">
    <div class="form--heading">Welcome!</div>
    <form autocomplete="off">
      <input type="text" placeholder="ID">
      <input type="text" placeholder="Name">
      <input type="email" placeholder="Email">
      <input type="text" placeholder="인증번호 입력">
      <input type="password" placeholder="Password">
      <input type="password" placeholder="Password Confirm">
      <input type="text" placeholder="Address">
      <input type="text" placeholder="CellPhone">
      <button class="button">Sign Up</button>
      <button class="button" id="identification-confirm">중복확인</button>
      <button class="button" id="authorization-code">인증번호</button>
    </form>
    
      
  </div>
</div>

</body>
</html>