<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		ȭ�鿡�� ���ڸ� �Է¹޾� ���ڱ��� �� ���ϱ�
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Էµ� ���ڱ����� �� ���ϱ�</title>

<script type="text/javascript">
	function inputcheck(f) {
		if(isNaN(f.num.value)) { // this=f�� num�� ���ڰ� �ƴϸ�
			alert("���ڸ� �Է��ϼ���");
			f.num.focus();
			f.num.value =""; // alertâ ���Ŀ� �� ���ڰ� �������Ե�
			return false;
		}
	}
</script>

</head>
<body>

<form action="exam01.jsp" method="post" onsubmit="return inputcheck(this)">
	<input type="text" name="num">������ �� ���ϱ�
	<input type="submit" value="�հ�">
</form>

</body>
</html>