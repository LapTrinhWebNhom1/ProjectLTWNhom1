package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public LoginServlet() {
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
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String log_username=request.getParameter("log_username");
		String log_password=request.getParameter("log_password");
		String radio=request.getParameter("radio");
		
		Double a= Double.parseDouble(radio);
		

		try{
			// ket noi database
			Class.forName("com.mysql.jdbc.Driver");
			String tam="jdbc:mysql://localhost:3306/ltwtoeic";
			Connection conn = null;
			conn = DriverManager.getConnection(tam,"root", "buithanhhieu");
			System.out.println("Connection DB complete!");
			//Truy van database
			String query = "SELECT * FROM user where username= '" +log_username+ "' and password='"+log_password+"' and roleid='"+radio+"'" ;
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				
				if(a==2)
				{
				System.out.println("Query success!");
				HttpSession session=request.getSession();
				session.setAttribute("username", log_username);

				request.getRequestDispatcher("TrangchuSaukhilogin.jsp").include(request,response);
				out.print(session.getAttribute("username"));
				}
				else{
					System.out.println("Query success!");
					HttpSession session=request.getSession();
					session.setAttribute("username", log_username);

					request.getRequestDispatcher("TrangChuAdmin.jsp").include(request,response);
					out.print(session.getAttribute("username"));
					
				}
				
			}
			else{
				request.getRequestDispatcher("login.jsp").include(request, response);
			}

		}
		catch(ClassNotFoundException | SQLException ex){
			System.out.println("Connection DB faied!");
		}

	}

}

