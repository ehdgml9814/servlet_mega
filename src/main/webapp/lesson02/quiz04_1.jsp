<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] units = request.getParameterValues("unit");
		// List<String> list = Arrays.asList(units);
		List<String> list = new ArrayList<>();
		if (units != null) {
			list = Arrays.asList(units);
		}
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr>
		<h2>
			<%
				if (units != null) {
					for (String unit : units) {
						if (unit.equals("in")) { // inch
							double in = 0.393701 * cm;
							out.print(in + " in<br>");
						} else if (unit.equals("yd")) { //yard
							double yd = 0.010936 * cm;
							out.print(yd + " yd<br>");
						} else if (unit.equals("ft")) { // f
							double ft = 0.032808 * cm;
							out.print(ft + " ft<br>");
						} else if (unit.equals("m")) {
							double m = cm / 100.0;
							out.print(m + " m<br>");
						}
					}
				}
			%>
		</h2>
		<%-- <%
			if (units != null) {
				if (list.contains("in")) {
					double in = cm / 2.54;
					out.print("<b>" + in + " in</b><br>");
				}
				if (list.contains("yd")) {
					double yd = cm / 91.44;
					out.print("<b>" + yd + " yd</b><br>");
				}
				if (list.contains("ft")) {
					double ft = cm / 30.48;
					out.print("<b>" + ft + " ft</b><br>");
				}
				if (list.contains("m")) {
					double m = cm / 100.0;
					out.print("<b>" + m + " m</b><br>");
				}
			}
		%> --%>
	</div>
</body>
</html>