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
		<c:if test='${pw == ""}'>
			가입되지 않은 정보입니다.
			<input type="button" value="다시찾기" onclick="findPw()"/>
		</c:if>
		<c:if test='${pw != ""}'>
			가입하신 패스워드는 ${pw}입니다.
			<input type="button" value="로그인" onclick="idok('${userid}')"/>
		</c:if>
</body>
</html>