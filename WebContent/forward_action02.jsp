<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward action �±� ����</title>
</head>
<body>

<h3>
forward_action01.jsp ���������� forward�� forward_action02.jsp �������Դϴ�.
</h3>

test : <%= request.getParameter("test") %>
add : <%= request.getParameter("add") %>

</body>
</html>