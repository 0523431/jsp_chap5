<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward하는 페이지</title>
</head>
<body>

<h1>
forward하는 페이지 입니다.<br>
이 내용은 화면에 출력되지 않습니다.
</h1>

<% pageContext.forward("forward02.jsp"); %>

</body>
</html>