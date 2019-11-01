<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include action 태그 예제</title>
</head>
<body>

<h3>
include 액션태그는 다른 페이지의 내용을 가져올 수 있는 기능이다.<br>
단 출력 버퍼만 공유됨으로 변수는 공유되지 않는다.<br>
==> 포함하는 페이지와 포함되는 페이지는 각가의 서블릿으로 생성되고 단지 출력 버퍼만 공유된다.<br>
</h3>

<jsp:include page="include_action02.jsp" />

</body>
</html>