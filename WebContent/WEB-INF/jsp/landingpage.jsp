<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<html lang="en">
<head>
  <head>
    <title>Accounts</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
  	<!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="resources/assets/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/jquery-ui.css">
    
  </head>
	<body class="app sidebar-mini rtl">
		  <tiles:insertAttribute name="header" />	
		  <tiles:insertAttribute name="menu" />	
		  <tiles:insertAttribute name="body" />	
		<script type="text/javascript" src="resources/assets/js/popper.min.js"></script>
        <script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/assets/js/main.js"></script>     
	</body>
    <tiles:insertAttribute name="footer"/>	
</html>
