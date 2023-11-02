<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
		<c:if test='${userid == ""}'>
			${email}는 가입되지 않은 이메일 주소입니다.
			<input type="button" value="다시찾기" onclick="findId()"/>
		</c:if>
		<c:if test='${userid != ""}'>
			가입하신 ID는 ${userid}입니다.
			<input type="button" value="로그인" onclick="idok('${userid}')"/>	
		</c:if>
</body>
</html>