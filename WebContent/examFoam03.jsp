<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>

<script type="text/javascript">
	function numcheck(f,calc) {
		if(isNaN(f.num1.value || f.num2.value)) {
			alert("���ڸ� �Է��ϼ���");
			f.num1.focus();
			f.num1.value = "";
			f.num2.focus();
			f.num2.value = "";
			return false;
		}
		f.calc.value = calc;
		// �Ķ���ͷ� ���� calc�� ����
		// <input type="hidden" name="calc" value="0">�� value������ ��
		
		f.submit();
	}
</script>

</head>
<body>

<form action="exam03.jsp" method="post">
	����1 : <input type="text" name="num1"><br>
	����2 : <input type="text" name="num2"><br>
	
	<input type="hidden" name="calc" value="0"> <!-- calc���� ������ �� -->
	<input type="button" value="+" onclick="numcheck(this.form,this.value)"><!--this=button-->
	<input type="button" value="-" onclick="numcheck(this.form,this.value)">
	<input type="button" value="*" onclick="numcheck(this.form,this.value)">
	<input type="button" value="/" onclick="numcheck(this.form,this.value)">

</form>

</body>
</html>