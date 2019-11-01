<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>out 내장 객체 예제</title>
</head>
<body>

<h3>
out객체는 response객체의 출력 범퍼에 데이터를 보낼 수 있는 출력 스트림 객체이다.
</h3>

<%
	int sum =0;
	for(int i=1; i<=10; i++) {
		sum += i;
%>
	1부터 <%=i %>까지의 부분합 : <%=sum %><br>
<%	}%>

<br>

<% // java scriptlet을 열었다 닫았다 하지않고 쓸 수 있게 해줌 ===== out 내장객체
	sum =0;
	for(int i=1; i<=10; i++) {
		sum += i;
		out.println("1부터"+i+"까지의 부분합 : "+sum+"<br>");
	}
%>

</body>
</html>