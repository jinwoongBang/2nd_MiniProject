<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />
<c:import url="/common/sideMenu/miniSideMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
<link rel="stylesheet" href="<c:url value="/css/sideMenu.css" />" />

<!-- 메뉴 이름 글씨 폰트관련, 페이징 -->
<link rel="stylesheet" href="<c:url value='/css/boot.css' />"
	type="text/css" />
<!-- <script -->
<!-- 	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<!-- 구조가 되는 틀에서 각자 크롤링 해온 이미지 크기가 다르기 때문에 별도의 크기 지정. -->
<style>
	.games-bit__image{
    width: 60%;
    height: 60%;
	}
</style>
</head>
<body>
	<div class="wrap" style="margin-left: 30%">
		<div class="games-navigator , games-navigator--active">

			<div class="games-navigator__content">
				<div class="games-search">
					<c:forEach var="p" items="${products}">
						<a href="#" class="games-bit"> <img class="games-bit__image"
							src="https://www.ministop.co.kr/MiniStopHomePage/page${p.image}" />
							<div class="games-bit__title">
								<div id="price">${p.price}</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>