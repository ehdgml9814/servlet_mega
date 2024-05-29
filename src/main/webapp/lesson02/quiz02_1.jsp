<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String select = request.getParameter("select");
		SimpleDateFormat date = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat time = new SimpleDateFormat("HH시 mm분 ss초");
		// out.print(select);
		if (select.equals("time")) {
			out.print("현재 시간은 " + time.format(new Date()) + " 입니다.");
		} 
		if (select.equals("date")) {
			out.print("오늘 날짜는 " + date.format(new Date()) + " 입니다.");
		}
	%>
</body>
</html>