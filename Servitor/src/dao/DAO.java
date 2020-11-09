package dao;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

public class DAO {
	private Connection con;
	
	public DAO() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		// doubt 1
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitnessdb","root","incapp");
		
	}
	
	public boolean insertUser(HashMap user) throws Exception{
		
		try {
			
	PreparedStatement p=con.prepareStatement("insert into users (email,password,name,phone,gender,age,address,photo) values(?,?,?,?,?,?,?,?)");
			p.setString(1, (String)user.get("email"));
			p.setString(2, (String)user.get("password"));
			p.setString(3, (String)user.get("name"));
			p.setString(4, (String)user.get("phone"));

			p.setString(5, (String)user.get("gender"));
			
			p.setInt(6, (Integer)user.get("age"));
			p.setString(7, (String)user.get("address"));
			p.setBinaryStream(8, (InputStream)user.get("photo"));
			p.executeUpdate();
			return true;
			
		}catch(java.sql.SQLIntegrityConstraintViolationException ex) {
			return false;
		}
		
	}
	
	public boolean insertContact(HashMap contact) throws Exception{
		
		try {
			
	PreparedStatement p=con.prepareStatement("insert into contactus (email,name,phone,message) values(?,?,?,?)");
			p.setString(1, (String)contact.get("email"));
			p.setString(2, (String)contact.get("name"));
			p.setString(3, (String)contact.get("phone"));
			p.setString(4, (String)contact.get("message"));
			p.executeUpdate();
			return true;
			
		}catch(java.sql.SQLIntegrityConstraintViolationException ex) {
			return false;
		}
		
	}
	
	
	
	
	public boolean insertTrainer(HashMap trainer) throws Exception {
		try {
			
			PreparedStatement p=con.prepareStatement("insert into trainers"
					+ "(email,password,name,phone,gender,age,category,photo,aadhar,"
					+ "ration,state,city,area,experience)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					p.setString(1, (String)trainer.get("email"));
					p.setString(2, (String)trainer.get("password"));
					p.setString(3, (String)trainer.get("name"));
					p.setString(4, (String)trainer.get("phone"));
					p.setString(5, (String)trainer.get("gender"));

					p.setInt(6, (Integer)trainer.get("age"));
					p.setString(7, (String)trainer.get("category"));
					p.setBinaryStream(8, (InputStream)trainer.get("photo"));
					p.setBinaryStream(9, (InputStream)trainer.get("aadhar"));
					p.setBinaryStream(10, (InputStream)trainer.get("ration"));
					p.setString(11, (String)trainer.get("state"));
					p.setString(12, (String)trainer.get("city"));
					p.setString(13, (String)trainer.get("area"));
					p.setInt(14, (Integer)trainer.get("experience"));
					
					p.executeUpdate();
					return true;
					
				}catch(java.sql.SQLIntegrityConstraintViolationException ex) {
					System.out.println(ex);
					ex.printStackTrace();
					return false;
				}
	}
	
	public HashMap getUser(String email , String password) throws Exception{
		
		PreparedStatement p=con.prepareStatement("select * from users where email=? and password = ?");
		p.setString(1, email);
		p.setString(2, password);
		ResultSet rs=p.executeQuery();
		
		if(rs.next()) {
			HashMap user=new HashMap();
			user.put("email" ,rs.getString("email") );
			user.put("name" ,rs.getString("name") );
			user.put("phone", rs.getString("phone"));
			user.put("gender", rs.getString("gender"));
			user.put("age", rs.getInt("age"));
			user.put("address" , rs.getString("address"));
			return user;
			
		}else {
			return null;
		}
		
	}
	public byte[] getPhoto(String email, String type) throws Exception {
		PreparedStatement ps;
		if(type.equalsIgnoreCase("trainer")) {
			ps=con.prepareStatement("select (photo) from trainers where email=?");
		}else {
			ps=con.prepareStatement("select (photo) from users where email=?");
		}
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			byte[] photo=rs.getBytes("photo");
			if(photo.length!=0) {
				return photo;
			}
			else
				return null;
		}else {
			return null;
		}
	}
	
	public HashMap getAdmin(String aid,String password ) throws Exception {
		PreparedStatement p=con.prepareStatement("select * from admin where aid=? and password=?");
		p.setString(1, aid);
		p.setString(2, password);
		ResultSet rs=p.executeQuery();
		if(rs.next()) {
			HashMap user=new HashMap();
			user.put("name", rs.getString("name"));
			return user;
		}else {
			return null;
		}	
	}
	
	public ArrayList<HashMap> getAllTrainers(String status) throws Exception{
		PreparedStatement ps=con.prepareStatement("select * from trainers where status=? order by name asc");
		ps.setString(1, status);
		ResultSet rs=ps.executeQuery();
		ArrayList<HashMap> allTrainers=new ArrayList<HashMap>();
		while(rs.next()) {
			HashMap trainer=new HashMap();
			trainer.put("name", rs.getString("name"));
			trainer.put("email", rs.getString("email"));
			trainer.put("phone", rs.getString("phone"));
			trainer.put("age", rs.getInt("age"));
			trainer.put("gender", rs.getString("gender"));
			trainer.put("category", rs.getString("category"));
			trainer.put("status", rs.getString("status"));
			trainer.put("state", rs.getString("state"));
			trainer.put("city", rs.getString("city"));
			trainer.put("area", rs.getString("area"));
			trainer.put("experience", rs.getInt("experience"));
			allTrainers.add(trainer);
		}
		return allTrainers;
	}

	public boolean changeTrainerStatus(String email, String status) throws Exception {
		PreparedStatement ps=con.prepareStatement("update trainers set status=? where email=?");
		ps.setString(1, status);
		ps.setString(2, email);
		ps.executeUpdate();
		return true;
	}

}
