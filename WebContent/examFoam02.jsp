<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		화면에서 숫자를 입력받아 숫자까지 합 구하기
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력된 숫자까지의 전체합, 짝수합, 홀수합 구하기</title>

<script type="text/javascript">
	function inputcheck(f,kbn) { // kbn == 합계의 종류를 구분해줌
		if(isNaN(f.num.value)) { // this=f의 num이 숫자가 아니면
			alert("숫자만 입력하세요");
			f.num.focus();
			f.num.value =""; // alert창 이후에 쓴 문자가 지워지게됨
			return false;
		}
		f.kbn.value =kbn;
		// 파라미터로 받은 kbn값을 <input type="hidden" name="kbn" value="0">의 value값을 바꿔줌
		f.submit(); // submit발생  (submit버튼이 없어도 f이 가지고 있는 action을 강제로 실행)
	}
</script>

</head>
<body>

<%--
	onsubmit="return inputcheck(this)"	=========은 submit버튼이 있을때,

	inputcheck(this) : this는 버튼 객체
	그러니까
	inputcheck(this.form)으로 해줘야함

--%>

<%--
	exam02 입장에서는
	request.getParameter()를 통해서 num값만 받기때문에,
	어떤 합계를 구해야하는지 모름
	그래서 hidden타입(값은 있으나 눈에 보이지않아)을 이용해
--%>

<form action="exam02.jsp" method="post">
	<input type="hidden" name="kbn" value="0">
	<input type="text" name="num">까지의 합 구하기
	<input type="button" value="합계" onclick="inputcheck(this.form,0)">
	<input type="button" value="짝수 합계" onclick="inputcheck(this.form,1)">
	<input type="button" value="홀수 합계" onclick="inputcheck(this.form,2)">
	
</form>

</body>
</html>