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
   padding-top: 100px;
   
  
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



</head>
<body>


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
                	<span id="eventspan">1+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8806371/305520.1.jpg" />
                    <div class="games-bit__title" >
                            <span id="prname2">푸르밀)비피더스블루베리</span>
                            
                    </div>  
                    
                </a>

                <a href="#" class="games-bit">
                	<span id="eventspan">1+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801037/092264.1.jpg" />
                    <div class="games-bit__title">
                      <span id="prname3">동서)맥심TOP블랙</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                	<span id="eventspan">1+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801069/222165.1.jpg" />
                    <div class="games-bit__title">
                     <span id="prname4">남양)맛있는검은콩깨병</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                	<span id="eventspan">2+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801007/069883.1.jpg" />
                    <div class="games-bit__title">
                         <span id="prname5">CJ)모닝두부1700</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                	<span id="eventspan">3+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801207/141228.1.jpg" />
                    <div class="games-bit__title">
                            <span id="prname6">동서)맥심TOP블랙</span>
                    </div>  
                </a>
                <a href="#" class="games-bit">
                	<span id="eventspan">1+1</span>
                    <img class="games-bit__image" src="http://www.7-eleven.co.kr/upload/product/8801207/141228.1.jpg" />
                    <div class="games-bit__title">
                            <span id="prname7">동서)맥심TOP블랙</span>
                    </div>  
                </a>
            
          </div>

  </div>
</div> 

<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>



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
    
</script>
</body>
</html>