<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력된 숫자까지의 합 구하기</title>
</head>
<body>

<% // parseInt(input) 이 아이는 javascript에서만 통용되는 메서드
   // Integer.parseInt(input) 자바 영역이니까, 원래 이렇게 썼음 멍청아
	String input = request.getParameter("num");
	int inputNum = Integer.parseInt(input);
%>

<%
	int sum =0;
	for(int i=1; i<=inputNum; i++) { 
		sum +=i;
	}
%>

<%=input %>까지의 합 : <%=sum %>
	
</body>
</html>