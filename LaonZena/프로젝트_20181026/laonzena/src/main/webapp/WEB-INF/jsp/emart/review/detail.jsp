<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>자유게시판</title>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />
<c:import url="/common/sideMenu/emartSideMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
<link rel="stylesheet" href="<c:url value="/css/sideMenu.css" />" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
</head>
<body>	
        <table>
                <thead>
                    <tr>
                        <th>제목</th>
                        <td class="title" colspan="7">제목</td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td class="writer">작성자</td>
                        <th>작성일</th>
                        <td class="reg-date">yy-MM-dd HH:mm:ss</td>
                        <th>조회수</th>
                        <td class="cnt">board.viewCnt</td>
                        <th>추천수</th>
                        <td class="cnt"><span class="rec_count">추천수</span></td>
                    </tr>
                </thead>
        </table>
        
        <textarea style="width: 900px; height: 350px; top:190px;resize: none;"  readonly="readonly">내용</textarea>

 		<div>
            <button class="modify" style="top:200px;" id="modify">수정</button>
            <button type="submit" class="delete" style="top:200px;">삭제</button>
        </div>
        
        <!-- 작성된 댓글 리스트 -->
		<div>
<!-- 			<table id="comment"> -->
			<form method="post" action="registcomment.do">
				<input type="hidden" name="no" value="${board.no}" />	
<!-- 				<tr> -->
	<!-- 				<td><input type="text" name="writer" /></td> -->
<!-- 					<td><textarea name="content"></textarea></td> -->
<!-- 					<td><input type="submit" id="insertCmt" value="등록" /></td> -->
<!-- 				</tr>	 -->
				<textarea id="content"name="content" style="top:230px;"></textarea>
			
			</form>
				<button type="submit" class="modify" style="top:240px;left:1207px">등록</button>
<!-- 			</table> -->
		</div>
	
<!-- 	<form action="updatecomment.do" method="post"> -->
<%-- 		<input type="hidden" name="no" value="${board.no}" /> --%>
<%-- 		<input type="hidden" name="commentNo" value="${commentNo}" /> --%>
<!-- 	<div id="commentList"> -->
		
<!-- 	  <table id="createdCmt" width='80%' border='1'> -->

<%-- 		<c:forEach var="comment" items="${commentList}"> --%>
<%-- 		<c:choose> --%>
<%-- 	  		<c:when test="${commentNo eq comment.commentNo}">	 --%>
<!-- 				<tr> -->
<%-- 				  <td><c:out value="${comment.writer}" /></td> --%>
<!-- 				  <td> -->
				  <!-- 	<textarea id="CmtCon" name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>  -->
<!-- 				  </td> -->
<!-- 				  <td colspan="2"> -->
<!-- 				  	  <input type="submit" value="수정" />	 -->
<%-- 				  	  <a href="detail.do?no=${board.no}">취소</a>	 --%>
<!-- 				  </td> -->
<!-- 				 </tr> -->
<%-- 		 	</c:when> --%>
<%-- 		 	<c:otherwise> --%>
<!-- 				<tr> -->
<%-- 				  <td><c:out value="${comment.writer}" /></td> --%>
<%-- 				  <td><c:out value="${comment.content}" /></td> --%>
<%-- 				  <td><fmt:formatDate var="regDate" value="${comment.regDate}"  --%>
<%-- 				                      pattern="yyyy-MM-dd HH:mm:ss" /> --%>
<%-- 				      <c:out value="${regDate}" /> --%>
<!-- 				  </td> -->
<!-- 				  <td> -->
<%-- 				  	  <a href="deletecomment.do?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	 --%>
<%-- 				  	  <a href="detail.do?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	 --%>
<!-- 				  </td> -->
<!-- 				 </tr> -->
<%-- 		 	</c:otherwise> --%>
<%-- 		 </c:choose>	 --%>
<%-- 		 </c:forEach> --%>
<%-- 		 <c:if test="${empty commentList}"> --%>
<!-- 		 <tr> -->
<!-- 		    <td colspan='4'>댓글이 존재하지 않습니다.</td> -->
<!-- 		 </tr> -->
<%-- 	 	</c:if> --%>
<!-- 	 </table> -->
<!-- 	</div> -->
<!-- 	</form>	 -->
	
       <script>
       	$("#modify").click(function () {
			location.href="updateForm.do";
		})
       
       </script>
</body>
</html>