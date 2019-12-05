
package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.media.jfxmedia.track.Track.Encoding;

import DAO.MemberDAO;
import DTO.MemberDTO;
import oracle.net.aso.r;

@WebServlet("*.mem")
public class Member extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String URI = request.getRequestURI();
		String ctx = request.getContextPath();
		String realPath = URI.substring(ctx.length());

		MemberDAO dao = MemberDAO.getInstance();
		System.out.println(realPath);
		//			System.out.println(ctx); 절대경로

		if(realPath.contentEquals("/user/login/loginPage.mem")){
			String clickPage = request.getParameter("page");
			request.getSession().setAttribute("clickPage", clickPage);
			System.out.println(clickPage);
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}
		else if (realPath.contentEquals("/user/login/login.mem")) {
			try {
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String clickPage = request.getParameter("page");
				System.out.println(id + " : " + pw + ":" + clickPage);
				boolean loginResult = dao.isAdmin(id, dao.encrypt(pw)); //dao.isLoginOK(id, dao.encrypt(pw));			
				System.out.println("loginResult : " + loginResult);
				if(loginResult) {
					//admin 체크용
					request.getSession().setAttribute("loginResult", loginResult);
					request.getSession().setAttribute("id", id);
					request.getRequestDispatcher("logincheck.jsp").forward(request, response);
				}else {
					//일반 사용자 체크용
					boolean loginResult2 = dao.isLoginOK(id, dao.encrypt(pw));
					request.getSession().setAttribute("loginResult2", loginResult2);
					System.out.println("loginResult2 : " + loginResult2);
					System.out.println("id : " + id);

					if(loginResult2) {
						request.getSession().setAttribute("id", id);
						if(clickPage.equals("donation")) {
							request.setAttribute("page", "donation.challenge");
						}else if(clickPage.equals("take")) {
							request.setAttribute("page", "take.challenge");
						}
						request.setAttribute("clickPage", clickPage);
					}
					request.getRequestDispatcher("logincheck.jsp").forward(request, response);

				}


			} catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}

		} else if (realPath.contentEquals("/user/login/idcheck.mem")) {
			try {
				String id = request.getParameter("id");
				//id 받아오기 ok
				boolean result = dao.isIdOk(id);
				PrintWriter pw = response.getWriter();
				pw.append("{\"result\" :" + result + "}");

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (realPath.contentEquals("/user/login/signup.mem")) {
			request.setCharacterEncoding("utf8");
			try {
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				dao.insert(new MemberDTO(0, id, pw, name, phone, email, 0, null));
				response.sendRedirect(ctx + "/user/login/signupcheck.jsp");

			} catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}
		}else if(realPath.contentEquals("/user/login/update.mem")) {


			try {
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				int result = dao.update(pw, phone, email);
				request.setAttribute("update", result);
				request.getRequestDispatcher("userMyPage.jsp").forward(request, response);


			} catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}
		}else if(realPath.contentEquals("/logout.mem")) {
			request.getSession().invalidate();
			response.sendRedirect("index.jsp");

			///아이디/비밀번호 찾기 ////////////////////////////////////////////////////////////////////////////////////////
		}else if(realPath.contentEquals("/findid.mem")) {
			request.setCharacterEncoding("utf8");
			System.out.println("반갑수다");
			try {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				System.out.println(name + email);
				List<MemberDTO> list = MemberDAO.getInstance().selectAll(name, email);
				System.out.println(list.size());
				request.setAttribute("list", list);
				request.getRequestDispatcher("user/login/findIdResult.jsp").forward(request, response);
			}catch(Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}
		}else if(realPath.contentEquals("/findPwCheck.mem")) {
			try {
				String id = request.getParameter("id");
				String email = request.getParameter("email");

				Boolean isIdOK = MemberDAO.getInstance().isIdOk(id);
				if(isIdOK) {
					String pw1 = "";
					for(int i =0; i<3; i++) {
						double dValue = Math.random();
						pw1+= (int)(dValue * 10);
						pw1+= (char)((dValue * 26) + 97);
					}
					System.out.println("+++++++++++++++++++++++++++");
					System.out.println("임시 비밀번호" +pw1);
					System.out.println("+++++++++++++++++++++++++++");

//
//					int iValue1 = (int)(dValue * 10); // 정수
//					int iValue2 = (int)(dValue * 10); // 정수
//					int iValue3 = (int)(dValue * 10); // 정수
//
//					char cValue1 = (char)((dValue * 26) + 97); // 소문자
//					char cValue2 = (char)((dValue * 26) + 97); // 소문자
//					char cValue3 = (char)((dValue * 26) + 97); // 소문자

					//String pw = (""+iValue1+cValue1+iValue2+cValue2+iValue3+cValue3);
					int result2 =  MemberDAO.getInstance().updatePw(MemberDAO.getInstance().encrypt(pw1), id);
					System.out.println("업데이트 여부 : "+result2);
					boolean sendEmail = MemberDAO.getInstance().sendTempPW(email, id,pw1);

					request.setAttribute("id", id);
					request.setAttribute("email", email);
					request.setAttribute("sendEmail", sendEmail);
				}
				request.setAttribute("isIdOK", isIdOK);
				System.out.println(isIdOK);
				request.getRequestDispatcher("user/login/findPwCheck.jsp").forward(request, response);
			}catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}

		}else if(realPath.contentEquals("/findpw.mem")) {
			request.setCharacterEncoding("utf8");

			try {
				String email = request.getParameter("email");
				System.out.println(email);
				request.setAttribute("email", email);
				request.getRequestDispatcher("/user/login/findPwResult.jsp").forward(request, response);

			}catch (Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}
			/////////////////////////////////////////////////////////////////////////////////
			//ADMIN
		}else if(realPath.contentEquals("/admin/logout.mem")) {
			request.getSession().invalidate();
			response.sendRedirect(ctx+ "/index.jsp");

		}else if(realPath.contentEquals("/admin/memberlist.mem")) { //멤버리스트 클릭했을때 주소받아오기
			request.setCharacterEncoding("utf8");
			try {
				String navi = dao.getPageNavi(1);
				int cpage = 1;
				String page = request.getParameter("cpage");
				if(page != null) {
					cpage = Integer.parseInt(page);
				}
				int start = cpage * adminboardCongiuration.Configuration.recordCountPerPage - (adminboardCongiuration.Configuration.recordCountPerPage -1 );
				int end = cpage * adminboardCongiuration.Configuration.recordCountPerPage;
				System.out.println(start + " : " + end);
				List<MemberDTO> list = dao.selectByPage(start, end);
				//						List<MemberDTO> list = dao.selectAll();
				request.setAttribute("list", list);
				request.setAttribute("navi", navi);
				request.getRequestDispatcher("/admin/memberlist.jsp").forward(request, response);


			}catch(Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}

		}else if(realPath.contentEquals("/admin/search.mem")) {
			request.setCharacterEncoding("utf8");
			try {
				String id = request.getParameter("search");
				System.out.println(id); 
				List<MemberDTO> dto = dao.search(id);
				//					System.out.println(dto.getId() + " : " + dto.getName()); ok
				request.setAttribute("dto", dto);
				request.getRequestDispatcher("/admin/memberlist.mem").forward(request, response);


			}catch(Exception e) {
				response.sendRedirect("error.jsp");
				e.printStackTrace();
			}
		}else if(realPath.contentEquals("/delete.mem")) {

			try {
				String id = request.getParameter("id");
				System.out.println("삭제할 아이디는 : " + id);
				int result = MemberDAO.getInstance().delete(id);
				request.getSession().invalidate();
				request.setAttribute("result", result);
				request.getRequestDispatcher("/index.jsp").forward(request, response);
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
