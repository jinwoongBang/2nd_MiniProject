<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<!-- 메인 -->
	<h1>
		<a href="<c:url value="/main/main.do" />">index에서 메인 이동</a>
	</h1>
	
	<!-- cu -->
	<h1>
		<a href="<c:url value="/cu/review/list.do" />">cu review 이동</a>
	</h1>
	
	<!-- gs -->
	<h1>
		<a href="<c:url value="/gs/review/list.do" />">gs review 이동</a>
	</h1>
	
	<!-- seven Eleven -->
	<h1>
		<a href="<c:url value="/seven/review/list.do" />">sevenreview 이동</a>
	</h1>
	
	<!-- ministop -->
	<h1>
<%-- 		<a href="<c:url value="/ministop/review/list.do" />">ministop review 이동</a> --%>
		<a href="<c:url value="/mini/event/list.do" />">ministop 이벤트 이동</a>
	</h1>
	
	<!-- emart -->
	<h1>
		<a href="<c:url value="/emart/review/list.do" />">emart review 이동</a>
	</h1>
	
	
	
	<hr>
	
	<!-- 상품 리스트  -->
	<h1>
		<a href="<c:url value="/seven/product/productlist.do" />">상품리스트 이동</a>
	</h1>
	
	
	
	
<!-- 	<script>location.href = "/main/main.do"</script> -->
</body>
</html>