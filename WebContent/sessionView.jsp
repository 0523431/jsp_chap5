<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 보기</title>
</head>
<body>

<%
	List<String> cart = (List<String>)session.getAttribute("cart");
	/*
		getAttribute("cart")
		: cart라는 이름을 가진 속성정보를 가져와
		: (cart list의 객체를 가져와)
	*/
	
	if(cart == null || cart.size() == 0) {
%>	
	<h3>장바구니에 상품이 없습니다ㅠㅠ</h3>	
<%	} else {
		for(String p : cart) {
%>
		<h4><%=p %></h4>
<%		}
	}
//	session.invalidate();	// 기존에 사용되던 session객체를 강제로 유효하지않은 상태로 만듦
							// 그리고 새로운 session객체를 생성함

	// cart 속성만 제거
	session.removeAttribute("cart");
%>

</body>
</html>