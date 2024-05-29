package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {

	@Override 
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String word = request.getParameter("word");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String str = iter.next();
			if (str.contains(word)) {
				// 1) best 단어가 여러개일 때도 사용 가능
//				str = str.replace(word, "<b>" + word + "</b>");
//				out.print(str + "<br>");
				
				// 2)
				String[] words = str.split(word);
				out.print(words[0] + "<b>" + word + "</b>" + words[1] + "<br>");
				
				// 3)
				// str.indexOf(word); 사용
				
				// 나
//				int idx = str.indexOf(word);
//				String newStr = str.substring(0, idx) + "<b>" + str.substring(idx, idx + word.length()) + 
//						"</b>" + str.substring(idx + word.length());
//				out.print(newStr + "<br>");
			}
		}
		out.print("</body></html>");
	}
}
