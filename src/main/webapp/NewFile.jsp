<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=application.getServerInfo() %>

서블릿정보
<%=application.getMajorVersion()%>.<%= application.getMinorVersion() %>

JSP정보
<%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>


</body>
</html>