<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Karla);
@import url(https://fonts.googleapis.com/css?family=Ubuntu:300);

.joinform {
	padding: 120px 0;
	font-size: 62px;
	color: tomato;
	width: 400px;
	font-family: 'Karla';
	margin: 0 auto;
	text-align: center;
}

input {
	font-family: 'Ubuntu';
	font-weight: 300;
	border: 0;
	border-bottom: 1px solid #ff5407;
	width: 100%;
	height: 36px;
	font-size: 26px;
}
input:focus {
	outline: none;
	box-shadow: none;
	background: #ffeae2;
}
button {
	border: 1px solid black;
	padding: 5px;
	margin-top: 50px;
	position: absolute;
	outline: 0;
	background: white;
}
.buttonafter:after {
	content: '';
	display: block;
	position: absolute;
	top: 8px;
	left: 100%;
	/*should be set to 100% */
	width: 0;
	height: 0;
	border-color: transparent transparent transparent #14a03d;
	/*border color should be same as div div background
        color*/
	border-style: solid;
	border-width: 5px;
}
.login {
	background: tomato;
	color: #fff;
	float: right;
}

.login.buttonafter {
	background: #14a03d;
}
</style>
<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function nicknameCheck() {
			var nickname = $("#nickname").val(); // 닉네임 입력값. 
			if(nickname == ""){
				alert("사용하실 닉네임을 입력해주세요");
				$("#nickname").focus();
				return;
			} 
			$.ajax({
				url : "ajaxNicknameCheck.do",
				type: "post",
				data: {
					chkNickname : nickname
				},
				dataType: "text",  // 서버로부터 받아올 데이터 형식
				success: function(data) {
					if(data =="0") { // check의값이 0인 경우, 즉 중복 닉네임이 없는 경우. 
						alert( nickname + " 는 사용할 수 있는 닉네임입니다.")
						$("#nicknamebtn").attr("disabled", true);
						#("#password").focus();
					} else {
						alert("중복된 닉네임입니다. 다른 닉네임을 입력해주세요.");
						$("#nickname").val("");
						$("#nickname").focus();
					}
				}
			})
	}
	
	
		
</script>
</head>
<body>
<!-- 회원가입 하는 양식 만들기-->
 <div class='joinform'>
        Maeumi
        <form id="frm" action="login.do" method="post">
            <input type='text' id='email' name='email' placeholder='이메일을 입력'>
            <div class=	"nickname">
                <input type="text" id="nickname" name="nickname" placeholder="사용하실 닉네임" style="width: 100%;">
                <button style="float: right; margin-top: 30px;" onclick="nicknameCheck()" id="nicknamebtn">중복확인</button>
            </div>
            <input type='password' id='password' name="password" placeholder='비밀번호'>
            <input type="password" id="passwordChk" name="passwordChk" placeholder="비밀번호 확인">
            <input type="text" id="phone" name="phone" placeholder="연락처">
        </form>
        <button class='joinbtn' onclick="formCheck()">회원가입!</button>
</div>
</body>
</html>