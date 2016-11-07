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
      
      <!-- Standar Form -->
      <h4>Select files from your computer</h4>
      <form action="" method="post" enctype="multipart/form-data" id="js-upload-form">
        <div class="form-inline">
          <div class="form-group">
            <input type="file" name="files[jchj]" id="js-upload-files" multiple>
          </div>
          <div>
             <h3>Level:</h3>
            <select class="form-control" id="sel1">
              <option>Document Level 250-500</option>
              <option>Document Level 500-750</option>
              <option>Document Level 750-990</option>
            </select>
            <h3>Type:</h3>
            <select class="form-control" id="sel2">
              <option>Reading</option>
              <option>Listening</option>
            </select>
          </div>
          <br>
          <button type="submit" class="btn btn-info" id="js-upload-submit" style="width:100px">Upload files</button>
        </div>
        
      </div>

	
</body>
</html>