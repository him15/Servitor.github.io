package servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			DAO dao=new DAO();
			HashMap user=dao.getUser(email, password);
			HttpSession session=request.getSession();
			
			if(user != null) {
				session.setAttribute("user", user);
				response.sendRedirect("Profile.jsp");
				
			}else {
				session.setAttribute("message","user id / Password is Incorrect !");
				response.sendRedirect("index.jsp");
			}
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
			response.sendRedirect("ExceptionPage.jsp");
			
		}
		
	}
}