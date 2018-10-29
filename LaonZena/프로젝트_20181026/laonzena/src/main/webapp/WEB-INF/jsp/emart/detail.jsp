<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
  <meta charset='utf-8'>
  <title>자유게시판</title>
  <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
</head>
<body>
	 <h2>자유게시판</h2>
	 <hr /> 
	 번호 :  ${board.no}<br>
	 글쓴이 : <c:out value="${board.writer}" /><br>
	 제목 : <c:out value="${board.title}" /><br>
	 내용 : <c:out value="${board.content}" /><br>
	 등록일 : <fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /><br><br>  
	 조회수 : ${board.viewCnt}<br>
	 <hr />
	 <a href='updateForm.do?no=${board.no}'>수정</a>
	 <a href='delete.do?no=${board.no}'>삭제</a>
	 <a href='list.do'>목록</a>
	 
	 <div>
	 	<h2>댓글 목록</h2>
	 	<ul id="commentList"></ul>
	 </div>
	 <script>
	 	$.ajax({
	 		url: "<c:url value = "/board/commentList.do" />",
	 		data: "no=${board.no}",
	 	})
	 	.done(function(result) {
	 		console.log(result);
	 	});
	 </script>
</body>
</html>