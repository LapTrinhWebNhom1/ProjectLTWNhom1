<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	 <!-- Button trigger modal -->
<button class="btn btn-primary btn-lg"  title="Share this content" data-toggle="modal" data-target="#myModal">
<i class="fa fa-share-alt"></i> Share
</button>
<!-- Modal -->


<div class="modal-content">
  <div>
    <h3>Level:</h3>
    <select class="form-control">
      <option>Document Level 250-500</option>
      <option>Document Level 500-750</option>
      <option>Document Level 750-990</option>
    </select>
    <h3>Type:</h3>
    <select class="form-control">
      <option>Reading</option>
      <option>Listening</option>
    </select>
    <h3>Unit:</h3>
   
    <select class="form-control">
      <option>Unit 1</option>
      <option>Unit 2</option>
      <option>Unit 3</option>
      <option>Unit 4</option>
      <option>Unit 5</option>
      <option>Unit 6</option>
      <option>Unit 7</option>
      <option>Unit 8</option>
      <option>Unit 9</option>
      <option>Unit 10</option>
      
    </select>
  </div>
  <div class="modal-body">
    <form action="" method="post">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
        <input type="email" class="form-control" placeholder="your@email.com">
      </div>
      <br />
      <button type="submit" value="sub" name="sub" class="btn btn-primary"><i class="fa fa-share"></i> Subscribe Now!</button>
    </form>
  </div>
 
</div>      
</body>
</html>