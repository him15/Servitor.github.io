package servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			HttpSession session=request.getSession();
			HashMap userDetails=(HashMap)session.getAttribute("user");
			
			if(userDetails != null) {
				session.invalidate();
				response.sendRedirect("index.jsp");
			}else {
				session.setAttribute("message", "Plzz Login First!");
				response.sendRedirect("index.jsp");
			}
			
	
	}

}
