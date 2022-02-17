package com.nilesh;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	          PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("user_email");
		String address=request.getParameter("user_address");
		String phone=request.getParameter("user_phone");
		String username=request.getParameter("user_name");
		String password=request.getParameter("user_password");
		
		Connection con;
		String url="jdbc:mysql://localhost:3306/youtube";
		String user="root";
		String pass="abcd";
		String query="insert into regval(name, useremail, useraddress, userphone, username, userpassword) values(?,?,?,?,?,?)";
		
		
	     try {
			Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection(url,user,pass);
			 
			 PreparedStatement pstmt=con.prepareStatement(query);
			 pstmt.setString(1, name);
			 pstmt.setString(2, email);
			 pstmt.setString(3, address);
			 pstmt.setString(4, phone);
			 pstmt.setString(5, username);
			 pstmt.setString(6, password);
			 
			 int rowCount=pstmt.executeUpdate();
			 
			 if(rowCount>0) {
				 
				response.sendRedirect("registration_done.jsp");
			 }else {
				 out.println("<html><body><h2>Something error</h2></body></html>");
			 }
			 
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
		
	}

}
