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
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />

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

<style>

/*  Games Bit  */
.games-bit {
	outline: 0;
	margin: 0 30px 0 0;
	width: 125px;
	height: 205px;
	display: inline-block;
	font-family: 'Gotham-Book';
	color: #333;
	font-size: 16px;
	line-height: 1.25;
	vertical-align: top;
}

@media ( max-width : 480px) {
	.games-bit {
		margin: 0 10px 0 0;
		width: 90px; */
		max-height: 145px;
		font-size: 12px;
	}
}

.games-bit:hover {
	transition: ease-in-out all 0.3s;
	transform: scale(1.1);
}

.games-search .games-bit {
	width: 200px;
	height: 270px;
	background: #fff;
	padding: 30px;
	margin: 0 15px 30px 0;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
	overflow: hidden;
}

@media ( max-width : 480px) {
	.games-search .games-bit {
		max-height: 135px;
		padding: 10px;
		margin: 0 5px 10px 5px;
		width: calc(23%);
	}
}

.games-bit__title {
	margin: 10px 0;
	margin-left: -20px;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

@media ( max-width : 400px) {
	.games-bit__title {
		margin: 5px 0;
	}
}

.games-bit__image {
	/*     width: 60%;   */
	/*    height: 60%;   */
	margin-left: -12px;
}

.games-bit__rating {
	color: #818181;
	font-size: 14px;
}

@media ( max-width : 480px) {
	.games-bit__rating {
		font-size: 12px;
	}
}

/* Search Games Page */
.games-search {
	padding: 30px;
	margin-top: 5%;
}

@media ( max-width : 480px) {
	.games-search {
		padding: 10px;
	}
}

.games-search a {
	text-decoration: none;
}

.games-navigator__content {
	height: 0;
	opacity: 0;
	transition: all 0.3s ease-in;
}

.games-navigator--active .games-navigator__content {
	height: auto;
	opacity: 1;
}

#price {
	margin-left: 55%;
}

#eventspan {
	background-color: blue;
	color: white;
	border-radius: 70%
}
</style>



<!-- 페이지 버튼 -->
<style>
#pgbtn {
	margin-left: -11px;
}
</style>

</head>
<body>

	<div class="wrap">
		<section id="vert-nav">
		<h3>EMART Board</h3>
		<nav role='navigation'>
		<ul class="topmenu">
			<!-- <li><a id="#" href="#0"><i class="entypo-home"></i> Home</a></li> -->
			<li><a href="#0"><i class="entypo-user"></i>Product</a>
				<ul class="submenu">
					<li><a href="#0">전체</a></li>
					<li><a href="#0">냉장</a></li>
					<li><a href="#0">음료</a></li>
					<li><a href="#0">일반식품</a></li>
					<li><a href="#0">과자</a></li>
				</ul></li>
			<li><a href="#0"><i class="entypo-brush"></i>Event Product</a>
				<ul class="submenu">
					<li><a href="#0">1+1</a></li>
					<li><a href="#0">2+1</a></li>
					<li><a href="#0">덤증정</a></li>
				</ul></li>
			<li><a href="#0"><i class="entypo-vcard"></i>Review
					Community</a></li>
		</ul>
		</nav> </section>
	</div>


	<div class="wrap" style="margin-left: 30%">
		<div class="games-navigator , games-navigator--active">

			<div class="games-navigator__content">
				<div class="games-search">
					<c:forEach var="p" items="${products}">
						<a href="#" class="games-bit"> <img class="games-bit__image"
							src="https://www.emart24.co.kr${p.image}" />
							<div class="games-bit__title">
								<span id="prname1" style='margin-left: 15px'>${p.name}</span>
								<div id="price" style="padding-top: 10%;">${p.price}</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
		<nav>
		<ul class="pagination pagination-lg" style="padding-left: 30%">
			<li class="disabled"><a href="#" aria-label="Previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			<li class="active"><a href="#" id="pgbtn">1 <span
					class="sr-only">(current)</span></a></li>
			<li class=""><a href="#" id="pgbtn">2 <span class="sr-only">(current)</span></a></li>
			<li class=""><a href="#" id="pgbtn">3 <span class="sr-only">(current)</span></a></li>
			<li class=""><a href="#" id="pgbtn">4 <span class="sr-only">(current)</span></a></li>
			<li class=""><a href="#" id="pgbtn">5 <span class="sr-only">(current)</span></a></li>
			<li><a href="#" aria-label="Next" id="pgbtn"> <span
					aria-hidden="true">&raquo;</span>
			</a></li>

		</ul>
		</nav>
	</div>

	<script>
        /* 사이드 메뉴 */
        $(".submenu").parent().prepend('<i class="entypo-down-open-big sf"></i>');

        $("#vert-nav .topmenu a").click( function() {
            var $menu = $(this).next(".submenu");
            $menu.slideToggle('slow');
            $menu.parent().toggleClass('openmenu');
        });

        $("input,textarea").focus( function() {
            $(this).prev("label").addClass('focused');
        }); 

        $("input,textarea").blur( function() {
            $(this).prev("label").removeClass('focused');
        });
    </script>
</body>
</html>