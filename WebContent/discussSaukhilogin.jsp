<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
 <sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/ltwtoeic"
	user="root"
	password="buithanhhieu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
 th, td {
    border: 1px solid black;
        }
   
</style>

</head>
<body>
	
<form>
    
      <div>      
      
	<sql:query var="items" sql="SELECT noidung FROM tinnhan where usergui='+username+' "/>
	<table style="width:100%" >
		<tr>
		
		</tr>	
		<c:forEach items="${items.rowsByIndex}" var="row">							
			<tr>								  
       			<c:forEach  items="${row}" var="col">	       			 
					<td> ${col}</td>									
				</c:forEach>						
			</tr>			
		</c:forEach>
</table>
	
	</div>
   
  </form>
	<form method="POST" action="discussServlet" >
	 <div class="grid">
      
        <br>
        <div class="controls">
          <textarea name="comments" class="form-control" id="comments" rows="5" ></textarea>
          <label for="comments">Comments</label>
           <div>        
          <p>Use Name: </p>
          <input type="text" name="username" value="<%=session.getAttribute("username") %>" size="50"/>
     	</div>
          </div>
            <button type="submit" value="Submit" class="col-1-4">Submit</button>
     	 </div>  
      </form>
</body>
</html>