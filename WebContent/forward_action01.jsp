<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jsp Action �±� ����</title>
</head>
<body>

<h3>
�� �������� forward_action02.jsp�� forward�˴ϴ�.<br>
�׷��Ƿ� �� ������ ȭ�鿡 ��µ��� �ʽ��ϴ�.<br>
forward�� ��, request��ü�� forward_action02.jsp�� ���� �˴ϴ�.<br>
��, forward_action01.jsp�� forward_action02.jsp �������� ���� request������ �������Դϴ�.<br>
</h3>

<!--
	jsp:forward ======> �׼� �±�
	
	�Ķ������ ������ �߰��ϰ� ���� �� �ִ� ����� ������ ����
-->

<jsp:forward page="forward_action02.jsp">
	<jsp:param value="***" name="test"/>
	<jsp:param value="forward test" name="add"/>
</jsp:forward>

</body>
</html>