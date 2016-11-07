<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	
  <h2>Discuss</h2>
  <form>
    <table class="table table-hover">
      <thead>
        <tr>
          <th></th>
          <th>Username</label></th>
          <th>Email</th>
          <th>Question</th>
          <th>Time</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><label><input type="radio" name="optradio"></td>
          <td>group1</td>
          <td>group1@gmail.com</td>
          <td>When can we use the present perfect tense?</td>
          <td>Sep 25,2016 14:00</td>
        </tr>
        <tr>
          <td><label><input type="radio" name="optradio"></td>
          <td>Mary</td>
          <td>mary@example.com</td>
          <td>Can you teach me how to pronoun exactly these words "wife, why, white"?</td>
          <td>Sep 25,2016 15:00</td>
        </tr>
        <tr>
          <td><label><input type="radio" name="optradio"></td>
          <td>July</td>
          <td>july@example.com</td>
          <td>When can we use the pastperfect tense?</td>
          <td>Sep 25,2016 14:00</td>
        </tr>
      </tbody>
    </table>
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