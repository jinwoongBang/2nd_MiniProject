<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<c:import url="/common/basicIncludeCss.jsp" />
	<c:import url="/common/basicIncludeScript.jsp" />
	<c:import url="/common/topMenu.jsp" />
	<link href="<c:url value="/css/login/signinForm.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
  <div class="form form--signup">
    <div class="form--heading">Welcome!</div>
    <form autocomplete="off" action='<c:url value="/login/signin.do" />' method="POST" onsubmit="return doSignin()">
      <input type="text" id="memberId" name="memberId" maxlength="14" placeholder="ID (14자 이내)">
      <input type="text" id="memberName" name="memberName" placeholder="Name">
      <div id="juminNo">
	      <input type="text" id="frontJuminNo" name="frontJuminNo" maxlength="6" placeholder="주민등록번호 앞자리">
	      -<input type="password" id="backJuminNo" name="backJuminNo" maxlength="7" placeholder="주민등록번호 뒷자리">
      </div>
      
      <input type="email" id="memberEmail" name="memberEmail" placeholder="Email">
      <input type="text" id="certificationNo" name="certificationNo" placeholder="인증번호 입력">
      <input type="password" id="memberPass" name="memberPass" maxlength="12" placeholder="Password (12자 이내)">
      <input type="password" id="memberPassC" name="memberPassC" maxlength="12" placeholder="Password Confirm">
      <span id="unmatchPass">비밀번호가 일치하지 않습니다.</span>
      <input type="text" id="memberAddress" name="memberAddress" placeholder="Address">
      <input type="text" id="memberCellPhone" name="memberCellPhone" placeholder="CellPhone">
      <button class="button" id="sign-up">Sign Up</button>
      <button class="button" id="identification-confirm">중복확인</button>
      <button class="button" id="authorization-code">인증번호 발송</button>
    </form>
     
  </div>
</div>

<script>
	/* 아이디 중복 체크 여부 */
	var idConfirmFlag = false;
	/* 비밀번호 일치 여부 */
	var passConfirmFlag = false;
	
	/* 아이디 중복 체크 */
	$("#identification-confirm").click(function (e) {
		e.preventDefault();
		var id = $("#memberId").val();
		alert("중복 확인 : " + id);
		$.ajax({
			url : "/laonzena/login/identificationConfirm.do",
			type : "POST",
			data : {memberId : id},
			beforeSend : function () {
				if(id == "") {
					alert("아이디를 입력하시오");
					return false;
				}
			}
		}).done(function (data) {
			if(data.memberId != null){
				alert("해당 아이디가 존재합니다");
				idConfirmFlag = false;
			} else {
				alert("아이디 사용 가능");
				idConfirmFlag = true;
			}
		});
	});
	
	/* 비밀번호 일치 체크 */
	$("#memberPassC").keyup(function () {
		if($("#memberPass").val() != $("#memberPassC").val()) {
			$("#unmatchPass").css("visibility", "visible");
			passConfirmFlag = false;
			console.log(passConfirmFlag);
		} else {
			$("#unmatchPass").css("visibility", "hidden");
			passConfirmFlag = true;
			console.log(passConfirmFlag);
		};
	});
	
	function doSignin() {
		if(idConfirmFlag == false){
			alert("아이디 중복확인이 되지 않았습니다.");
			return false;
		} else if ($("#memberName").val() == "") {
			alert("이름을 입력주세요.");
			return false;
		} else if ($("#frontJuminNo").val().length < 6  || $("#backJuminNo").val().length < 7) {
			alert("주민등록번호를 입력해주세요.");
			return false;
		} else if ($("#memberEmail").val() == "") {
			alert("이메일을 입력해주세요.");
			return false;
		} else if ($("#memberPass").val() == null) {
			alert("비밀번호를 입력해주세요.");
			return false;
		} else if ($("#memberAddress").val() == "") {
			alert("주소를 입력해주세요.");
			return false;
		} else if ($("#memberCellPhone").val() == "") {
			alert("핸드폰 번호를 입력해주세요.");
			return false;
		} else if (passConfirmFlag == false) {
			alert("패스워드가 일치하지 않습습니다.");
			return false;
		}
		
		return true;
	}
	
	$("#authorization-code").click(function (e) {
		e.preventDefault();
		$.ajax({
			url: "/laonzena/login/sendMail.do",
			type: "POST",
			data: {memberEmail: $("#memberEmail").val()}
		}).done(function (data) {
			alert("메일전송완료");
		}).fail(function () {
			alert("실패");
		})
	});
</script>

</body>
</html>