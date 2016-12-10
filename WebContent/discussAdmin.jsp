<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table, th, td {
    border: 1px solid black;
        }
   
</style>
</head>
<body>
	
  <h2>Discuss</h2>
  <form>
    
      <div>
	<sql:query var="items" sql="SELECT id,usergui,noidung FROM tinnhan "/>
	<table style="width:100%" >
		<tr>
			<th></th>
		<c:forEach items="${items.columnNames}" var="name">		
			
			<th>${name }</th>						
		</c:forEach>	
		</tr>	
		<c:forEach items="${items.rowsByIndex}" var="row">
							
			<tr>
			<td><input type="radio" name="radio" id="radio1"/></td>							  
       			<c:forEach  items="${row}" var="col">	       			 
					<td> ${col}</td>									
				</c:forEach>						
			</tr>			
		</c:forEach>
</table>
	
	</div>
   
  </form>
  
    <button type="button" class="btn btn-warning btn-md pull-right" id="btnDelModal">Delete</button>
    <div class="modal fade" data-keyboard ="false" data-backdrop ="static" id="DelModal" tabindex="1">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Delete question</h4>
          </div>
          <div class="modal-body">
            <form align="center">
              <p align="center" style="font-size: 20px; color: red;">Do you really want to delete this comment?</p>
              <div class="btn-group">
                <button type="button" class="btn btn-default"><a href="TrangChinhCuaAdminSauKhiAnDelTrongDiscuss.html">Yes</a></button>
                <button type="button" class="btn btn-default"><a href="TrangChinhCuaAdminActiveDiscuss.html">No</a></button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <button type="button" class="btn btn-warning btn-md pull-right" id="btnSendModal">Answer</button>
    <div class="modal fade" data-keyboard ="false" data-backdrop ="static" id="SendModal" tabindex="1">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Answer question</h4>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <textarea class="form-control" rows="5" id="comment"></textarea>
              </div>
              <div class="container">
                <button type="button" class="btn btn-info" id="btnSendModal1">Send</button>
                <div class="modal fade" data-keyboard ="false" data-backdrop ="static" id="SendModal1" tabindex="1">
                  <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title">Send Question</h4>
                      </div>
                      <div class="modal-body">
                        <p>Your answer is sent to user!</p>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-default btn-md" type="button"><a href="TrangChinhCuaAdminActiveDiscuss.html">Back</a></button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button class="btn btn-default" type="button" id="btnHideModal4"><a href="#">Close</a></button>
          </div>
        </div>
      </div>
    </div>
  

	
</body>
</html>