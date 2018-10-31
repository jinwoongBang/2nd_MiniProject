<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />
<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
		  src="https://code.jquery.com/jquery-3.3.1.min.js"
		  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		  crossorigin="anonymous">
</script>


<style>

/*  Games Bit  */
 .games-bit { 
   outline: 0; 
   margin: 0 30px 0 0; 
   width: 125px; 
   height: 205px; 
   display: inline-block; 
   font-family: 'Gotham-Book'; 
   color: #333;
   font-size: 16px; 
   line-height: 1.25; 
   vertical-align: top; 
 } 
 @media (max-width: 480px) { 
   .games-bit { 
     margin: 0 10px 0 0; 
     width: 90px; */
     max-height: 145px; 
     font-size: 12px; 
   } 
 } 
 .games-bit:hover { 
   transition: ease-in-out all 0.3s; 
   transform: scale(1.1); 
 } 
 .games-search .games-bit { 
   width: 200px; 
   height: 270px; 
   background: #fff; 
   padding: 30px; 
   margin: 0 15px 30px 0;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24); 
   transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1); 
   overflow: hidden; 
 } 
 @media (max-width: 480px) { 
  .games-search .games-bit { 
     max-height: 135px; 
     padding: 10px; 
     margin: 0 5px 10px 5px; 
     width: calc(23%); 
   } 
 } 

 .games-bit__title { 
   margin: 10px 0; 
   margin-left:-20px;
   display: -webkit-box; 
   -webkit-line-clamp: 2; 
   -webkit-box-orient: vertical; 
 } 
 @media (max-width: 400px) { 
  .games-bit__title {
    margin: 5px 0; 
   } 
 } 

 .games-bit__image { 
/*     width: 60%;   */
/*    height: 60%;   */
   margin-left: 33px;
   
 } 

 .games-bit__rating { 
   color: #818181; 
   font-size: 14px; 
 } 
 @media (max-width: 480px) { 
   .games-bit__rating { 
    font-size: 12px; 
  } 
} 

 /* Search Games Page */ 
 .games-search { 
   padding: 30px; 
   margin-top:5%;
  
 } 
 @media (max-width: 480px) { 
   .games-search { 
     padding: 10px; 
   } 
 } 
 .games-search a { 
   text-decoration: none; 
} 


 .games-navigator__content { 
   height: 0; 
   opacity: 0; 
   transition: all 0.3s ease-in; 
 } 
 .games-navigator--active .games-navigator__content { 
   height: auto; 
   opacity: 1; 
 } 

 #price{ 
    margin-left: 55%;  

 } 
 
#eventspan{
	background-color:blue;
	color: white;
	border-radius: 70%
}


</style>



<!-- 사이드 바 -->

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
    </style>

<!-- 페이지 버튼 -->
	<style>
		
	#pgbtn {
		margin-left:-11px;
	}
	
	</style>

</head>
<body>

<div class="wrap">
        <section id="vert-nav">
            <h3>MiniStop Board</h3>
            <nav role='navigation'>
                <ul class="topmenu">
                    <!-- <li><a id="#" href="#0"><i class="entypo-home"></i> Home</a></li> -->
                    <li><a href="#0"><i class="entypo-user"></i>Product</a>
                        <ul class="submenu">
                            <li> <a href="#0">전체</a></li>
                            <li> <a href="#0">아이스크림</a></li>
                            <li> <a href="#0">페스트푸드</a></li>
                            <li> <a href="#0">간편식</a></li>
                            <li> <a href="#0">가공식품</a></li>
                        </ul>
                            </li>
                            <li><a href="#0"><i class="entypo-brush"></i>Event Product</a>
                        <ul class="submenu">
                            <li> <a href="#0">1+1</a></li>
                            <li> <a href="#0">2+1</a></li>
                            <li> <a href="#0">덤증정</a></li>
                        </ul>
                    </li>
                    <li><a href="#0"><i class="entypo-vcard"></i>Review Community</a></li>
                </ul>
            </nav>  
        </section>
    </div>


<div class="wrap" style="margin-left:30%">
<div class="games-navigator , games-navigator--active">
  
  <div class="games-navigator__content">
        <div class="games-search">
                <a href="#" class="games-bit">
                    <span id="eventspan">1+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8806371/305513.1.jpg" />
                    <div class="games-bit__title" >
                      <span id="prname1" style='margin-left:15px'>푸르밀)비피더스사과</span> 
                    </div>  
                    
                </a>

                <a href="#" class="games-bit">
<!--                 	<span id="eventspan">1+1</span> -->
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8806371/305520.1.jpg" />
                    <div class="games-bit__title" >
                            <span id="prname2">푸르밀)비피더스블루베리</span>
                            
                    </div>  
                    
                </a>

                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801037/092264.1.jpg" />
                    <div class="games-bit__title">
                      <span id="prname3">동서)맥심TOP블랙</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801069/222165.1.jpg" />
                    <div class="games-bit__title">
                     <span id="prname4">남양)맛있는검은콩깨병</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801007/069883.1.jpg" />
                    <div class="games-bit__title">
                         <span id="prname5">CJ)모닝두부1700</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801207/141228.1.jpg" />
                    <div class="games-bit__title">
                            <span id="prname6">동서)맥심TOP블랙</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801207/141228.1.jpg" />
                    <div class="games-bit__title">
                            <span id="prname7">동서)맥심TOP블랙</span>
                    </div>  
                </a>
                
                <a href="#" class="games-bit">
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801207/141228.1.jpg" />
                    <div class="games-bit__title">
                            <span id="prname7">동서)맥심TOP블랙</span>
                    </div>  
                </a>
            
          </div>

  </div>
</div> 
<nav>
  <ul class="pagination pagination-lg" style="padding-left:30%">
    <li class="disabled"><a href="#"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#" id="pgbtn">1 <span class="sr-only">(current)</span></a></li>
    <li class=""><a href="#" id="pgbtn">2 <span class="sr-only">(current)</span></a></li>
    <li class=""><a href="#" id="pgbtn">3 <span class="sr-only">(current)</span></a></li>
    <li class=""><a href="#" id="pgbtn">4 <span class="sr-only">(current)</span></a></li>
    <li class=""><a href="#" id="pgbtn">5 <span class="sr-only">(current)</span></a></li>
    <li>
      <a href="#" aria-label="Next" id="pgbtn">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    
  </ul>
</nav>
</div>






<script>
	$(".games-bit__image").width("60%")
	$(".games-bit__image").height("65%")
	$(".games-bit__title").width("190px")
	$(".games-bit__title").height("120px")

	
    for(var i=1; i<8; i++) {
    	if($("#prname"+i).text().length < 12){
    		
    		$("#prname"+i).css({"margin-left":"10px"})	
    	} else if ($("#prname"+i).text().length==10) {
    		$("#prname"+i).css({"margin-left":"60px"})
    	}
        if($("#prname"+i).text().length >10) {
			
            $("#prname"+i).after("<div id='price' style=padding-top:10%>1200원</div>")
        } else {
        	
            $("#prname"+i).after("<div id='price' style=padding-top:10%;>1200원</div>")
        }
    }
    
	
	
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
</body>
</html>