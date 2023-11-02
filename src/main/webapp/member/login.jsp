<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
<style>

.loginborder {
  text-align: center;
  width: 600px;
  padding: 10px;
  margin: 40px auto 200px;
  border: 1px solid #909ea9; /* #8ac6f7 */
  border-radius: 8px;
  position: relative;
}

.logo {
  display: block;
  margin: 50px auto 0px;
  width: 126px;
  height: 126px;
}

img {
	width: 126px;
	height:126px;
}

h1 {
  margin: 0 auto 50px;
}

input[id],
input[pw] {
  background-color: #c6d4d9;    /* #d8edf5 */
  border : none;
  border-radius: 5px;
  width : 400px;
  height : 50px;
}

input[type="submit"] {
  width: 400px;
  height: 50px;
  border: 1px solid darkblue; /* #8ac6f7 */
  border-radius: 5px;
  background-color: #31373b; /* #52a6d7 */
  color: white;
}

.container {
  width: 620px;
  margin: 0 auto;
}

a {
  text-decoration : none; 
  text-align : center;
  color : black;

}


</style>
</head>
<body>
  <div id ="container">
  	
  	<div class="logo">
      <a href="main.do"><img src="image/logo_move.gif" alt="로고"></a>
   </div>
  
  	<div class ="loginborder">

       <h1>로그인</h1>
       	<form action="login.do" method="post" name="frm">
        <label for="uid"></label>
       
        <input type="text" name="uid" id="uid" required autofocus placeholder="아이디" value="${userid}">
        <br><br>
        <label for="pw"></label> 
        <input type="password" name="pw" id="pw" required autofocus placeholder="비밀번호"><br><br>

        					<input type="submit" value="로그인" onclick="return loginCheck()"><br><br>
      
       
  		</form>
    <a href="#" onclick="findId()">아이디 찾기</a> / <a href="#" onclick="findPw()">비밀번호 찾기</a> /<a href="#" onclick = "location.href='join.do'">회원가입</a>
    </div>
  </div>

</body>
</html>
