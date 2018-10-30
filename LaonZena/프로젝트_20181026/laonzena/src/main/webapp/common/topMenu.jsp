<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<header id="header">
  <a class="site-logo" href="<c:url value="/main/main.do" />">
           LaonZena
  </a> 
  <nav role="navigation" id="nav-main" class="okayNav">
    <ul>
      <li><a href="<c:url value="/main.do" />">Home</a></li>
      <li><a id="top-sign-in" href="<c:url value="/login/signinForm.do" />">회원가입</a></li>
      <c:choose>
      <c:when test="${empty user}">
      	<li><a id="top-sign-in" href="<c:url value="/login/loginForm.do" />">로그인</a></li>
      </c:when>
      <c:otherwise>
	      <li><a href="<c:url value="/login/logout.do" />">로그아웃</a></li>
      </c:otherwise>
      </c:choose>
    </ul>
  </nav>
</header>
<!-- /header -->
<script>
	var navigation = $('#nav-main').okayNav();	
</script>



