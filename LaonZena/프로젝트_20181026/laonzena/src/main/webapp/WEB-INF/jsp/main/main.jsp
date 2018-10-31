<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />
<link rel="stylesheet" href="<c:url value='/css/main.css' />" />
<link rel="stylesheet" href="<c:url value="/css/footer.css" />" />
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.16.1/TweenMax.min.js"></script>
</head>
<body>
	<h1 id="title">
		모두의  &nbsp; 편의점
	</h1>
	<div id="search">
		<input id="searchbox" type="text" value="상품명을 입력하세요.">
		<button>검색</button>
	</div>
	<br>

	<!-- 메인 편의점 -->
	<div class="banner">
		<div class="banner__item" style="cursor: pointer" onclick="location.href='<c:url value="/cu/review/list.do"/>'"></div>
		<div class="banner__item" style="cursor: pointer" onclick="location.href='<c:url value="/gs/review/list.do"/>'"></div>
		<div class="banner__item" style="cursor: pointer" onclick="location.href='<c:url value="/seven/review/list.do"/>'"></div>
		<div class="banner__item" style="cursor: pointer" onclick="location.href='<c:url value="/mini/review/list.do"/>'"></div>
		<div class="banner__item" style="cursor: pointer" onclick="location.href='<c:url value="/emart/review/list.do"/>'"></div>
	</div>
	<footer>
		<div>		
			<span>
				<h1>(주)모두의 편의점</h1>
			</span>
			<span id="name">
				&lt;창업 문의&gt;  &nbsp;&nbsp;
				<a href="http://cu.bgfretail.com/index.do">CU 대표 : 이득재</a> &nbsp; || &nbsp; 
				<a href="http://gs25.gsretail.com/gscvs/ko/main">GS25 대표 : 방진웅</a> &nbsp; || &nbsp;
				<a href="http://www.7-eleven.co.kr/">SevenEleven 대표 : 나원석</a> &nbsp; || &nbsp;
				<a href="https://www.ministop.co.kr/">MiniStop 대표 : 신득수</a> &nbsp; || &nbsp;
				<a href="https://www.emart24.co.kr/index.asp">Emart24 대표 : 박태환</a>
			</span>		
		</div>
	</footer>
</body>
</html>