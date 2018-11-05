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
    <title>Tiếng Anh Cho Bé  | Login</title>

    <!-- Favicon -->
    <link rel="icon" href="/tienganhchobe/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/tienganhchobe/style.css">
    
    <script type="text/javascript">
    	function validateForm(){
    		var username = document.getElementById('username').value;
    	    var password = document.getElementById('password').value;
    	    
    	    if (username == ''){
    	         /* alert('Bạn phải nhập username!'); */
    	         document.getElementById("loi-username").innerHTML="Username không được trống!";
    	         return false;
    	    }
    	    else{
    	    	document.getElementById("loi-username").innerHTML="";
    	    	
    	    }
    	     if (password == '')
    	    {
    	     /*    alert('Bạn phải nhập password!'); */
    	        document.getElementById("loi-password").innerHTML="Password không được trống!";
    	    }
    	     
    	    else{
    	        /* alert('Dữ liệu hợp lệ, ta có thể chấp nhận submit form'); */
    	        document.getElementById("loi-password").innerHTML="";
    	        return true;
    	    }
    	 
    	    return false;
    		
    	}
    	
    </script>
    
   
</head>
<body>
<%
		String erro_login=null;
		if(request.getAttribute("erro_login")!=null){
			erro_login=(String)request.getAttribute("erro_login");
		}
%>	
	
<jsp:include page="header.jsp"></jsp:include>
	
	<div class="login">
	<h4><b>Đăng nhập tài khoản của bạn:</b></h4>
	<%if(erro_login!=null){%><p style="color:red"><%=erro_login %></p> <%}%>
	<table height="100px;">
	<form action="/tienganhchobe/checkLoginAcc" method="post" onsubmit="return validateForm()">
	 	<tr>
	 		<th>Username:</th>
	 		<td><input style="margin-left:20px;" type="text" name=username id="username" placeholder="Username" ></td>
	 		<td><span style=" color:red" id="loi-username"></span></td>
	 	</tr>
	 	<tr>
	 		<th>Password:</th>
	 		<td><input style="margin-left:20px;" type="password" name=password id="password" placeholder="Password"></td>
	 		<td><span style=" color:red" id="loi-password"></span></td>
	 	</tr>
	 	<tr>
	 		
	 		<td colspan="2"><input style="margin-left:10px;" type="submit" value="Đăng Nhập"></td>
	 	</tr>
	 	</form>
	</table>
	
	
	</div>
	
	<%-- <div>
		<h4><b>Đăng nhập tài khoản của bạn:</b></h4>
		<%
		if(erro_login!=null)
			
			{%> <p style="color:red"><%=erro_login %></p> 
			
			<%}
			
			%>
		<form action="/tienganhchobe/checkLoginAcc" method="post" onsubmit="return validateForm()">
		<p>Tên đăng nhập</p>
		<span style=" color:red" id="loi-username"></span><br>
		<input type="text" name=username id="username" placeholder="Username" >
		<p>Mật khẩu</p>
		<span style=" color:red" id="loi-password"></span><br>
		<input type="password" name=password id="password" placeholder="Password"><br>
		<input type="submit" value="Đăng Nhập">
		</form>
	</div> --%>
		
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/tienganhchobe/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/tienganhchobe/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/tienganhchobe/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/tienganhchobe/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/tienganhchobe/js/active.js"></script>
</body>
</html>