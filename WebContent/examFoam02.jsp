<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
		ȭ�鿡�� ���ڸ� �Է¹޾� ���ڱ��� �� ���ϱ�
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Էµ� ���ڱ����� ��ü��, ¦����, Ȧ���� ���ϱ�</title>

<script type="text/javascript">
	function inputcheck(f,kbn) { // kbn == �հ��� ������ ��������
		if(isNaN(f.num.value)) { // this=f�� num�� ���ڰ� �ƴϸ�
			alert("���ڸ� �Է��ϼ���");
			f.num.focus();
			f.num.value =""; // alertâ ���Ŀ� �� ���ڰ� �������Ե�
			return false;
		}
		f.kbn.value =kbn;
		// �Ķ���ͷ� ���� kbn���� <input type="hidden" name="kbn" value="0">�� value���� �ٲ���
		f.submit(); // submit�߻�  (submit��ư�� ��� f�� ������ �ִ� action�� ������ ����)
	}
</script>

</head>
<body>

<%--
	onsubmit="return inputcheck(this)"	=========�� submit��ư�� ������,

	inputcheck(this) : this�� ��ư ��ü
	�׷��ϱ�
	inputcheck(this.form)���� �������

--%>

<%--
	exam02 ���忡����
	request.getParameter()�� ���ؼ� num���� �ޱ⶧����,
	� �հ踦 ���ؾ��ϴ��� ��
	�׷��� hiddenŸ��(���� ������ ���� �������ʾ�)�� �̿���
--%>

<form action="exam02.jsp" method="post">
	<input type="hidden" name="kbn" value="0">
	<input type="text" name="num">������ �� ���ϱ�
	<input type="button" value="�հ�" onclick="inputcheck(this.form,0)">
	<input type="button" value="¦�� �հ�" onclick="inputcheck(this.form,1)">
	<input type="button" value="Ȧ�� �հ�" onclick="inputcheck(this.form,2)">
	
</form>

</body>
</html>