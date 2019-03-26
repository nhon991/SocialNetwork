<%
    String title = "Social Network";
    if (request.getAttribute("title") != null) {
        title = (String) request.getAttribute("title");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta property="og:type"          content="website" />
        <meta property="og:title"         content="Your Website Title" >
        <meta property="og:description"   content="Your description" />
        <meta property="og:image"         content="https://www.your-domain.com/path/image.jpg" />
       	<meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <link rel="stylesheet" type="text/css" href="public/css/boostrap-theme.css"/>
        <link rel="stylesheet" type="text/css" href="public/css/boostrap-theme.min.css"/>
        <link rel="stylesheet" type="text/css" href="public/css/boostrap.css"/>-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
        
    </head>
    <body>
       