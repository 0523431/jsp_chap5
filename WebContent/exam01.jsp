<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Էµ� ���ڱ����� �� ���ϱ�</title>
</head>
<body>

<% // parseInt(input) �� ���̴� javascript������ ���Ǵ� �޼���
   // Integer.parseInt(input) �ڹ� �����̴ϱ�, ���� �̷��� ���� ��û��
	String input = request.getParameter("num");
	int inputNum = Integer.parseInt(input);
%>

<%
	int sum =0;
	for(int i=1; i<=inputNum; i++) { 
		sum +=i;
	}
%>

<%=input %>������ �� : <%=sum %>
	
</body>
</html>