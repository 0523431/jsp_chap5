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
	
	== �� ����� �� �ִ� ����
	������Ʈ�� �����ϴ� ��ü�� pageContext.getRequest()�� �����ϴ� ��ü�� ������ �ǹ�
-->

<%	if(request == pageContext.getRequest()) { %>
		request��ü�� pageContext.getRequest()�� ���� ��ü��<br>
<%  }%>

<%	if(response == pageContext.getResponse()) { %>
		response��ü�� pageContext.getResponse()�� ���� ��ü��<br>
<%  }%>

<%	if(session == pageContext.getSession()) { %>
		session��ü�� pageContext.getSession()�� ���� ��ü��<br>
<%  }%>

<%	if(request.equals(pageContext.getRequest())) { %>
		equals()�޼��� <br>
<%  }%>

</body>
</html>