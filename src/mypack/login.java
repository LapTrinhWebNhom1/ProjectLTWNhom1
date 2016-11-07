package mypack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;

import java.sql.*;
/**
 * Servlet implementation class login
 */
@SuppressWarnings("unused")
@WebServlet("/login")
public class login extends HttpServlet{ 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		System.out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "dangnhap";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = "buithanhhieu";
		String username="";
		String userpass="";
		String strQuery= ""; 
		Statement st=null;
		ResultSet rs=null;
		HttpSession session = request.getSession(true);
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName,userName,password);
			if(request.getParameter("username")!=null &&
					request.getParameter("username")!="" && request.getParameter("password")!=null &&
					request.getParameter("password")!="")
			{
				username = request.getParameter("username").toString();
				userpass = request.getParameter("password").toString();
				strQuery="select * from login where username='"+username+"' and  password='"+userpass+"'";
				System.out.println(strQuery);
				st = conn.createStatement();
				rs = st.executeQuery(strQuery);
				int count=0;
				while(rs.next())
				{
					session.setAttribute("username",rs.getString(2));
					count++;
				}
				if(count>0)
				{
					response.sendRedirect("TrangchuSaukhilogin.jsp");
				}
				else
				{
					response.sendRedirect("login.jsp");
				}
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
			System.out.println("Connected to the database"); 
			conn.close();
			System.out.println("Disconnected from database");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}
