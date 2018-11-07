<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<c:import url="/common/basicIncludeCss.jsp" />
	<c:import url="/common/basicIncludeScript.jsp" />
	<c:import url="/common/topMenu.jsp" />
	<c:import url="/common/sideMenu/gsSideMenu.jsp" />
	
	<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
	<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
	
	<link rel="stylesheet" href="<c:url value='/css/gs_review/boot.css' />" type="text/css"/>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
	<!-- jquery form : http://malsup.com/jquery/form/#getting-started  -->
<!-- 	<script src="http://malsup.github.com/jquery.form.js"></script>  -->
</head>
<body>
    <div id="overlay">
        
    </div>
    <div id="content">
    	<h1>
            Write
        </h1>
        <div id="board-write">
            
        </div>
        <span id="search-img">
            <img src='<c:url value="/img/god.jpg"/>' />
        </span>
        <div>
            <span>Title</span>
            <input id="title" type="text" />
        </div>
        <div>
            <span>Category</span>
            <select id="category">
                <option value="1">유제품</option>
                <option value="2">햄버거</option>
                <option value="3">음료</option>
            </select>
        </div>
        <div>
            <span>Product</span>
            <input type="text" id="product" />
        </div>
        <div class="file-attach"> 
            <span>이미지</span>
            <form id="fileForm" method="post" enctype="multipart/form-data">
	            <input type="file" name="attach" id="file-attach" multiple="multiple" /> 
            </form>
        </div>
       
        <div class="summernote">
            <div id="summernote"></div>  
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
      	<c:forEach var="b" items="${list}" varStatus="status">
          <tr>
              <td>${status.index+1}</td>
              <td>${b.category}</td>
              <td><img class="product" src='<c:url value="${b.serPath}${b.serName}"/>'/></td>
              <td>${b.product}</td>
              <td><a href='detail.do?no=${b.no}'>${b.title}</a></td>
              <td>${b.writer}</td>
              <td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
          </tr>	
      	</c:forEach>

      </tbody>
    </table>
        <div class="searchBar">
            <select id="search-select">
                <option value="1">글제목</option>
                <option value="2">작성자</option>
                <option value="3">내용</option>
            </select>
            <input type="text" id="search-content"/>
            <img id="search-btn" src='<c:url value="/img/search icon png vector.png"/>'/>
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

    <script>
    	/* 검색 */
    	$("#search-btn").click(function () {
    		alert($("#search-select").val());
    		alert($("#search-content").val());
    		windows.location("/laonzena/gs/review/search.do");
    	});
    	
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
        
        /* Content submit */
        $("#write-review > button:nth-child(1)").on("click", function () {
        	var form = $("#fileForm")[0];
        	console.log(form);
            var formData = new FormData(form);
            
            var title = $("#title").val();
            var category = $("#category").val();
            var product = $("#product").val();
            var content = $('#summernote').summernote('code');
//             var file = $("#file-attach").files();

            formData.append("title", title);
            formData.append("category", category);
            formData.append("product", product);
            formData.append("content", content);
            formData.append("writer", "${user.memberId}");

            console.log("title : " + title);
            console.log("category : " + category);
            console.log("product : " + product);
            console.log("content : " + content);
            console.log("formData : " + formData);
            console.log("writer : " + "${user.memberId}");
            
//             $.ajax({
//             	url : "/laonzena/gs/review/write.do",
//     			type : "POST",
//     			data : {
//     				title: title,
//     				category: category,
//     				product: product,
//     				content: content,
//     				writer: "${user.memberId}",
//     			}
//             }).done(function (data) {
//             	 $.ajax({
//                  	url : "/laonzena/gs/review/fileUpload.do",
//          			type : "POST",
//          			data : formData,
//          			contentType: false,
//          			processData: false
//                  }).done(function (data) {
//                  	alert("파일 업로드 성공");
//                  }).fail(function () {
//                  	alert("파일 업로드 실패");
//                  })
//             }).fail(function () {
//             	alert("게시물 데이터 전송 실패");
//             });
            
//             $.ajax({
//              	url : "/laonzena/gs/review/fileUpload.do",
//      			type : "POST",
//      			data : formData,
//      			contentType: false,
//      			processData: false
//              }).done(function (data) {
//             	 $.ajax({
//                  	url : "/laonzena/gs/review/write.do",
//          			type : "POST",
//          			data : {
//          				title: title,
//          				category: category,
//          				product: product,
//          				content: content,
//          				writer: "${user.memberId}"
//          			}
//                  }).done(function (data) {
//                 	 alert("게시물 데이터 전송 성공");
//                  }).fail(function () {
//                  	alert("게시물 데이터 전송 실패");
//                  })
//              }).fail(function () {
//              	alert("파일 업로드 실패");
//              })
 			$.ajax({
             	url : "/laonzena/gs/review/write.do",
     			type : "POST",
     			data : formData,
     			contentType: false,
     			processData: false
             }).done(function (data) {
            	 alert("파일 업로드 성공");
             }).fail(function () {
             	alert("파일 업로드 실패");
             })
            
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";
        });

        /* Content Cancle */
        $("#write-review>button:nth-child(2)").on("click", function () {
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";
        })

    </script>
    
    <script>
    	/* 썸머노트 */
	    $(document).ready(function() {
	        $('#summernote').summernote(
	        	{placeholder: '내용을 입력해주세요'}
	        );
	    });
    </script>
</body>
</html>