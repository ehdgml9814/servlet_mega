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
	<!-- 문제1 -->
	문제1.<br>
	<%!
		public int calculateSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<h2>1부터 50까지의 합은 <%= calculateSum(50) %>입니다.</h2> 
	<br><br>
	
	<!-- 문제2 -->
	문제2.<br>
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	<h2>평균 점수는 <%= average %>입니다.</h2>
	<br><br>
	
	<!-- 문제3 -->
	문제3.<br>
	<% 
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			// out.print(scoreList.get(i));
			if (scoreList.get(i).equals("O")) {
				score += (double)100 / scoreList.size();
			}
		}
	%>
	<h2>채점 결과는 <%= score %>점입니다.</h2>
	<br><br>
	
	<!-- 문제4 -->
	문제4.<br>
	<%
		String birthDay = "20010820";
		int age = 2024 - Integer.parseInt(birthDay.substring(0, 4));
	%>
	<h2><%= birthDay %>의 나이는 <%= age %>세입니다.</h2>
	<br><br>
	
</body>
</html>