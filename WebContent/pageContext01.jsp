<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2></h2>

<!--
	request.equals(pageContext.getRequest())
	
	== 를 사용할 수 있는 이유
	리퀘스트가 참조하는 객체와 pageContext.getRequest()가 참조하는 객체가 같음을 의미
-->

<%	if(request == pageContext.getRequest()) { %>
		request객체와 pageContext.getRequest()는 같은 객체임<br>
<%  }%>

<%	if(response == pageContext.getResponse()) { %>
		response객체와 pageContext.getResponse()는 같은 객체임<br>
<%  }%>

<%	if(session == pageContext.getSession()) { %>
		session객체와 pageContext.getSession()는 같은 객체임<br>
<%  }%>

<%	if(request.equals(pageContext.getRequest())) { %>
		equals()메서드 <br>
<%  }%>

</body>
</html>