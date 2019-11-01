<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jsp Action 태그 예제</title>
</head>
<body>

<h3>
이 페이지는 forward_action02.jsp로 forward됩니다.<br>
그러므로 이 내용은 화면에 출력되지 않습니다.<br>
forward될 때, request객체도 forward_action02.jsp로 전달 됩니다.<br>
즉, forward_action01.jsp와 forward_action02.jsp 페이지는 같은 request영역의 페이지입니다.<br>
</h3>

<!--
	jsp:forward ======> 액션 태그
	
	파라미터의 정보를 추가하고 없앨 수 있는 기능을 가지고 있음
-->

<jsp:forward page="forward_action02.jsp">
	<jsp:param value="***" name="test"/>
	<jsp:param value="forward test" name="add"/>
</jsp:forward>

</body>
</html>