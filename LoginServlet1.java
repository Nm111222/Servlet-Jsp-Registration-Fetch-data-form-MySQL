package com.nilesh;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet1
 */
@WebServlet("/LoginServlet1")
public class LoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int wrongusr=0;
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("user_name");
		String upass=request.getParameter("user_password");
		 
		String url="jdbc:mysql://localhost:3306/youtube";
		String user="root";
		String pass="abcd";
		String query="select * from regval where username=? and userpassword=?";
		Connection con;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, uname);
			pstmt.setString(2, upass);
			
			ResultSet rs= pstmt.executeQuery();
			
			
			while(rs.next()) {
			   out.println("<html><head> <style> ");
			   out.println("'background-color:pink'></style></head>");
			   out.println("<body style='color:blue'>");
			   
				out.println("<h2 style='color:red'>Fetching data from Database</h2>");
				System.out.println("login successfully");
				Object nme;
				
				 nme=rs.getString(1);
				 out.println("Name :"+nme);
				 out.println("<br>");
				 nme=rs.getString(2);
					out.println("Email   -"+nme);
					out.println("<br>");
					nme=rs.getString(3);
					out.println("Address   -"+nme);
					out.println("<br>");
					nme=rs.getString(4);
					out.println("Phone   -"+nme);
					out.println("<br>");
					nme=rs.getString(5);
					out.println("UserName   -"+nme);
					out.println("<br>");
					nme=rs.getString(6);
					out.println("UserPassword   -"+nme);
					
				out.println("</body></html>");
				wrongusr=10;
				
				
			}
	          if(wrongusr!=10) {
				
				System.out.println("please enter correct user name or password ");
				out.println("<html><body><h1 style='color:red'>please enter correct user name or password</h1></body></html>");
				}
			
				
			
				
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
	}

}
