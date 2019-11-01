<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>방명록 글쓰기 화면</title>
</head>
<body>

<!-- <form action="book.jsp" method="post">
	방문자&nbsp;<input type="text" name="name" size="15px"><br>
	제목&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="title" size="15px"><br>
	내용&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="subs" rows="10"></textarea><br>
	
	<input type="submit" value="글쓰기">
</form> -->

<form action="book.jsp" method="post">
	<table>
		<tr><td>방문자</td><td><input type="text" name="name" size="15px"></td></tr>
		<tr><td>제목</td><td><input type="text" name="name" size="15px"></td></tr>
		<tr><td>내용</td><td><textarea name="subs" style="width:300px; height:300px;"></textarea></td></tr>
		<tr><td colspan=2 style="text-align:center;"><input type="submit" value="글쓰기"></td></tr>
	</table>
</form>

</body>
</html>