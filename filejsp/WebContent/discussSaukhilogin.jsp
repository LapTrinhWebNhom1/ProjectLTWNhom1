<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
	<h2>Discuss</h2>  
              <form>
                <div class="form-group">
                  <label for="comment">Comment:</label>
                  <textarea class="form-control" rows="5" id="comment"></textarea>
                </div>
              </form>
              <div class="container">     
                <button type="button" class="btn btn-warning" id="btnSendModal">Send</button>
                      <div class="modal fade" data-keyboard ="false" data-backdrop ="static" id="SendModal" tabindex="1">
                        <div class="modal-dialog modal-sm">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Send Question</h4>
                            </div>
                            <div class="modal-body">
                                  <p>Your comment is sent. Thanks for sending us your comments</p>     
                            </div>
                            <div class="modal-footer">
                              <button class="btn btn-default btn-md" type="button"><a href="TrangChinhSauKhiUserLogIn.html">Back to Home</a></button>
                            </div>
                          </div>
                        </div>
                       </div>
              </div>
</body>
</html>