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
<c:import url="/common/sideMenu/emartSideMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
<link rel="stylesheet" href="<c:url value="/css/sideMenu.css" />" />

</head>
<body>
	<div id="overlay"></div>
	<div id="content">
		<div id="board-write">
			<h1>Write</h1>
		</div>
		<span id="search-img"> <img src="../img/god.jpg">
		</span>
		<div>
			<span>Title</span> <input type="text" />
		</div>
		<div>
			<span>Category</span> <select id="search-category">
				<option>유제품</option>
				<option>햄버거</option>
				<option>음료</option>
			</select>
		</div>
		<div>
			<span>Product</span> <input type="text" /> <img id="search-product"
				src="../img/search icon png vector.png" />
		</div>
		<div>
			<span>Price</span> <input type="text" />
		</div>
		<div>
			<span id="text">Content</span>
			<textarea></textarea>
		</div>
		<div id="write-review">
			<button>Submit</button>
			<button>Cancel</button>
		</div>
	</div>

	</div>


	<!-- 게시판 -->
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>Category</th>
				<th>Product</th>
				<th>Product Name</th>
				<th>Title</th>
				<th>Writer</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${list}">
				<tr>
					<td>${b.no}</td>
					<td>${b.category}</td>
					<td>${b.product}</td>
					<td>${b.product}</td>
					<td><a href='detail.do?no=${b.no}'>${b.title}</a></td>
					<td>${b.writer}</td>					
					<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="searchBar">
		<select>
			<option value="">글제목</option>
			<option value="">작성자</option>
			<option value="">내용</option>
		</select> <input type="text" /> <img src="../img/search icon png vector.png" />
		<button type="submit" class="write">Write</button>
	</div>
	<div class="pagination">
		<div>
			<a href="#1">&lt;&lt;</a>
		</div>
		<div>
			<a href="#2">&lt;</a>
		</div>
		<div>
			<a href="#3">1</a>
		</div>
		<div>
			<a href="#4">2</a>
		</div>
		<div>
			<a href="#5">3</a>
		</div>
		<div>
			<a href="#6">4</a>
		</div>
		<div>
			<a href="#7">5</a>
		</div>
		<div>
			<a href="#8">6</a>
		</div>
		<div>
			<a href="#9">7</a>
		</div>
		<div>
			<a href="#10">8</a>
		</div>
		<div>
			<a href="#11">9</a>
		</div>
		<div>
			<a href="#12">10</a>
		</div>
		<div>
			<a href="#13">&gt;</a>
		</div>
		<div>
			<a href="#14">&gt;&gt;</a>
		</div>
	</div>

	<script>
		/* 글 작성 */
		$(".write").on("click", function() {
			var overlay = document.getElementById("overlay");
			var content = document.getElementById("content");
			overlay.style.visibility = "visible";
			content.style.visibility = "visible";
			$("#overlay").on("click", function() {
				overlay.style.visibility = "hidden";
				content.style.visibility = "hidden";
			})
		})

		/* 상품 검색 */
		$("#search-product")
				.on(
						"click",
						function() {
							alert("상품 검색");
							window
									.open(
											"http://gs25.gsretail.com/gscvs/ko/products/youus-freshfood",
											"상품 검색", "width=700px,height=500px");
						})

		/* 상품 검색 버튼 */
		$("#search-product").mouseenter(function() {
			$(this).animate({
				width : 25,
				height : 25
			});
		}).mouseleave(function() {
			$(this).animate({
				width : 20,
				height : 20
			});
		})

		/* Content submit */
		$("#write-review>button:nth-child(1)").on("click", function() {
			alert("제출");
			var overlay = document.getElementById("overlay");
			var content = document.getElementById("content");
			overlay.style.visibility = "hidden";
			content.style.visibility = "hidden";
		})

		/* Content Cancle */
		$("#write-review>button:nth-child(2)").on("click", function() {
			alert("취소");
			var overlay = document.getElementById("overlay");
			var content = document.getElementById("content");
			overlay.style.visibility = "hidden";
			content.style.visibility = "hidden";
		})
	</script>
</body>
</html>