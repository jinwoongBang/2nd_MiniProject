<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<div class="pagination">
            <div>
                <a href="#">&lt;&lt;</a>
            </div>
            <div>
                <a href="#" onclick="prevPage()">&lt;</a>
            </div>
            
            <c:forEach var="i" begin="1" end="10">
	            <div>
	                <a class="paging" id="{i}" href="${i}">${i}</a>
	            </div>
            </c:forEach>
            
            <div>
                <a href="#" onclick="nextPage()">&gt;</a>
            </div>
            <div>
                <a href="#">&gt;&gt;</a>
            </div>
        </div>