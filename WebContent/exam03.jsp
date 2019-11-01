<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Simple calculator</title>
</head>
<body>


<% // java
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	//int calc = Integer.parseInt(request.getParameter("calc"));
	String calc = request.getParameter("calc");
	// int result =0;
	String result ="";
	
/* 	switch(calc) {
	case 0 : result = num1 + num2; break;
	case 1 : result = num1 - num2; break;
	case 2 : result = num1 * num2; break;
	case 4 : result = num1 / num2; break;
	} */

	/* switch(calc) {
	case "+" : result = num1 + num2; break;
	case "-" : result = num1 - num2; break;
	case "*" : result = num1 * num2; break;
	case "/" : result = num1 / num2; break;
	} */

	switch(calc) {
	case "+" : result = String.format("%d", num1 + num2); break;
	case "-" : result = String.format("%d", num1 - num2); break;
	case "*" : result = String.format("%d", num1 * num2); break;
	case "/" : result = String.format("%.2f", (double)num1 / num2); break;
	}

%>

<%-- <%=num1 %>
<%=(calc==0)? "+":(calc==1)? "-":(calc==2)? "*":"/" %>
<%=num2 %> =
<%=result %> --%>

<%-- <%=num1 %>
<%=(calc==0)? "+":(calc==1)? "-":(calc==2)? "*":"/" %>
<%=num2 %> =
<%=result %> --%>

<%=num1 + calc + num2 + "=" + result %>

</body>
</html>