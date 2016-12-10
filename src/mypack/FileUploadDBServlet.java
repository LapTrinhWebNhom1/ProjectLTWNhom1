package mypack;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.text.SimpleDateFormat;
import java.text.*;
import java.util.*;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class FileUploadDBServlet
 */

@SuppressWarnings({ "serial", "unused" })
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)  
public class FileUploadDBServlet extends HttpServlet {
	 private String dbURL = "jdbc:mysql://localhost:3306/ltwtoeic";
	    private String dbUser= "root";
	    private String dbPass = "buithanhhieu";
	     
    public FileUploadDBServlet() {
        super();
       
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type = request.getParameter("type");
        String UserName = request.getParameter("username");
        String title=request.getParameter("title");
        String Level=request.getParameter("Level");
        Calendar cal = Calendar.getInstance();
        int ngay=cal.get(Calendar.DATE);
        int thang= (cal.get(Calendar.MONTH) + 1 );
        int nam=cal.get(Calendar.YEAR);
        String a=String.valueOf(ngay);
        String b=String.valueOf(thang);
        String c=String.valueOf(nam);
        String da=c+'-'+b+'-'+a;
        
        
        
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("files");
        
        
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            //'"+Username+"'
            String sql = "INSERT INTO tailieuupload (tieude,level,loai,username,trangthai,file,ngay) values ('"+title+"', '"+Level+"','"+type+"','"+UserName+"',null,'"+inputStream+"','"+da+"')";
           
            PreparedStatement statement = conn.prepareStatement(sql);
            System.out.println(statement);
             	
            System.out.println("thuc thi thanh cong");
            int row = statement.executeUpdate();
            System.out.println(row);
            if (row > 0) {
                message = "File uploaded and saved into database";
                response.sendRedirect("Message.jsp");
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
           //getServletContext().getRequestDispatcher("Message.jsp");
        }
	}

	private Date getDate() {
		// TODO Auto-generated method stub
		return null;
	}

}
