<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />
<c:import url="/common/sideMenu/emartSideMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
<link rel="stylesheet" href="<c:url value="/css/sideMenu.css" />" />
<link rel="stylesheet" href="<c:url value='/css/boot.css' />" type="text/css"/>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<!-- <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>  -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

</head>
<body>
	<div id="overlay"></div>
	<form id="writeForm" method="post" enctype="multipart/form-data"
		action="<c:url value="/emart/review/writes.do"/>">
		<div id="content">
			<h1>Write</h1>
			<div id="board-write">
				<input type="hidden" value="${user.memberId}" name="writer">
			</div>
			<span id="search-img"> <img
				src='<c:url value="/img/god.jpg"/>' />
			</span>
			<div>
				<span>Title</span> <input type="text" id="title" name="title" />
			</div>
			<div>
				<span>Category</span> <select id="search-category" name="category">
					<option value="1">유제품</option>
					<option value="2">햄버거</option>
					<option value="3">음료</option>
				</select>
			</div>
			<div>
				<span>Product</span> <input type="text" id="product-name"
					name="product" />
			</div>
			<div class="file-attach">
				<span>이미지</span> <input type="file" id="file-attach" name="attach"
					multiple="multiple" />

				<!--             <input type="text" placeholder="c:/programfile/당나귀/해리포터.avi"/> -->
				<%--             <img id="search-product" class="" src='<c:url value="/img/search icon png vector.png"/>' /> --%>
			</div>

			<input type="hidden" name="content" id="boardContent" />
			<div class="summernote">
				<div id="summernote"></div>

			</div>
			<div id="write-review">
				<button id="submit">Submit</button>
				<button>Cancel</button>
				<button id="summer" type="button">note</button>
			</div>

		</div>
	</form>
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

			<c:forEach var="emart" items="${list}">
				<tr>
					<td>${emart.no}</td>
					<c:if test="${emart.category==1}">
						<td>유제품</td>
					</c:if>
					<c:if test="${emart.category==2}">
						<td>햄버거</td>
					</c:if>
					<c:if test="${emart.category==3}">
						<td>음료</td>
					</c:if>
					<td><img class="product"
						src='<c:url value="${emart.serPath}/${emart.serName}"/>' /></td>
					<td>${emart.product}</td>
					<td><a href="detail.do?no=${emart.no}">${emart.title}</a></td>
					<td>${emart.writer}</td>
					<td><fmt:formatDate value="${emart.regDate}"
							pattern="yyyy-MM-dd" /></td>
					<%-- 			    <td>${emart.viewCnt}</td> --%>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div class="searchBar">
		<select>
			<option value="">글제목</option>
			<option value="">작성자</option>
			<option value="">내용</option>
		</select> <input type="text" />
		<!--             <img src="../img/search icon png vector.png"/> -->
		<img src='<c:url value="/img/search icon png vector.png"/>' />
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
        $(".write").on("click",function () {
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "visible";
            content.style.visibility = "visible";
            $("#overlay").on("click", function () {
                overlay.style.visibility = "hidden";
                content.style.visibility = "hidden";
            })
            
           
        })
        
        /* 상품 검색 */
        $("#search-product").on("click", function(){
            alert("상품 검색");
            window.open(
			    "http://gs25.gsretail.com/gscvs/ko/products/youus-freshfood", "상품 검색", "width=700px,height=500px"	
		    );
        })
        
        /* 상품 검색 버튼 */
        $("#search-product").mouseenter(function () {
            $(this).animate({width:25, height:25});
        }).mouseleave(function(){
            $(this).animate({width:20, height:20});
        })
        
        /* Content submit */
        $("#write-review>button:nth-child(1)").on("click", function () {
            alert("제출");
//             $('#boardContent').val($('#summernote').summernote('code'))
            $('#boardContent').val($('.note-editable').text())
//             alert($("#boardContent").val())
            
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";
           
//             $.ajax({
//     			url:"/laonzena/emart/review/write.do", // 어디에 호출할지
//     			data : {
//     					title: $("#title").val(),
//     					content:$(".note-editable").text(),
//     					productName: $("#product-name").val(),
//     					category: $("#search-category").val(),
//     					writer: "test"
//     					}, // 파라미터를 객체 형태로 보낼 수도 있다(키:값)
//     			success: function () { // 요청결과로 넘어온 값으로 처리할 내용
//     				alert("등록 완료 !")
//     			}
//     		})
            
            
            
            
        })

        /* Content Cancle */
        $("#write-review>button:nth-child(2)").on("click", function () {
            alert("취소");
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";       
        })      
        
        
        
        $("#summer").click(function () {
        	console.log($('#summernote').summernote('code'))
		})
        


    </script>


	<script>
    	/* 썸머노트 */
	    $(document).ready(function() {
	        $('#summernote').summernote();
	    });
    </script>
</body>
</html>