package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class discussServlet
 */
@SuppressWarnings("serial")
@WebServlet("/discussServlet")
public class discussServlet extends HttpServlet {
	 private String dbURL = "jdbc:mysql://localhost:3306/ltwtoeic";
	    private String dbUser= "root";
	    private String dbPass = "buithanhhieu";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public discussServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String comment=request.getParameter("comments");
		  Connection conn = null; // connection to the database
		  System.out.println(username);	
		  try {
	            // connects to the database
	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	 
	            // constructs SQL statement
	            //'"+Username+"'
	            String sql = "INSERT INTO tinnhan (tieude,usergui,usernhan,noidung) values (null, '"+username+"','"+null+"','"+comment+"')";
	           
	            PreparedStatement statement = conn.prepareStatement(sql);
	            System.out.println(statement);
	            
	            System.out.println("thuc thi thanh cong");
	            int row = statement.executeUpdate();
	            System.out.println(row);
	            if (row > 0) {
	               // message = "File uploaded and saved into database";
	                response.sendRedirect("Message.jsp");
	            }
	        } catch (SQLException ex) {
	            //message = "ERROR: " + ex.getMessage();
	            ex.printStackTrace();
	        }
		
		
	}

}
