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
    <c:import url="/common/basicIncludeCss.jsp" />
	<c:import url="/common/topMenu.jsp" />
	<c:import url="/common/sideMenu/gsSideMenu.jsp" />

    <!-- include libraries(jQuery, bootstrap) -->
<link rel="stylesheet" href="<c:url value='/css/boot.css' />" type="text/css"/>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />

</head>
    <!-- 메뉴 -->
<style>
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
        
        #comment{
            position: relative;
            border-radius: 20px;
            width: 900px;
            height: 50px;
            left: 400px;
            top: 250px;
        }

        .modify, .delete{
            position: relative;
            border: 0px solid white;
            border-radius: 10px;
            background-color: #e5fff3;
            top: 200px;
            left:1100px;
            width: 100px;
            height: 30px;
            font-weight: bold;
        }

        .commentList{
          position: absolute;
          top:700px;
          left:0px;
          width: 900px;
          text-align: center;
        }

        #cmtCon{
          width: 80%;
        }

        #cmtId{
          width: 10%;
        }
    
    
    	#summernote{
    		top: 250px;
    		left: 400px;
    	}
    	
     	.note-editor { 
     		top: 180px; 
     		left: 400px; 
     		width:900px; 
    		
    	} 
    	#header{
    		display: flex !important;
    	}
    	.site-logo{
    		margin-bottom: 0 !important;
    	}
    </style>

<body>
        <!--Detail 상단-->
        <table id="bar">
                <thead>
                    <tr>
                        <th>제목</th>
                        <td class="title" colspan="7">
                            <input type="text" name="title" value="${board.title}">
                        </td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td class="writer">
                            <input type="text" name="writer" value="${board.writer}">
                        </td>
                        <th>작성일</th>
                        <td class="reg-date">
                            <input type="text" name=regDate value="<fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd"/>" />
                        </td>
                        <th>조회수</th>
                        <td class="cnt">
                            <input type="text" name="cnt" value="${board.viewCnt}">
                        </td>
                        <th>추천수</th>
                        <td class="cnt"><span class="rec_count">
                                <input type="text" name="cnt" value="${board.recomCnt}">
                        </span></td>
                    </tr>
                </thead>
        </table>
        
        <div id="summernote">${board.content}</div>

    
    
          
        <div id=comment>
                <input type="hidden" name="boardNo"value="" />            
                <input id="cmtId" type="text" name="writerId" readonly="readonly" value="댓글작성자"/>
                <input id="cmtCon" type="text" name="content" />
                <button>작성</button>
        </div>

        <div>
            <button type="submit" class="modify" style="top:130px">수정</button>
            <button type="submit" class="delete" style="top:130px">삭제</button>
        </div>


</body>
<script>
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
	
	
	$(".modify").click(function (e) {
		e.preventDefault();
		var title = $("input[name=title]").val();
		var content = $('#summernote').summernote('code');
		var no = ${board.no};
		location.href="/laonzena/gs/review/update.do?title="+title+"&content="+content+"&no="+no;
	})
	
		

	
</script>

</html>