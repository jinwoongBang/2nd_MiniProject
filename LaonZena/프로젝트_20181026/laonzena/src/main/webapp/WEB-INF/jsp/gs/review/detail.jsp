<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
	<c:import url="/common/topMenu.jsp" />
    <c:import url="/common/basicIncludeCss.jsp" />
    <c:import url="/common/sideMenu/gsSideMenu.jsp" />
    <link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />

<script
		  src="https://code.jquery.com/jquery-3.3.1.min.js"
		  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		  crossorigin="anonymous">
</script>
    <style>
        /* 게시판 Detail, Comment */

         table{
            border-collapse: collapse;
            border-radius: 15px;
        }

        table, tr, th{
            border : 1px solid gray;
        }

        th{
          background-color: rgb(255, 245, 233);
          height: 50px;
          
        }

        table {
          position: absolute;
          top:110px;
          left:400px;
          width: 900px;
          text-align: center;
       
        }

        textarea{
            position: relative;
            border-radius: 20px;
            width: 500px;
            height: 120px;
            left: 400px;
            top: 250px;
        }
        /* 게시판 상세 내용 */
        #detail-content{
        	position: relative;
        	left: 400px;
        	width: 900px;
        	height: 350px;
        	top:190px;
        	border: 1px solid gray;
        	border-radius: 10px;
        	display: flex;
        }
        
        /* 댓글 작성 */
        #comment{
            position: relative;
            border-radius: 20px;
            width: 900px;
            height: 50px;
            left: 400px;
            top: 380px;
        }
        
        /* 작성된 댓글 */
        #createdCmt{
        	position: relative;
            border-radius: 20px;
            width: 900px;
            height: 50px;
            top: 180px;
        }
		
		/* 수정, 삭제 버튼*/
        .modify, .delete{
            position: relative;
            border: 0px solid white;
            border-radius: 10px;
            background-color: #e5fff3;
            top: 80px;
            left:1100px;
            width: 100px;
            height: 30px;
            font-weight: bold;
        }

        .commentList{
          position: absolute;
          border-radius: 20px;
          top:700px;
          left:0px;
          width: 900px;
          text-align: center;
          
          
        }
        
        #insertCmt{
       		border: 0px solid white;
            border-radius: 10px;
            background-color: #e5fff3;
            width: 100px;
            height: 30px;
            font-weight: bold;
        }
        
        /*댓글 작성 내용 */
        #cmtCon{
          width: 70%;
          border-radius: 20px;
        }
        /*댓글 작성자 아이디 */
        #cmtId{
          width: 10%;
          border-radius: 20px;
        }

        /*댓글 작성 버튼 */
        #cmtButton{
            border: 0px solid white;
            border-radius: 10px;
            background-color: #e5fff3;
            font-weight: bold;
            width: 100px;
            height: 30px;
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
                        <td class="reg-date"><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></td>
                        <th>조회수</th>
                        <td class="cnt">${b.viewCnt}</td>
                        <th>추천수</th>
                        <td class="cnt"><span class="rec_count">${b.recomCnt}</span></td>
                    </tr>
                </thead>
        </table>
        
        <div id="detail-content">
        	${b.content}
        	<img src='<c:url value="${b.serPath}${b.serName}"/>'/>
        </div>

 		<div>
            <button class="modify" style="top:200px;" id="modify">수정</button>
            <button type="submit" class="delete" style="top:200px;">삭제</button>
        </div>
        
        <!-- 작성된 댓글 리스트 -->
		<div>
<!-- 			<table id="comment"> -->
			<form id="comment-form" method="post" action="registcomment.do">
				<input type="hidden" name="no" value=${b.no} />	
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
       var no = $("#comment-form > input[name=no]").val();
       console.log(no);
       	$("#modify").click(function () {
			location.href="updateForm.do?no="+no;
		})
       
       </script>

</body>

</html>