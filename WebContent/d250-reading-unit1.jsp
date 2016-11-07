<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
 <sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/toeic"
	user="root"
	password="buithanhhieu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Trang web luyện thi Toeic </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="css/jquery.countdown.css" />
		<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
		<!--font-Awesome-->
		<link href="css/font-awesome.css" rel="stylesheet">
		 <script type="text/javascript" src="/static/js/easySlider1.7.js"></script>
    	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<!--font-Awesome-->
		 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		 
		<script>
		$(document).ready(function(){
		$(".dropdown").hover(
		function() {
		$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
		$(this).toggleClass('open');
		},
		function() {
		$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
		$(this).toggleClass('open');
		}
		);
		});
		</script>
		</script>
		<script type="text/javascript">
		$(document).ready(function () {
		$('label.tree-toggler').click(function () {
		$(this).parent().children('ul.tree').toggle(400);
		});
		});
		</script>
		<script type="text/javascript">
		function onclicktab(url) {
		var xhttp;
		if (window.XMLHttpRequest) {
		// code for modern browsers
		xhttp = new XMLHttpRequest();
		} else {
		// code for IE6, IE5
		xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		document.getElementById("Home").innerHTML = this.responseText;
		}
		};
		xhttp.open("GET",url, true);
		xhttp.send();
		}
		
		</script>
	</head>
	<body>
		<div class="header">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">toeic</a>
				</div>
				<!--/.navbar-header-->
				<div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="login.jsp"><i class="fa fa-user"></i><span>Login</span></a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i><span>Search</span></a>
							<ul class="dropdown-menu search-form">
								<form>
									<input type="text" class="search-text" name="s" placeholder="Search...">
									<button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
								</form>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!--/.navbar-collapse-->
		</nav>
		</div>
		<nav class="navbar nav_bottom" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li >
							<a href="TrangChu.jsp" >Home</a>
						</li>
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li onclick="onclicktab('managechualogin.jsp');">
									<a href="#UploadDoc" >Upload Document</a>
								</li>
								<li onclick="onclicktab('managechualogin.jsp');">
									<a href="#UploadDoc" data-toggle="tab">Shared Document</a>
								</li>
								<li onclick="onclicktab('managechualogin.jsp');">
									<a href="#UploadDoc" data-toggle="tab">Plan Study</a>
								</li>
								<li onclick="onclicktab('managechualogin.jsp');">
									<a href="#UploadDoc" data-toggle="tab">Study Process</a>
								</li>
							</ul>
						</li>
						<li onclick="onclicktab('Discusschualogin.jsp');"><a href="#">Discuss</a></li>
					</ul>
					</div><!-- /.navbar-collapse -->
				</div>
			</nav>
			<!-- banner -->
			<div class="banner">
				<!-- banner Slider starts Here -->
				<script src="js/responsiveslides.min.js"></script>
				<script>
					// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
					$("#slider3").responsiveSlides({
						auto: true,
						pager: true,
						nav: true,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
						$('.events').append("<li>after event fired.</li>");
						}
					});
					});
				</script>
				<!--//End-slider-script -->
				<div class="container">
					<div class ="container" id="top" class="callbacks_container">
						
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="hinhanh/DailyMail.jpg" width="100%" style="height:500px">
									<div class="carousel-caption">
										<h3><a href="http://www.dailymail.com" style="font-size: 20px">Daily Mail</a></h3>
									</div>
								</div>
								<div class="item">
									<img src="hinhanh/bbc.jpg" title="bbcnews" style="height:500px" width="100%">
									<div class="carousel-caption">
										<h3><a href="http://www.bbc.com" style="font-size: 20px">BBC News</a></h3>
									</div>
								</div>
							</div>
							
							
						</div>
						<!-- Left and right controls 
							<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>-->
					</div>
				</div>
				<!-- //banner -->
				
				<div class="container">
					<div class="col-sm-3">
						
						<div>
							<ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
								<div>
									<li><label class="tree-toggler" style="font-size:20px">Document Level 250-500</label>
									<ul class="nav nav-list tree">
										<li onclick="onclicktab('250-reading.jsp');"><a href="#">Reading</a></li>
										<li onclick="onclicktab('250-listening.jsp');"><a href="#">Listening</a></li>
										
									</ul>
								</li>
							</div>
							<div>
								<li><label class="tree-toggler" style="font-size:20px">Document Level 500-750</label>
								<ul class="nav nav-list tree">
									<li onclick="onclicktab('500-reading.jsp');"><a href="#">Reading</a></li>
									<li onclick="onclicktab('500-listening.jsp');"><a href="#">Listening</a></li>
									
								</ul>
							</li>
						</div>
						<div>
							<li><label class="tree-toggler" style="font-size:20px">Document Level 750-990</label>
							<ul class="nav nav-list tree">
								<li onclick="onclicktab('700-reading.jsp');"><a href="#">Reading</a></li>
								<li onclick="onclicktab('750-listening.jsp');"><a href="#">Listening</a></li>
								
							</ul>
						</li>
					</div>
				</ul>
			</div>
			<div>
				<ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
					<div>
						<li><label class="tree-toggler" style=" font-size:20px; ">Test</label>
						<ul class="nav nav-list tree">
							<li onclick="onclicktab('test-reading.jsp');"><a href="#">Toeic Reading Test</a></li>
							<li onclick="onclicktab('test-listening.jsp');"><a href="#">Toeic Listening Test</a></li>
							<li onclick="onclicktab('test-vocabulary.jsp');"><a href="#">Toeic Vocabulary Test</a></li>
						</ul>
					</li>
				</div>
				
			</ul>
		</div>
	</div>
	<div class="col-sm-9">
		
		<div id="Home"></div>
		<div>
	<sql:query var="items" sql="SELECT content FROM document where id=2 "/>
	
	
		<c:forEach items="${items.rowsByIndex}" var="row">			
	
		<c:forEach items="${row}" var="col">			
		<td>${col}</td>		
		</c:forEach>							
	

		</c:forEach>

	
	</div>
		
	</div>
	
</div>
</div>
<div class="bg"></div>
</div>
<div class="footer">
<div class="container">
<div class="col-md-6 grid_4">
	<h3>About Us</h3>
	<p>Group 1</p>
	<ul class="social-nav icons_2 clearfix">
		<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
		<li><a href="#" class="facebook"> <i class="fa fa-facebook"></i></a></li>
		<li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
	</ul>
</div>
<div class="col-md-6 grid_4">
	<h3>Contact Us</h3>
	<address>
		<strong></strong>
		<br>
		<span>1 Võ Văn Ngân, Q.Thủ Đức</span>
		<br><br>
	<abbr>Telephone : </abbr> 0123456789 :D
	<br>
	<abbr>Email : </abbr> <a href="https://mail.google.com/">group1ltweb@gmail.com</a>
</address>
</div>
<div class="clearfix"> </div>
<div class="copy">
<p>Design by <a href="https://www.facebook.com/profile.php?id=100007122675758" target="_blank">Group 1</a> </p>
</div>
</div>
</div>
<script src="js/jquery.countdown.js"></script>
<script src="js/script.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#slider").easySlider({
auto: true,
continuous: true,
numeric: true,
pause:7000
});
</script>
</body>
</html>