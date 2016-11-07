<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	 
    <div class="panel panel-default">
      <div class="panel-heading"><strong>Upload Files</strong></div>
      
      <!-- Standar Form -->
      <h4>Select files from your computer</h4>
      <form action="" method="post" enctype="multipart/form-data" id="js-upload-form">
        <div class="form-inline">
          <div class="form-group">
            <input type="file" name="files[jchj]" id="js-upload-files" multiple>
          </div>
          <br>
          <button type="submit" class="btn btn-info" id="js-upload-submit" style="width:100px">Upload files</button>
        </div>
        
      </div>
	
</body>
</html>