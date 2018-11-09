<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<style>
	img#logo {
		width: 200px; 
		height: 65px;
	}
	
	img#back {
		margin-left:20px;
		width: 600px; 
		height: 65px;
	}
</style>
<header id="header">
  <a class="site-logo" href="<c:url value="/main/main.do" />">
     <img id="logo" src='<c:url value="/img/logo.png"/>' />
  </a> 
  <span>
       <img id="back" src='<c:url value="/img/back.jpg"/>' />
  </span>
	<div id="topMenuList">
      <a class="top-menu" href="<c:url value="/main/main.do" />">Home</a>
      <c:choose>
      <c:when test="${empty user}">
	    <a class="top-menu"id="top-sign-in" href="<c:url value="/login/signinForm.do" />">회원가입</a>
      	<a class="top-menu" id="top-sign-in" href="<c:url value="/login/loginForm.do" />">로그인</a>
      </c:when>
      <c:otherwise>
	      <a class="top-menu" href="<c:url value="/login/logout.do" />">로그아웃</a>
      </c:otherwise>
      </c:choose>
	</div>
</header>



