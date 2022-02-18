<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/login.css">
<script type="text/javascript">
	function inputCheck() {
		if(frm.email.value == ""){
			alert("이메일을 입력하세요");
			frm.email.focus();
			return false;
		} else if (frm.password.value == ""){
			alert("비밀번호를 입력하세요");
			frm.password.focus();
			return false;
		}
		frm.submit();  // 이메일이랑 비밀번호 모두 정상적으로 입력되면 값 전송
	}
</script>
</head>
<body>
<div class='loginform'>
    Maeumi
    <form id="frm" action="login.do" method="post">
        <input type='text' id='email' name='email' placeholder='이메일을 입력하세요'>
        <input type='password' id='password' name="password" placeholder='비밀번호를 입력하세요'>
    </form>
    
    <button class='forgot'>비밀번호 까먹?</button>
    <button class='login' onclick="inputCheck()">로그인</button>
    <br>
    <br>
    
    <p style="font-size: 20px">Maeumi가 처음이신가요?<a href="memberJoinForm.do"> 회원가입</a>하기</p>
</div>

</body>
</html>