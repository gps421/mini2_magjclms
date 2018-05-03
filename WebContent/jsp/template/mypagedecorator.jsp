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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myPageIndex/myPageIndex.css">
<script  src="${pageContext.request.contextPath}/js/myPageIndex/myPageIndex.js"></script>

<!-- 강의 공지 --> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/annList.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:300italic,400italic,400,100,300,600,700' rel='stylesheet' type='text/css'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<!-- 강의 자료 등록 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/contentForm.css">

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