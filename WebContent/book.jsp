<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>미리보기</title>
</head>
<body>

<%--
		<% 자바소스 %> : 스크립트릿 scriptlet
		<%= 리턴값 %>	: 브라우저에 값을 출력해주는 표현식 expression
--%>

<%
	request.setCharacterEncoding("euc-kr");

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	
	//String subs = request.getParameter("subs");
	StringBuffer text = new StringBuffer(request.getParameter("subs"));
    int loc = (new String(text)).indexOf('\n');
    while(loc > 0){
		text.replace(loc, loc+1, "<BR>");
		loc = (new String(text)).indexOf('\n');
	}

	Date today = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
%>

<table border=1>
	<caption>방명록</caption>
	<tr>
	<th>방문자</th><td><%=name %></td></tr>
	<tr><th>제목</th><td><%=title %></td></tr>
	<tr><th>내용</th><td><%=text %></td></tr>
	<tr><th>등록일</th><td><%= df.format(today) %></td></tr>
</table>

</body>
</html>