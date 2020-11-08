package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.DAO;

/**
 * Servlet implementation class TrainerRegister
 */
@WebServlet("/TrainerRegister")
public class TrainerRegister extends HttpServlet {
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			// take the parameter from the form 
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			
			// Enter the data and convert in mysql date 
			String dt=request.getParameter("dob");
			DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date date=df.parse(dt);
			java.sql.Date dob=new java.sql.Date(date.getTime());
			
			String aadhar=request.getParameter("aadhar");
			String gender=request.getParameter("gender");
			String address=request.getParameter("address");
			String category=request.getParameter("category");
			Part p1=request.getPart("photo");
			InputStream photo=null;
			
			if(p1!=null) {
				photo=p1.getInputStream();
			}
			
			Part p2=request.getPart("certificate1");
			InputStream certificate1=null;
			
			if(p2!=null) {
				certificate1=p2.getInputStream();
			}
			
			Part p3=request.getPart("certificate2");
			InputStream certificate2=null;
			
			if(p3!=null) {
				certificate2=p3.getInputStream();
			}
			// Now insert value in hashmap
			HashMap trainer=new HashMap();
			trainer.put("email", email);
			trainer.put("password", password);
			trainer.put("name", name);
			trainer.put("phone", phone);
			trainer.put("gender", gender);
			trainer.put("dob", dob);
			trainer.put("address", address);
			trainer.put("aadhar", aadhar);
			trainer.put("category", category);
			trainer.put("photo", photo);
			trainer.put("certificate1", certificate1);
			trainer.put("certificate2", certificate2);
			DAO dao=new DAO();
			boolean result=dao.insertTrainer(trainer);
			HttpSession session=request.getSession();
			if(result == true) {
				session.setAttribute("message","Trainer Added Successfully!");
				response.sendRedirect("TrainerLogin.jsp");
				
			}else {
				session.setAttribute("message", "Trainer Already Registered!");
				response.sendRedirect("TrainerLogin.jsp");
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
			response.sendRedirect("ExceptionPage.jsp");
		}
	}

}
