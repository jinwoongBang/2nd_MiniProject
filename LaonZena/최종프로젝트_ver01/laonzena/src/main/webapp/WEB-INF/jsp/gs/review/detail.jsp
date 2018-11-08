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
<c:import url="/common/sideMenu/gsSideMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<%-- <link rel="stylesheet" href="<c:url value="/css/board.css" />" /> --%>
<link rel="stylesheet" href="<c:url value="/css/sideMenu.css" />" />
<%-- <link rel="stylesheet" href="<c:url value='/css/boot.css' />" type="text/css"/> --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
	
</script>
<!-- 메뉴 -->
<style>
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
	height: 42px;
	left: 400px;
	top: 250px;
}

/* 댓글 작성 */
#comment {
	position: relative;
	border-radius: 20px;
	width: 900px;
	height: 50px;
	left: 400px;
	top: 380px;
}

/* 작성된 댓글 */
#createdCmt {
	position: relative;
	border-radius: 20px;
	width: 900px;
	height: 50px;
	top: 180px;
}

/* 수정, 삭제 버튼*/
.modify, .delete {
	position: relative;
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	top: 80px;
	left: 1100px;
	width: 100px;
	height: 30px;
	font-weight: bold;
}



.commentList {
	position: absolute;
	border-radius: 20px;
	top: 700px;
	left: 0px;
	width: 900px;
	text-align: center;
}

#insertCmt {
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	width: 100px;
	height: 30px;
	font-weight: bold;
}

/*댓글 작성 내용 */
#cmtCon {
	width: 70%;
	border-radius: 20px;
}
/*댓글 작성자 아이디 */
#cmtId {
	width: 10%;
	border-radius: 20px;
}

/*댓글 작성 버튼 */
#commentUpdate, #commentDelete {
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	font-weight: bold;
	width: 60px;
	height: 25px;
    font-size: 12px;
}

/*작성된 댓글 내용 */
#cmtListCon{
    border-radius: 20px;
    width: 70%;
    
}

#content {
	width:910px;
}

html {
	background-color: #fcfcfc;
}

body {
	background-color: #fcfcfc;
}

#content{
	text-align: center; 
}

#newComment{
    position: relative;
    border-radius: 20px;
    border: 1px solid #aaa;
    width: 900px;
    height: 50px;
    left: 400px;
}
#commentP{
	font-weight: bold;
	color: blue;
	margin-left: 10px;
	float: left;
}

#commentC{
	margin:14px;
	float: left;
}
#upndel {
	margin:11px;
	float: right;
}

</style>

</head>
<body>
	<!--Detail 상단-->

	<table>
		<thead>
			<tr>
				<th>제목</th>
				<td class="title" colspan="7">${b.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td class="writer">${b.writer}</td>
				<th>작성일</th>
				<td class="reg-date"><fmt:formatDate value="${b.regDate}"
						pattern="yyyy-MM-dd" /></td>
				<th>조회수</th>
				<td class="cnt">${b.viewCnt}</td>
				<th>추천수</th>
				<td class="cnt"><span class="rec_count">${b.recomCnt}</span></td>
			</tr>
		</thead>
	</table>

	<div id="content"
		style="width: 900px; height: 350px; margin-left: 400px; margin-top: 190px; border: 1px solid #aaa">
		<%-- 			<img style="width:300px;height: 100px;"src='<c:url value="${board.serPath}/${board.serName}"/>'/> --%>
		<img style="width: 300px; height: 250px;"
			src='<c:url value="${b.serPath}/${b.serName}"/>' /> <br>
		${b.content}

	</div>

	<div>
<!-- 		<button class="recom" style="top: 10px;" id="recom"> -->
<%-- 			<a href="detail.do?no=${board.no}">추천</a> --%>
<!-- 		</button> -->
		<button class="modify" style="top: 10px;" id="modify">
			<a href="detail.do?no=${b.no}">수정</a>
		</button>
		<button type="submit" class="delete" style="top: 10px;">
			<a href="delete.do?no=${b.no}">삭제</a>
		</button>
	</div>

	<!-- 작성된 댓글 리스트 -->
	<div id="commentReg">
		<form id="commentAjax" action="insertComment.do" method="post">
			<input type="hidden" name="boardNo" value="${b.no}" /> <input
				type="hidden" name="writer" value="${user.memberId}" />
			<textarea id="comment" name="content" style="top: 53px;"></textarea>
			<button type="button" id="regComment" class="modify" style="top: 83px; left: 300px">등록</button>
		</form>
	</div>

	<div id="commentList" style="margin-top:7%">
		<c:forEach var="comment" items="${commentList}">
			<div id="newComment">
				<input id="commentNo" value="${comment.commentNo}" type="hidden" />
				<input id="boardNo" value="${comment.boardNo}" type="hidden" />
				<p id="commentP" style="float: left">${comment.writer}</p>
				<p id="commentC" style="float: left">${comment.content}</p>
				<div id="upndel">
					<button id="commentUpdate">수정</button>
					<button id="commentDelete">삭제</button>
				</div>
			</div>
		</c:forEach>
	</div>
	<script>
       	$("#modify").click(function () {
			location.href="updateForm.do";
		})
		
		// 댓글 ajax 등록 처리
		$("#regComment").click(function () {
			var formData = $("#commentAjax").serialize();			
			
			if($("#commentAjax > input[name='writer']").val()==""){
				alert("로그인 이후 이용해 주세요");
				return false;
			}
			if($("#commentAjax > textarea[name='content']").val() ==""){
				alert("내용을 입력하세요");
				return false;
			}
			var boardNo = $("#commentAjax > input[name='boardNo']").val()
			var writer = $("#commentAjax > input[name='writer']").val();
			var content = $("#commentAjax > textarea[name='content']").val()
			
// 			console.log("작성자:"+writer , "내용:"+content, "글번호 :" +boardNo)
			$.ajax({
				url:"insertComment.do",
				type:"POST",
				data:{"writer":writer,"content":content,"boardNo":boardNo},
				success: function (result) {
					var html="";
					var lastResult="";
					for(var i=0; i<result.length; i++){
						html = "<div id='newComment'>"
						html+="<input id='commentNo' type='hidden' value='"+result[i].commentNo+"'/>"
						html+="<input id='boardNo' type='hidden' value='"+result[i].boardNo+"'/>"
						html+="<p id='commentP'>"
						html+=result[i].writer
						html+="</p>"
						html+="<div id='commentC'>"
						html+=result[i].content
						html+="</div>"
						html+="<div id='upndel'>"
						html+="<button id='commentUpdate'>수정"
						html+="</button>"
						html+="<button id='commentDelete'>삭제"
						html+="</button>"
						html+="</div>"
						html +="</div>"
						lastResult+=html;
					}

					$("#commentList").html(lastResult)
				},
				error: function () {
					$("#result").html("ERROR 발생")
				}
			});
		})
		
		$(document).on("click","#upndel > #commentUpdate", function () {
			


				if($(this).parent().siblings("#commentP").text() != `${user.memberId}`) {
	 				alert("수정 할 수 없습니다.")
					return false;
				}
				if($(this).text()=="수정완료") {
					$.ajax({

						url:"updateComment.do",
						data:{
								"writer":`${user.memberId}`,
								"content":$("#commentC > input[id='content']").val(),
								"boardNo":$("#commentAjax > input[name='boardNo']").val(),
								"commentNo":$(this).parent().siblings("input[id='commentNo']").val()
							},
						success : function (result) {
						
							var html="";
							var lastResult="";
							for(var i=0; i<result.length; i++){
								html = "<div id='newComment'>"
								html+="<input id='commentNo' type='hidden' value='"+result[i].commentNo+"'/>"
								html+="<input id='boardNo' type='hidden' value='"+result[i].boardNo+"'/>"
								html+="<p id='commentP'>"
								html+=result[i].writer
								html+="</p>"
								html+="<div id='commentC'>"
								html+=result[i].content
								html+="</div>"
								html+="<div id='upndel'>"
								html+="<button id='commentUpdate'>수정"
								html+="</button>"
								html+="<button id='commentDelete'>삭제"
								html+="</button>"
								html+="</div>"		
								html +="</div>"
								lastResult+=html;
							}

							$("#commentList").html(lastResult)
						}
						
					})
					$(this).html("수정")		
					
				}
				$(this).parent().siblings("#commentC").html("<input type='text' id='content' style='width:670px'/>")
				$(this).html("수정완료")
			
		})
		

		
		
		$(document).on("click","#upndel > #commentDelete", function () {
			if($(this).parent().siblings("#commentP").text() != `${user.memberId}`) {
 				alert("삭제 할 수 없습니다.")
				return false;
			}
			
			
			var commentNo = $(this).parent().siblings("input[id='commentNo']").val()
			var boardNo = $(this).parent().siblings("input[id='boardNo']").val()
			console.log(boardNo)
			console.log(commentNo)
			$.ajax({
				url:"deleteComment.do",
				data:{"boardNo":boardNo , "commentNo":commentNo},
				success:function(result) {
					alert("삭제 완료")
					var html="";
					var lastResult="";
					for(var i=0; i<result.length; i++){
						html = "<div id='newComment'>"
						html+="<input id='commentNo' type='hidden' value='"+result[i].commentNo+"'/>"
						html+="<input id='boardNo' type='hidden' value='"+result[i].boardNo+"'/>"
						html+="<p id='commentP'>"
						html+=result[i].writer
						html+="</p>"
						html+="<div id='commentC'>"
						html+=result[i].content
						html+="</div>"
						html+="<div id='upndel'>"
						html+="<button id='commentUpdate'>수정"
						html+="</button>"
						html+="<button id='commentDelete'>삭제"
						html+="</button>"
						html+="</div>"
						html +="</div>"
						lastResult+=html;
					}

					console.log(lastResult);
					$("#commentList").html(lastResult)
				}
				
			})
		
		})
		
  
       </script>

</body>

</html>