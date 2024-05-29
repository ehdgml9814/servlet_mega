<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01 - jsp</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보인다. -->
	<%-- JSP 주석: 소스보기에서 보이지 않는다. --%>
	
	<%
		// 자바 문법 시작
		// scriptlet
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<input type="text" value="<%= sum %>">
	<br>
	
	<%!
		// 선언문 - 클래스같은 느낌(ex:Person)
		// 필드
		int num = 100;
	
		//메소드
		public String getHelloWorld() {
			return "Hello world";
		}
	%>
	
	<%= getHelloWorld() %>
	<br>
	<%= num + 200 %>
	
	
</body>
</html>