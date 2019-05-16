<%-- 
    Document   : SearchResult
    Created on : May 7, 2019, 12:05:08 PM
    Author     : admin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page import="DAO.user_dao_query"%>
<%@page import="DAO.friend_query"%>
<%
    User user=(User) session.getAttribute("user");
    ArrayList<User> UserList=new ArrayList<User>();
    friend_query fq=new friend_query();
    UserList=fq.searchFollowingByID(user.getUser_id());
    
    %>

<!DOCTYPE html>
<html>

<!-- Mirrored from gambolthemes.net/workwise_demo/HTML/profiles.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 28 Apr 2019 14:19:03 GMT -->
<head>
<meta charset="UTF-8">
<title>Banana</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="public/css/animate.css">
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="public/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="public/css/line-awesome.css">
<link rel="stylesheet" type="text/css" href="public/css/line-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="public/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="public/lib/slick/slick.css">
<link rel="stylesheet" type="text/css" href="public/lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="public/css/style.css">
<link rel="stylesheet" type="text/css" href="public/css/responsive.css">
</head>


<body>
	

	<div class="wrapper">
		


		<%-- 
    Document   : page_header
    Created on : Apr 29, 2019, 1:56:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
	<div class="wrapper">
		


           
            <jsp:include page="page_header.jsp"></jsp:include>
            
		<section class="companies-info">
			<div class="container">
				<div class="company-title">
					<h3>Search Result </h3>
				</div><!--company-title end-->
				<div class="companies-list">
					<div class="row">
                                            <%for(User us: UserList){%>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src=<%=us.getAvatar()%> alt="">
									<h3><%=us.getUsername()%></h3>
									<h4><%=us.getFirst_name()+" " + us.getLast_name()%></h4>
									<ul>
										<li><a href="addFriend?to_id=<%=us.getUser_id()%>" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="UserInfo?userid=<%=us.getUser_id() %>" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
					<%}%>
					</div>
				</div><!--companies-list end-->
				<div class="process-comm">
					<a href="#" title=""><img src="images/process-icon.png" alt=""></a>
				</div>
			</div>
		</section><!--companies-info end-->


	</div><!--theme-layout end-->



<script type="text/javascript" src="public/js/jquery.min.js"></script>
<script type="text/javascript" src="public/js/popper.js"></script>
<script type="text/javascript" src="public/js/bootstrap.min.js"></script>
<script type="text/javascript" src="public/js/flatpickr.min.js"></script>
<script type="text/javascript" src="public/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="public/js/script.js"></script>
</body>

<!-- Mirrored from gambolthemes.net/workwise_demo/HTML/profiles.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 28 Apr 2019 14:19:11 GMT -->
</html>
