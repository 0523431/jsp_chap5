<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �۾��� ȭ��</title>
</head>
<body>

<!-- <form action="book.jsp" method="post">
	�湮��&nbsp;<input type="text" name="name" size="15px"><br>
	����&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="title" size="15px"><br>
	����&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="subs" rows="10"></textarea><br>
	
	<input type="submit" value="�۾���">
</form> -->

<form action="book.jsp" method="post">
	<table>
		<tr><td>�湮��</td><td><input type="text" name="name" size="15px"></td></tr>
		<tr><td>����</td><td><input type="text" name="name" size="15px"></td></tr>
		<tr><td>����</td><td><textarea name="subs" style="width:300px; height:300px;"></textarea></td></tr>
		<tr><td colspan=2 style="text-align:center;"><input type="submit" value="�۾���"></td></tr>
	</table>
</form>

</body>
</html>