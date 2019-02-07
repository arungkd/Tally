<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<html lang="en">
<head>
  <head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <meta http-equiv="Content-Language" content="en" />
	    <meta name="msapplication-TileColor" content="#2d89ef">
	    <meta name="theme-color" content="#4188c9">
	    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
	    <meta name="apple-mobile-web-app-capable" content="yes">
	    <meta name="mobile-web-app-capable" content="yes">
	    <meta name="HandheldFriendly" content="True">
	    <meta name="MobileOptimized" content="320">
	    <link rel="icon" href="./favicon.ico" type="image/x-icon"/>
	    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
	    <!-- Generated: 2018-04-16 09:29:05 +0200 -->
	    <title>Accounts ERP</title>
	    <link rel="stylesheet" href="/accounts/resources/assets/css/font-awesome.min.css">
	    <link rel="stylesheet" href="/accounts/resources/assets/css/font.css">
	    <script src="./resources/assets/js/require.min.js"></script>
	    <script>
	      requirejs.config({
	          baseUrl: '.'
	      });
	    </script>
	    <!-- Dashboard Core -->
	    <link href="./resources/assets/css/dashboard.css" rel="stylesheet" />
	    <script src="./resources/assets/js/dashboard.js"></script>
	    <!-- c3.js Charts Plugin -->
	    <link href="./resources/assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
	    <script src="./resources/assets/plugins/charts-c3/plugin.js"></script>
	      
	    <!-- Input Mask Plugin -->
	    <script src="./resources/assets/plugins/input-mask/plugin.js"></script>
	
  	
  </head>
	<body>
		<div class="page-main">
		  <tiles:insertAttribute name="header" />	
		  <div class="my-3 my-md-5" style="height:100%">
		   <div class="container">
		      <tiles:insertAttribute name="body" />	
		   </div>
		  </div>
		  </div>
		<!-- ./wrapper -->
	</body>

     <tiles:insertAttribute name="footer"/>	
</html>
