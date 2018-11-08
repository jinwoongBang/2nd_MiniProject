<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/topMenu.jsp" />

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


</head>
<!-- 메뉴 -->
<style>
@import url("http://weloveiconfonts.com/api/?family=entypo");

*, *:after, *:before {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

[class*="entypo-"]:before, #form #submit, .green, .orange {
	-webkit-font-smoothing: antialiased;
	-moz-macosx-text-rendering: grayscale;
}

.wrap:after {
	clear: both;
	content: "";
	display: table;
}

.wrap:before {
	content: "";
	display: table;
}

[class*="entypo-"]:before {
	font-family: 'entypo', sans-serif;
	font-style: normal;
}

a {
	color: rgb(173, 173, 173);
	text-decoration: none;
	margin-bottom: 1em;
}

a i {
	margin-right: 7px;
}

.wrap {
	position: absolute;
	width: 1020px;
	padding: 2em 0;
	top: 50px;
}

section {
	background: #fff;
	border: 1px solid #e0e0e0;
	width: 300px;
	float: left;
	/* margin-right: 100%;*/
	padding: 0 3% 1em;
}

#vert-nav ul {
	list-style: none;
	padding: 0;
}

#vert-nav .topmenu li.openmenu>a {
	background: #50a37e;
}

#vert-nav .topmenu li.openmenu .sf {
	-webkit-transform: rotate(180deg);
}

#vert-nav .topmenu li {
	position: relative;
}

#vert-nav .topmenu li .sf {
	position: absolute;
	z-index: 9;
	top: 1em;
	right: 1em;
	color: #378a65;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	-webkit-transition: all 0.3s ease;
	transition: all 0.3s ease;
	-webkit-backface-visibility: hidden;
}

#vert-nav .topmenu li:last-child a {
	border-bottom: 0.2em solid #398e68;
}

#vert-nav .topmenu li a {
	margin: 0;
	padding: 1em;
	display: block;
	width: 100%;
	background: #3D9970;
	color: #fff;
	border-bottom: 0.1em solid #398e68;
}

#vert-nav .topmenu li a:hover {
	background: #50a37e;
}

#vert-nav .submenu {
	display: none;
}

#vert-nav .submenu li:last-child a {
	border-width: .1em;
}

#vert-nav .submenu li a {
	padding-left: 2.6em;
	background: #3b946d;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	-webkit-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

#vert-nav .submenu li a:hover {
	background: #3c976f;
}

#form input, #form textarea {
	width: 100%;
	outline: none;
	border: 0.1em solid #ebebeb;
	border-bottom: none;
	color: #aaa;
	padding: .65em .65em .65em 2.2em;
}

#form input:focus, #form textarea:focus {
	background: #fcfcfc;
}

#form .field {
	padding: 0;
	position: relative;
}

#form label {
	position: absolute;
	text-transform: uppercase;
	color: #e6e6e6;
	top: .5em;
	left: .5em;
	font-size: 1.2em;
}
/* #form label.focused {
            color: #3D9970;
        } */
#form #rangeval {
	float: right;
}

#form #submit {
	outline: none;
	border: none;
	background: #3D9970;
	display: block;
	color: #fff;
	padding: 0.75em;
	font-size: 1em;
	border-bottom: 0.2em solid #398e68;
	font-weight: 700;
	letter-spacing: 3px;
	text-transform: uppercase;
}

#form #submit:hover {
	color: #fff;
	background: #50a37e;
}

#form #submit:active {
	border-bottom: none;
	margin-top: .2em;
}

.green {
	background: #3D9970;
	display: inline-block;
	color: #fff;
	padding: 1em 2em;
	font-size: 1em;
	border-bottom: 0.2em solid #398e68;
	font-weight: 700;
	letter-spacing: 3px;
	text-transform: uppercase;
}

.green:hover {
	color: #fff;
	background: #50a37e;
}

.green:active {
	border-bottom: none;
	margin-top: .2em;
}

.orange {
	background: #FF851B;
	display: inline-block;
	color: #fff;
	padding: 1em 2em;
	font-size: 1em;
	border-bottom: 0.2em solid #ed7c19;
	font-weight: 700;
	letter-spacing: 3px;
	text-transform: uppercase;
}

.orange:hover {
	color: #fff;
	background: #ff9132;
}

.orange:active {
	border-bottom: none;
	margin-top: .2em;
}

/* 게시판 Detail, Comment */
table, tr {
	border-collapse: collapse;
}

table, tr, th {
	border: 1px solid black;
}

th {
	background-color: rgb(255, 245, 233);
	height: 50px;
}

table {
	position: absolute;
	top: 110px;
	left: 400px;
	width: 900px;
	text-align: center;
}

textarea {
	position: relative;
	border-radius: 20px;
	width: 500px;
	height: 120px;
	left: 400px;
	top: 250px;
}

#comment {
	position: relative;
	border-radius: 20px;
	width: 900px;
	height: 50px;
	left: 400px;
	top: 250px;
}

.modify, .delete {
	position: relative;
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	top: 200px;
	left: 1100px;
	width: 100px;
	height: 30px;
	font-weight: bold;
}

.commentList {
	position: absolute;
	top: 700px;
	left: 0px;
	width: 900px;
	text-align: center;
}

#cmtCon {
	width: 80%;
}

#cmtId {
	width: 10%;
}

#summernote {
	top: 250px;
	left: 400px;
}

.note-editor {
	top: 180px;
	left: 400px;
	width: 900px;
}

#header {
	display: flex !important;
}

.site-logo {
	margin-bottom: 0 !important;
}
</style>

<body>

	<!--Detail 상단-->

	<table id="bar">
		<thead>
			<tr>
				<th>제목</th>
				<td class="title" colspan="7"><input type="text" name="title"
					value="${board.title}"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td class="writer">${board.writer}</td>
				<th>작성일</th>
				<td class="reg-date"><fmt:formatDate value="${board.regDate}"
						pattern="yyyy-MM-dd" /></td>
				<th>조회수</th>
				<td class="cnt">${board.viewCnt}</td>
				<th>추천수</th>
				<td class="cnt"><span class="rec_count">
						${board.recomCnt} </span></td>
			</tr>
		</thead>
	</table>

	<div id="summernote">${board.content}</div>





	<div>
		<button type="button" class="modify" style="top: 180px; left: 75%">수정</button>
	</div>


	<form id="update" action="update.do" method="post">
		<input id="title1" name="title" type="hidden" value="" /> <input
			id="content1" name="content" type="hidden" value="" /> <input
			id="boardNo1" name="no" type="hidden" value="${board.no}" />
	</form>


</body>
<script>
	$(".modify").click(function () {
		$("#title1").val($("input[name='title']").val())
		$("#content1").val($(".panel-body").html())
		console.log($("#title1").val())
		console.log($("#content1").val())
		console.log($("#boardNo1").val())
		$('#update').submit();	
	})
	
	


		$('#summernote').summernote({
			
// 				width:900,
				height:500,
				minHeight:null,
				maxHeight:null,
				focus:true,
				disableResize:false,
				disableResizeEditor:false,
				resize:false
	
		});
	
	
	
		

	
</script>

</html>