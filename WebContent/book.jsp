<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̸�����</title>
</head>
<body>

<%--
		<% �ڹټҽ� %> : ��ũ��Ʈ�� scriptlet
		<%= ���ϰ� %>	: �������� ���� ������ִ� ǥ���� expression
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
	<caption>����</caption>
	<tr>
	<th>�湮��</th><td><%=name %></td></tr>
	<tr><th>����</th><td><%=title %></td></tr>
	<tr><th>����</th><td><%=text %></td></tr>
	<tr><th>�����</th><td><%= df.format(today) %></td></tr>
</table>

</body>
</html>