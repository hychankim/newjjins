<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>패스워드 찾기</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h4>가입할 때 제출하신 ID와 이메일 주소를 입력해주세요.</h4>
	<form action="../findpw.do" method="get" name="frm">
		<table>
			<colgroup>
				<col/>
				<col/>
			</colgroup>
			<tr>
				<td>ID</td>
				<td><input class="input_box" type="text" name="uid" id="uid" /></td>
			</tr>
			<tr>
				<td>이메일</td> 
				<td><input class="input_box" type="text" name="email" id="email" /></td>
			</tr> 
			<tr>
				<td></td>
				<td style = "text-align:center;"><input type=submit value="확인" /></td>
			</tr>
		</table>
	</form>
</body>
</html>