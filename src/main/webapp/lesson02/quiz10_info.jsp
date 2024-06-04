<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>

<%
	// 보여줄 정보 맵 저장
	Map<String, Object> target = null;
	int songId = 0; 
	String search = "";
	if (request.getParameter("id") != null) {
		songId = Integer.parseInt(request.getParameter("id"));
	}
	if (request.getParameter("search") != null) {
		search = request.getParameter("search");
	}
	for (Map<String, Object> item : musicList) {
		if (songId == (Integer)item.get("id") ||
				item.get("title").equals(request.getParameter("search"))) {
			target = item;
			break;
		}
	}
%>
	<div class="container">
		<header class="d-flex align-items-center">
			<div class="col-2">
				<h3 class="text-success">Melong</h3>
			</div>
			<div class="col-10">
				<form method="get" action="/lesson02/quiz10_info.jsp">
					<div class="input-group">
	  					<input type="text" class="form-control col-6" name="search" value="<%= search %>">
	  					<div class="input-group-append">
	    					<button class="btn btn-info" type="submit">검색</button>
	  					</div>
					</div>
				</form>
			</div>
		</header>
		<nav>
			<ul class="nav nav-fill w-50">
				<li class="nav-item"><a href="/lesson02/quiz10_1.jsp" class="nav-link text-dark"><b>멜롱차트</b></a></li>
				<li class="nav-item"><a href="/lesson02/quiz10_1.jsp" class="nav-link text-dark"><b>최신음악</b></a></li>
				<li class="nav-item"><a href="/lesson02/quiz10_1.jsp" class="nav-link text-dark"><b>장르음악</b></a></li>
				<li class="nav-item"><a href="/lesson02/quiz10_1.jsp" class="nav-link text-dark"><b>멜롱DJ</b></a></li>
				<li class="nav-item"><a href="/lesson02/quiz10_1.jsp" class="nav-link text-dark"><b>뮤직어워드</b></a></li>
			</ul>
		</nav>
		<section class="contents">
			<h4>곡 정보</h4>
			<% if (target != null) {
				/* int songId = 0; 
				if (request.getParameter("id") != null) {
					songId = Integer.parseInt(request.getParameter("id"));
				}
				for (Map<String, Object> music : musicList) {
					if ((Integer)music.get("id") == songId || music.get("title").equals(request.getParameter("title"))) { */
			%>
			<div class="border border-success d-flex">
				<div>
					<img src="<%= target.get("thumbnail") %>" alt="사진" width="200" class="m-2">
				</div>
				<div class="m-2">
					<div class="display-4"><%= target.get("title") %></div>
					<div class="text-success"><b><%= target.get("singer") %></b></div>
					<div class="d-flex text-secondary">
						<div>
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						<div class="ml-4">
							<%-- 내가 만든 for문 이용해서 조회
							<div><%= music.get("album") %></div>
							<div><%= (Integer)music.get("time") / 60 %> : <%= (Integer)music.get("time") % 60 %></div>
							<div><%= music.get("composer") %></div>
							<div><%= music.get("lyricist") %></div> --%>
							<div><%= target.get("album") %></div>
							<div><%= (Integer)target.get("time") / 60 %> : <%= (Integer)target.get("time") % 60 %></div>
							<div><%= target.get("composer") %></div>
							<div><%= target.get("lyricist") %></div>
						</div>
					</div>
					<%-- <table>
						<tr>
							<th class="pr-2">앨범</th>
							<td><%= music.get("album") %></td>
						</tr>
						<tr>
							<th class="pr-2">재생시간</th>
							<td><%= (Integer)music.get("time") / 60 %> : <%= (Integer)music.get("time") % 60 %></td>
						</tr>
						<tr>
							<th class="pr-2">작곡가</th>
							<td><%= music.get("composer") %></td>
						</tr>
						<tr>
							<th class="pr-2">작사가</th>
							<td><%= music.get("lyricist") %></td>
						</tr>
					</table> --%>
				</div>
			</div>
			<%			
				/* 		break;
					}
				} */
			%>
			<br>
			<div class="lyric">
				<h4>가사</h4>
				<hr>
				가사 정보 없음
			</div>
			<%
			} else {
				out.print("검색 결과 없음");
			}
			%>
		</section>
		<footer>
			<br>
			<small class="ml-3">Copyright 2021. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>