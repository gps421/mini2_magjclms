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

 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myPageIndex.css">
 <script  src="${pageContext.request.contextPath}/js/myPageIndex.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/annList.css">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:300italic,400italic,400,100,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<!-- 공지 등록 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/annForm.css">
  
<!-- qna 목록 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/qna.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%-- <script  src="${pageContext.request.contextPath}/js/qna.js"></script> --%>
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- <script src='https://code.jquery.com/jquery-3.2.1.min.js'></script> -->
<link rel='stylesheet prefetch' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>

<!-- content 목록 -->

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