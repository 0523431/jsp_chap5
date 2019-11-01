<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>전송된 파라미터 정보</title>
</head>
<body>

<%--
	이 파일만 실행하면,
	받은 getParameter()가 없기때문에 null값을 출력하게 됨
	
	getParameter() : 문자열을 한개만 가져옴
	getParameterValues() : Parameter값을 String형 배열로 만들기
	
--%>

<%
	request.setCharacterEncoding("euc-kr");

				//  request객체에 저장된 Parameter를 get해서 변수 name_p에 저장해
	String name_p = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	String year = request.getParameter("year");
%>

이름 : <%=name_p %><br>
나이 : <%=age %><br>
성별 : <%=gender.equals("1")? "남":"여" %><br>
취미 : <%=hobby %><br>
출생년도 : <%=year %><br>

<h3>취미 정보 모두 조회하기</h3>
취미 : 
<%
	String[] hobbies = request.getParameterValues("hobby");
	for(String h : hobbies) { %>
		<%=h %> &nbsp;&nbsp;
<%  } %> <br>

<h3>모든 파라미터 정보 조회하기(hidden포함)</h3>
<table>
	<tr><th>파라미터이름</th><th>파라미터 값</th></tr>
	
	<%
	// getParameterNames() : 파라미터의 이름들
	// Enumeration : Iterator 구버전, 반복자
	//				  hasMoreElements()
	
	// getParameterValues() : Parameter값을 String형 배열로 만들어줌
					  
		Enumeration e = request.getParameterNames();
		while(e.hasMoreElements()) {
			String pname = (String)e.nextElement();
			String[] pvalue = request.getParameterValues(pname);
	%>
	<tr><td><%=pname %></td>
		<td><% for(String v : pvalue) {%>
					<%=v %> &nbsp;&nbsp;
			<% } %></td></tr>
	<%  } %>
</table>
</body>
</html>