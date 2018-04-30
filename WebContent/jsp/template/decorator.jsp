<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/downmenu.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="../css/jssor.css">
   <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
   <script src="../js/jssor.slider-27.1.0.min.js" type="text/javascript"></script>
</head>
<body>
 <div class="container">
	<div class="header">
	  <c:import url="/jsp/decorator/topMenu.jsp" />
	</div>	
	<div class="content">
	  <sitemesh:write property="body" /> 
	</div>	
 </div>
</body>
</html>