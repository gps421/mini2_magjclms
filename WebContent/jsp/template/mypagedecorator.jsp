<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/downmenu.css">

<!-- mypage Index -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypageIndex.css"> --%>
<%-- <script  src="${pageContext.request.contextPath}/js/mypageIndex.js"></script> --%>

<!-- 공지 등록 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/annForm.css">

</head>
<body>
 <div class="container" id="new">
	<div class="header">
	  <c:import url="/jsp/decorator/topMenu.jsp" />
	</div>	
	<div class="content">
	  <sitemesh:write property="body" />
	</div>
 </div>
</body>
</html>