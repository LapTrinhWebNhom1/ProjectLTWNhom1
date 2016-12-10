<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
	
    <div class="panel panel-default">
      <div class="panel-heading"><strong>Upload Files</strong></div>
      
     
      <h4>Select files from your computer</h4>
       <form method="post" action="uploadServlet" enctype="multipart/form-data">
        	<div class="form-inline">
        	 <div class="form-group">
            <input type="file" name="files" id="js-upload-files" >
          </div>
          <div>
             <h3>Level:</h3>
            <select class="form-control" name="Level" id="sel1">
              <option id="se1">Document Level 250-500</option>
              <option id="se1">Document Level 500-750</option>
              <option id="se1">Document Level 750-990</option>
            </select>
            <h3>Type:</h3>
            <select class="form-control" name ="type" id="sel2">
              <option id="sel2">Reading</option>
              <option id="sel2">Listening</option>
            </select>
             <div>            
                    <p>Title: </p>
                   <input type="text" name="title" size="50"/>
               </div>
              <div>            
                    <p>Use Name: </p>
                   <input type="text" name="username" value="<%=session.getAttribute("username") %>" size="50"/>
               </div>
          </div>
          <br>
          <div>
				<input type="submit" value="Upload files">          
          </div>
         
        </div>
        </form>
      </div>

	
</body>
</html>