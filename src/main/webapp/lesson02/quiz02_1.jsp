<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_1</title>
</head>
<body>
	<%
		String select = request.getParameter("type");
		SimpleDateFormat sdf = null;
		// out.print(select);
		if (select.equals("time")) {
			sdf = new SimpleDateFormat("HH시 mm분 ss초");
		} else {
			sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		}
		String result = sdf.format(new Date()); 		
	%>
	
	<div class="container">
		<div class="display-4"><%= result %></div>
	</div>
</body>
</html>