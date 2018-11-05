<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Tiếng Anh Cho Bé  |Register</title>

    <!-- Favicon -->
    <link rel="icon" href="/tienganhchobe/img/core-img/favicon.ico">
    

    <!-- Stylesheet -->
    <link rel="stylesheet" href=" <%= request.getContextPath() %>/style.css">
   
    
    <script type="text/javascript">
    	function validateForm(){
    		var username = document.getElementById('username').value;
    	    var password = document.getElementById('password').value;
    	    var email = document.getElementById('email').value;
    	    var fullname = document.getElementById('fullname').value;
    	    var password2 = document.getElementById('password2').value;
    	    if (fullname == '')
    	    {
    	   /*     alert('Bạn phải nhập đủ thông tin!');  */
    	    	document.getElementById("loi-fullname").innerHTML="Họ và Tên không được để trống!";
    	    	return false;
    	    }
 		 	else{
 		 			document.getElementById("loi-fullname").innerHTML="";
    	  	  	}
    	    if (email == '')
    	    {
    	        /* alert('Bạn phải nhập đủ thông tin!'); */
    	    	document.getElementById("loi-email").innerHTML="Email không được để trống!";
    	    	return false;
    	    }
    	  
    	    else
    	    {
    	    	document.getElementById("loi-email").innerHTML="";
    	    }
    	    if (username == ''){
       	     /*    alert('Bạn phải nhập đủ thông tin!'); */
       	     document.getElementById("loi-username").innerHTML="Username không được để trống!";
       	     return false;
       	    }
       	    else{
       	    	document.getElementById("loi-username").innerHTML="";
       	    }
       	    if (password == '')
       	    {
       	    	document.getElementById("loi-password").innerHTML="Password không được để trống!";
       	    	return false;
       	    }
       	    else{
       	    	document.getElementById("loi-password").innerHTML="";
       	    	
       	    }
       	    if(password!=password2)
       	    	{
	       	    	document.getElementById("loi-password2").innerHTML="Password không khớp nhau!";
	       	    	return false;
       	    	}
       	    else{
       	    		document.getElementById("loi-password2").innerHTML="";
       	    	} 
       	    return true;}	
    </script>
    <style type="text/css">
    .erro{ color:red; }
    </style>
</head>
<body>
	
	<%
		String erro=null;
		String erro_username=null;
		if(request.getAttribute("erro_mail")!=null){
		erro =(String) request.getAttribute("erro_mail");
		}
		if(request.getAttribute("erro_username")!=null){
		erro_username =(String) request.getAttribute("erro_username");
	}
	%>
	
	<jsp:include page="header.jsp"></jsp:include>

	<div class="login">
			<h4><b>Đăng ký tài khoản của bạn</b></h4>
		<table style="height:250px;">
			<form action="/tienganhchobe/UsersController" method="post" onsubmit="return validateForm()" > 
			<tr>
			<th>Họ và tên:</th>
			<td><input type="text" name=fullname id="fullname" placeholder="Fullname" ></td>
			<td><span id="loi-fullname" class="erro"></span></td>
			<%if(erro!=null) {{%><span style="color:red"><%=erro%></span><%}}%>
			
			</tr>
			
			<tr>
			<th>Email:</th>
			<td><input type="text" name=email id="email" placeholder="Email" ></td>
			<td><span id="loi-email" class="erro"></span></td>
			</tr>
			
			<tr>
			<th>Username:</th>
			<td><input type="text" name=username id="username" placeholder="Username"></td>
			<td><span id="loi-username" class="erro"></span>
			<%if(erro_username!=null) {{%><span style="color:red"><%=erro_username%></span><%}}%>
			</td>
			</tr>
			
			<tr>
			<th>Password:</th>
			<td><input type="password" name=password id="password" placeholder="Password" ></td>
			<td><span id="loi-password" class="erro"></span></td>
			</tr>
			<tr>
			<th>Nhập lại Password:</th>
			<td><input type="password" name=password2 id="password2" placeholder="Re-enter Password" ></td>
			<td><span id="loi-password2" class="erro"></span></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Đăng Ký" ></td>
			</tr>
			</form>
		</table>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="<%= request.getContextPath() %>/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<%= request.getContextPath() %>/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<%= request.getContextPath() %>/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<%= request.getContextPath() %>/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<%= request.getContextPath() %>/js/active.js"></script>
</body>
</html>