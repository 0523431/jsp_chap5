<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session을 이용한 장바구니 예제</title>
</head>
<body>

<h3>상품선택</h3>
<form action="sessionAdd.jsp" method="post">
	<select name="product">
		<option>사과</option><option>자두</option><option>무화과</option>
		<option>자몽</option><option>복숭아</option><option>멜론</option>
	</select>
	<input type="submit" value="장바구니추가">
</form>

<a href="sessionView.jsp">장바구니보기</a>

</body>
</html>