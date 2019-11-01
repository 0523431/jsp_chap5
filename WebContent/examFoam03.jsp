<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>간단한 계산기</title>

<script type="text/javascript">
	function numcheck(f,calc) {
		if(isNaN(f.num1.value || f.num2.value)) {
			alert("숫자만 입력하세요");
			f.num1.focus();
			f.num1.value = "";
			f.num2.focus();
			f.num2.value = "";
			return false;
		}
		f.calc.value = calc;
		// 파라미터로 받은 calc의 값을
		// <input type="hidden" name="calc" value="0">의 value값으로 들어감
		
		f.submit();
	}
</script>

</head>
<body>

<form action="exam03.jsp" method="post">
	숫자1 : <input type="text" name="num1"><br>
	숫자2 : <input type="text" name="num2"><br>
	
	<input type="hidden" name="calc" value="0"> <!-- calc값이 들어오는 곳 -->
	<input type="button" value="+" onclick="numcheck(this.form,this.value)"><!--this=button-->
	<input type="button" value="-" onclick="numcheck(this.form,this.value)">
	<input type="button" value="*" onclick="numcheck(this.form,this.value)">
	<input type="button" value="/" onclick="numcheck(this.form,this.value)">

</form>

</body>
</html>