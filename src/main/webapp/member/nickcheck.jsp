<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h2>닉네임 중복확인</h2>
	<form action="../nickCheck.do" method="get" name="frm">
		닉네임 <input type=text name="nickname" value="${nickname}"> <input type=submit
			value="중복 체크"> <br>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.nickname.value = "";
			</script>
			${nickname}는 이미 사용 중인 닉네임입니다.
		</c:if>
		<c:if test="${result==-1}">
		${userid}는 사용 가능한 닉네임입니다.
		<input type="button" value="사용" class="cancel" onclick="nickok('${nickname}')">
		</c:if>
	</form>
</body>
</html>