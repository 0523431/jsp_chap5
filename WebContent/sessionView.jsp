<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ��� ����</title>
</head>
<body>

<%
	List<String> cart = (List<String>)session.getAttribute("cart");
	/*
		getAttribute("cart")
		: cart��� �̸��� ���� �Ӽ������� ������
		: (cart list�� ��ü�� ������)
	*/
	
	if(cart == null || cart.size() == 0) {
%>	
	<h3>��ٱ��Ͽ� ��ǰ�� �����ϴ٤Ф�</h3>	
<%	} else {
		for(String p : cart) {
%>
		<h4><%=p %></h4>
<%		}
	}
//	session.invalidate();	// ������ ���Ǵ� session��ü�� ������ ��ȿ�������� ���·� ����
							// �׸��� ���ο� session��ü�� ������

	// cart �Ӽ��� ����
	session.removeAttribute("cart");
%>

</body>
</html>