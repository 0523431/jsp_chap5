<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ����߰�</title>
</head>
<body>

<% // java����
	request.setCharacterEncoding("euc-kr");

	String product = request.getParameter("product");
	List<String> cart = (List<String>)session.getAttribute("cart");
	/*
		(List<String>)session.getAttribute("cart")
		- (List<String>) ����ȯ
		- getAttribute("cart")
		  : cart�� ��ϵ� �Ӽ��� ��ü�� ���� (��ϵ� �Ӽ��� ���� ��ȸ)
		
	*/
		
	if(cart == null) { // cart �Ӽ��� ���� ���
		cart = new ArrayList<String>();
		session.setAttribute("cart", cart);
		/*
			setAttribute("cart", cart)
			session��ü�� cart��� �ϴ� �Ӽ��� ���
			cart�� list
		*/
	}
	cart.add(product); // cart����Ʈ�� product�� �־���
%>

<script type="text/javascript">
	alert("<%=product%>��(��) ��ٱ��Ͽ� �߰��Ǿ����ϴ� ^^");
	history.go(-1); // ���������� �̵��ϱ�
</script>

</body>
</html>