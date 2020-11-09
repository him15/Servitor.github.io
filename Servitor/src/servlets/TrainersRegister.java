package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
@MultipartConfig
@WebServlet("/TrainersRegister")
public class TrainersRegister extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
			String gender=request.getParameter("gender");
			String state=request.getParameter("state");
			String city=request.getParameter("city");
			String area=request.getParameter("area");
			int experience=Integer.parseInt(request.getParameter("experience"));
			System.out.println(name);
			System.out.println(email);
			System.out.println(gender);
			System.out.println(state);
			System.out.println(area);
			
			int age=Integer.parseInt(request.getParameter("age"));

			
			String address=request.getParameter("address");
			String category=request.getParameter("category");
			
			Part p1=request.getPart("photo");
			InputStream photo=null;         
			if(p1!=null) {
				photo=p1.getInputStream();
			}
			Part p2=request.getPart("aadhar");
			InputStream aadhar=null;
			if(p2!=null) {
				aadhar=p2.getInputStream();
			}
			Part p3=request.getPart("ration");
			InputStream ration=null;
			if(p3!=null) {                   //only this if is useful.
				ration=p3.getInputStream();
			}
			HashMap trainer= new HashMap();
			trainer.put("name", name);
			trainer.put("email", email);
			trainer.put("password", password);
			trainer.put("phone", phone);
			trainer.put("gender", gender);
			trainer.put("age", age);
			trainer.put("address", address);
			trainer.put("photo", photo);
			trainer.put("category", category);
			trainer.put("aadhar", aadhar);
			trainer.put("ration", ration);
			trainer.put("state", state);
			trainer.put("city", city);
			trainer.put("area", area);
			trainer.put("experience", experience);
			DAO db=new DAO();
			boolean result=db.insertTrainer(trainer);
			if(result==true) {
				HttpSession session=request.getSession();
				session.setAttribute("message", "Employer Registered Successfully.");
				response.sendRedirect("TrainerLoginRegister.jsp");
			}else {
				HttpSession session=request.getSession();
				session.setAttribute("message", "Employer With Same Email ID is Already Registered!!!");
				response.sendRedirect("TrainerLoginRegister.jsp");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
			response.sendRedirect("ExceptionPage.jsp");
		}
	}

}
