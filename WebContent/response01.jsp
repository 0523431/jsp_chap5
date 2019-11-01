<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>response 객체 예제</title>
</head>
<body>

<h2>
response 객체는 브라우저에 처리 결과를 전달해 주는 응답 객체이다.<br>
내부에 출력 버퍼를 가지고 있어서, 브라우저에 전달되는 내용을 저장하고 있다.<br>
또한 response 객체를 이용하여 브라우저에게 다른 페이지를 요청하도록 명령을 전달 할 수도 있다.
</h2>
<h3>
지금 작성 중인 내용은 화면에 출력되지 않는다.
</h3>

<% response.sendRedirect("response02.jsp"); %>

<%--
	<% response.sendRedirect("response02.jsp"); %>
	
	sendRedirect("url") url을 즉시 다시 요청해
	- 리다이렉트
		1. url이 바뀌게 됨.
		2. content type을 설정해줌
		   response.setContentType("text/html; charset=EUC-KR")
--%>

</body>
</html>