<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		화면에서 숫자를 입력받아 숫자까지 합 구하기
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력된 숫자까지의 합 구하기</title>

<script type="text/javascript">
	function inputcheck(f) {
		if(isNaN(f.num.value)) { // this=f의 num이 숫자가 아니면
			alert("숫자만 입력하세요");
			f.num.focus();
			f.num.value =""; // alert창 이후에 쓴 문자가 지워지게됨
			return false;
		}
	}
</script>

</head>
<body>

<form action="exam01.jsp" method="post" onsubmit="return inputcheck(this)">
	<input type="text" name="num">까지의 합 구하기
	<input type="submit" value="합계">
</form>

</body>
</html>