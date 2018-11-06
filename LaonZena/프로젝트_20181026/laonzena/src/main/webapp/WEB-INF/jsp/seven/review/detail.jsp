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

<script
		  src="https://code.jquery.com/jquery-3.3.1.min.js"
		  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		  crossorigin="anonymous">
</script>
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
		
		
		
		margin-left:400px;border:1px solid #aaa;width: 900px; height: 70px;
		
		}
		#commentP{
			font-weight: bold; color: blue
		}
		#upndel {
			margin-left: 89%;
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
                        <td class="title" colspan="7">${board.title}</td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td class="writer">${board.writer}</td>
                        <th>작성일</th>
                        <td class="reg-date"><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></td>
                        <th>조회수</th>
                        <td class="cnt">${board.viewCnt}</td>
                        <th>추천수</th>
                        <td class="cnt"><span class="rec_count">${board.recomCnt}</span></td>
                    </tr>
                </thead>
        </table>
        
        <div id="content" style="width: 900px; height: 350px; margin-left:400px; margin-top:190px; border:1px solid #aaa">
<%-- 			<img style="width:300px;height: 100px;"src='<c:url value="${board.serPath}/${board.serName}"/>'/> --%>
			<img style="width:50%;height: 50%;"src='<c:url value="${board.serPath}/${board.serName}"/>'/>
			<br>
			${board.content}
			
		</div>
		
 		<div>
            <button class="modify" style="top:20px;" id="modify">수정</button>
            <button type="submit" class="delete" style="top:20px;">삭제</button>
        </div>
        
        <!-- 작성된 댓글 리스트 -->
		<div id="commentReg">
			<form id="commentAjax"action="insertComment.do" method="post">
				<input type="hidden" name="boardNo" value="${board.no}" />	
				<input type="hidden" name="writer" value="${user.memberId}" />	
				<textarea id="comment"name="content" style="top:53px;"></textarea>	
				<button type="button" class="modify" style="top:100px;left:300px">등록</button>
			</form>
		</div>
			<div id="commentList" style="margin-top:9%">
		<c:forEach var="comment" items="${commentList}">
				<div id="newComment">
					<input id="commentNo" value="${comment.commentNo}" type="hidden"/>
					<input id="boardNo" value="${comment.boardNo}" type="hidden"/>
					<p id="commentP">${comment.writer}</p>
					<div id="commentC">${comment.content}</div>
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
		$(".modify").click(function () {
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
		
		$("#upndel > #commentUpdate").click(function () {

			if($(this).parent().siblings("#commentP").text() != `${user.memberId}`) {
 				alert("수정 할 수 없습니다.")
				return false;
			}
			if($(this).text()=="수정완료") {
				$.ajax({

					url:"commentUpdate.do",
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
			$(this).parent().siblings("#commentC").html("<input type='text' id='content'/>")
			$(this).html("수정완료")
					
		})
		
		$("#upndel > #commentDelete").click(function () {

			if($(this).parent().siblings("#commentP").text() != `${user.memberId}`) {
 				alert("삭제 할 수 없습니다.")
				return false;
			}
			
			
			var commentNo = $(this).parent().siblings("input[id='commentNo']").val()
			var boardNo = $(this).parent().siblings("input[id='boardNo']").val()
			console.log(boardNo)
			console.log(commentNo)
			$.ajax({
				url:"commentDelete.do",
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