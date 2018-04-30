<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 <div class="container" id="new">
	<div class="header">
	  <c:import url="/jsp/decorator/topMenu.jsp" />hi
	</div>	
	<div class="content">
	  <sitemesh:write property="body" />
	</div>
 </div>
</body>
</html>