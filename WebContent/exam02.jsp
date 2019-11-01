<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>원하는 합을 구해보자</title>
</head>
<body>

<% // java
	int num = Integer.parseInt(request.getParameter("num"));
	int kbn = Integer.parseInt(request.getParameter("kbn"));
	int sum =0;
	for(int i=1; i<=num; i++) {
		switch(kbn) {
		case 0 : sum +=i; break;
		case 1 : if(i%2 ==0) sum +=i; break; // 짝수
		case 2 : if(i%2 !=0) sum +=i; break; // 홀수
		}
	}
%>

<%=num%>까지의
<%=(kbn==0)? "합계":(kbn==1)? "짝수합계":"홀수합계" %> : <%=sum %>

</body>
</html>