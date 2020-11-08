package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.DAO;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// take the parameter from the form 
			String email=request.getParameter("email");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			String message=request.getParameter("message");
			
			
			// Now insert value in hashmap
			HashMap contact=new HashMap();
			contact.put("email", email);
			contact.put("name", name);
			contact.put("phone", phone);
			contact.put("message", message);
			DAO dao=new DAO();
			boolean result=dao.insertContact(contact);
			HttpSession session=request.getSession();
			if(result == true) {
				session.setAttribute("message","Message Send Successfully!");
				response.sendRedirect("index.jsp");
				
			}else {
				session.setAttribute("message", "Invalid!");
				response.sendRedirect("index.jsp");
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
			response.sendRedirect("ExceptionPage.jsp");
		}
		
	}

}
