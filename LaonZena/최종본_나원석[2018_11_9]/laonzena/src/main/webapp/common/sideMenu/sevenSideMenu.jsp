<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<section id="vert-nav">
		<h3>Seven Board</h3>
		<nav role='navigation'>
		<ul class="topmenu">
			<!-- <li><a id="#" href="#0"><i class="entypo-home"></i> Home</a></li> -->
			<li><a href="#0"><i class="entypo-user"></i>Product</a>
				<ul class="submenu">
					<li><a href="<c:url value="/seven/product/product.do"/>">전체</a></li>
					<li><a href="<c:url value="/seven/product/rice.do"/>">도시락/조리면</a></li>				
					<li><a href="<c:url value="/seven/product/noodle.do"/>">삼각김밥/김밥</a></li>
					<li><a href="<c:url value="/seven/product/fast.do"/>">샌드위치/햄버거</a></li>
				</ul></li>
			<li><a href="#0"><i class="entypo-brush"></i>Event Product</a>
				<ul class="submenu">
					<li><a href="<c:url value="/seven/event/1n1.do"/>">1+1</a></li>
					<li><a href="<c:url value="/seven/event/2n1.do"/>">2+1</a></li>
					<li><a href="<c:url value="/seven/event/presentation.do"/>">증정행사</a></li>
				</ul></li>
			<li><a href="<c:url value="/seven/review/list.do"/>"><i class="entypo-vcard"></i>Review
					Community</a></li>
		</ul>
		</nav>
		</section>
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