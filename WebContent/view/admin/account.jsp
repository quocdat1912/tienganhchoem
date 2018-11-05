<%@page import="tienganhchobe.webmvc.model.Users"%>
<%@page import="tienganhchobe.webmvc.dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
	<script type="text/javascript">
		function xacnhan() {
			return confirm("bạn có muốn xóa không?");
		}
		
	
	</script>
	
	
	
</head>
<body>

<%
	UsersDAO ud=new UsersDAO();
%>
	<div class="wrapper">
	      <div class="main-panel">
		
			 <jsp:include page="slidebar.jsp"></jsp:include>
			<jsp:include page="admin-header.jsp"></jsp:include>
			
			<div class="content">
      		<div class="container-fluid">
      		
					<div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                             <div class="row">
                             <div class="col-md-5">
                                <h4 class="title">Tài Khoản</h4>
                                <p class="category">Danh sách các tài khoản và quyền hạn trên hệ thống</p>
                             </div>
             						<div class="col-md-3" ><a href="<%=request.getContextPath() %>/view/admin/add-account.jsp">Thêm Tài Khoản</a></div>
             						<div class="col-md-4" >
             						<input type="text" name="seach" placeholder="Nhập thông tin account"> 
             						<input type="submit" value="Tìm kiếm">
             						</div>
                               </div>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                        <th>ID</th>
                                    	<th>FullName</th>
                                    	<th>Email</th>
                                    	<th>UserName</th>
                                    	<th>PassWord</th>
                                    	<th>Quyền</th>
                                    	<th colspan="2">Chức Năng</th>
                                    </thead>
                                    <tbody>
                                    
                                    
                                 
                                    
                                    <%
                                    	for(Users ds: ud.getListUsers())
                                    	{%>
                                        <tr>
                                        	<td><%=ds.getUser_id() %></td>
                                        	<td><a href="#"><%=ds.getUser_fullname() %></a></td>
                                        	<td><%=ds.getUser_email() %></td>
                                        	<td><%=ds.getUser_name() %></td>
                                        	<td><%=ds.getUser_password() %></td>
                                        	<td>
                                        		<select name="role">
                                        			<option value="1">Admin</option>
                                        			<option value="2">Teacher</option>
                                        			<option value="3">Student</option>
                                        		</select>                    
                                        	</td>
                                        	<td><a onclick=" return xacnhan() "  
                                    href=  "/tienganhchobe/changeRoleController?iduser=<%=ds.getUser_id()%>">Sửa </a></td>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<td><a onclick=" return xacnhan() "  href=  "/tienganhchobe/deleteUser?iduser=<%=ds.getUser_id()%>">Xóa</a></td>
                                        
                                        </tr>
                                   		<%}
                                        %>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>

	  	</div>
	  </div>
			
		</div>
		<jsp:include page="admin-footer.jsp"></jsp:include>
	</div>
	</div>
</body>


<!--   Core JS Files   -->
    <script src="assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>