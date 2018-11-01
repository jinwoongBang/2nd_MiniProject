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
            top:50px;
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
        #vert-nav .topmenu li.openmenu > a {
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

         table, tr{
            border-collapse: collapse;
        }

        table, tr, th{
            border : 1px solid black;
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
        
        


    
    </style>

</head>
<body>
    <!-- 메뉴 -->
    <div class="wrap">
        <section id="vert-nav">
            <h3>CU Board</h3>
            <nav role='navigation'>
                <ul class="topmenu">
                        <!-- <li><a id="#" href="#0"><i class="entypo-home"></i> Home</a></li> -->
                        <li><a href="#0"><i class="entypo-user"></i>Product</a>
                            <ul class="submenu">
                                <li><a href="#0">전체</a></li>
                            <li><a href="#0">간편식사</a></li>
                            <li><a href="#0">즉석조리</a></li>
                            <li><a href="#0">과자류</a></li>
                            <li><a href="#0">아이스크림</a></li>
                            <li><a href="#0">식품</a></li>
                            <li><a href="#0">음료</a></li>
                            <li><a href="#0">생활용품</a></li>
                        </ul></li>
                    <li><a href="#0"><i class="entypo-brush"></i>Event Product</a>
                        <ul class="submenu">
                            <li><a href="#0">1+1</a></li>
                            <li><a href="#0">2+1</a></li>
                            <li><a href="#0">3+1</a></li>
                            </ul>
                        </li>
                        <li><a href="#0"><i class="entypo-vcard"></i>Review Community</a></li>
                    </ul>
                </nav>  
            </section>
        </div>

        <!--Detail 상단-->
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
        
        <textarea style="width: 900px; height: 450px; resize: none;"  readonly="readonly">내용</textarea>

 		<div>
            <button type="submit" class="modify">수정</button>
            <button type="submit" class="delete">삭제</button>
        </div>
        
        <!-- 작성된 댓글 리스트 -->
		<div>
		<form method="post" action="registcomment.do">
			<input type="hidden" name="no" value="${board.no}" />	
			<table id="comment" width="70%">
			<tr>
				<td><input type="text" name="writer" /></td>
				<td><textarea name="content" ></textarea></td>
				<td><input type="submit" id="insertCmt" value="등록" /></td>
			</tr>	
			</table>
		</form>
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
	
       

</body>

</html>