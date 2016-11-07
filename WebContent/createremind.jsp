<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Trang web luyện thi Toeic</title>
</head>
<body>
	

    <div class="row">
        <form class="form-horizontal col-sm-7 col-sm-offset-2" action="" method="post">
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
            <div class="form-group registration-date">
                <label class="control-label col-sm-3" for="registration-date">Date:</label>
                <div class="input-group registration-date-time">
                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
                    <input class="form-control" name="registration_date" id="registration-date" type="date">
                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-time" aria-hidden="true"></span></span>
                    <input class="form-control" name="registration_time" id="registration-time" type="time">
                    
                </div>
                <button>Create Reminders</button>
            </div>
        </form>
    </div>
	
</body>
</html>