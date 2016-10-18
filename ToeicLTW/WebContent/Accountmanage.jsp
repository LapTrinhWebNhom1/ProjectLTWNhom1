<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
	
        <form>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Username</label></th>
                      <th>Email</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><label><input type="radio" name="optradio"></td>
                      <td>group1</td>
                      <td>group1@gmail.com</td>
                    </tr>
                    <tr>
                      <td><label><input type="radio" name="optradio"></td>
                      <td>Mary</td>
                      <td>mary@example.com</td>
                    </tr>
                    <tr>
                      <td><label><input type="radio" name="optradio"></td>
                      <td>July</td>
                      <td>july@example.com</td>
                    </tr>
                  </tbody>
                </table>
              </form>

           
                 <button type="button" class="btn btn-warning btn-md pull-right" id="btnDelModal">Delete</button>
                      <div class="modal fade" data-keyboard ="false" data-backdrop ="static" id="DelModal" tabindex="1">
                        <div class="modal-dialog modal-sm">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Delete account</h4>
                            </div>
                            <div class="modal-body">
                              <form align="center">
                                <p align="center" style="font-size: 20px; color: red;">Do you really want to delete this account?</p>
                                <div class="btn-group">
                                  <button type="button" class="btn btn-default"><a href="#">Yes</a></button>
                                  <button type="button" class="btn btn-default"><a href="TrangChinhCuaAdminActiveManage.html">No</a></button>
                                </div>    
                              </form>  
                            </div>
                          </div>
                        </div>
                       </div>
</body>
</html>