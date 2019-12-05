package admin.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import DAO.ChallengeDAO;
import DAO.MemberDAO;
import DTO.ChallengeDTO;
import DTO.MemberDTO;

@WebServlet("*.challenge")
public class ChallengeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String URI = request.getRequestURI();
		String ctxPath = request.getContextPath();
		String realPath = URI.substring(ctxPath.length());
		System.out.println(realPath);

		if (realPath.contentEquals("/take.challenge")) {
		
			try {
				ArrayList<ChallengeDTO> list = ChallengeDAO.getInstance().selectAll("take");
				ArrayList<ChallengeDTO> exlist = ChallengeDAO.getInstance().getCatergoryChallege("take", "운동");
				ArrayList<ChallengeDTO> lifelist = ChallengeDAO.getInstance().getCatergoryChallege("take", "생활");
				ArrayList<ChallengeDTO> studylist = ChallengeDAO.getInstance().getCatergoryChallege("take", "공부");
				ArrayList<ChallengeDTO> healthlist = ChallengeDAO.getInstance().getCatergoryChallege("take", "건강");
				List<MemberDTO> ranking = MemberDAO.getInstance().selectByRanking();
				
				for(int i = 0; i < list.size(); i++) {
		               String content = list.get(i).getContent();
		                String text = "{" + content + "}";
		                JsonParser parser = new JsonParser();
		             JsonElement data = parser.parse(text);
		             JsonObject obj = data.getAsJsonObject();
		             String challengeday = obj.get("인증가능요일").getAsString(); 
		             String challengefrequency = obj.get("인증빈도").getAsString();
		             String challengetime = obj.get("인증가능시간").getAsString();
		             String challengenumber = obj.get("하루인증횟수").getAsString(); //출력o
		          
		            request.setAttribute("challengeday"+i, challengeday);
		            request.setAttribute("challengefrequency"+i, challengefrequency);
		            request.setAttribute("challengetime"+i, challengetime);
		            request.setAttribute("challengenumber"+i, challengenumber);
		            request.setAttribute("ranking", ranking);

		           }
				
				request.setAttribute("list", list);
				request.setAttribute("exlist", exlist);
				request.setAttribute("lifelist", lifelist);
				request.setAttribute("studylist", studylist);
				request.setAttribute("healthlist", healthlist);
				RequestDispatcher rd = request.getRequestDispatcher("Main/takeMain.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			} catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}

		} else if (realPath.contentEquals("/donation.challenge")) {

			try {
				ArrayList<ChallengeDTO> list = ChallengeDAO.getInstance().selectAll("give");
				ArrayList<ChallengeDTO> exlist = ChallengeDAO.getInstance().getCatergoryChallege("give", "운동");
				ArrayList<ChallengeDTO> lifelist = ChallengeDAO.getInstance().getCatergoryChallege("give", "생활");
				ArrayList<ChallengeDTO> studylist = ChallengeDAO.getInstance().getCatergoryChallege("give", "공부");
				ArrayList<ChallengeDTO> healthlist = ChallengeDAO.getInstance().getCatergoryChallege("give", "건강");
				List<MemberDTO> ranking = MemberDAO.getInstance().selectByRanking();

				
				request.setAttribute("healthlist", healthlist);
				request.setAttribute("studylist", studylist);
				request.setAttribute("lifelist", lifelist);
				request.setAttribute("exlist", exlist);
				request.setAttribute("list", list);
	            request.setAttribute("ranking", ranking);
	            request.setAttribute("i", 1);

				request.getRequestDispatcher("Main/donateMain.jsp").forward(request, response);
			} catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();

			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
