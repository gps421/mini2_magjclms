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

<!-- 강의 등록 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/annForm.css">

<!-- qna List -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/qna.css">
<script src="${pageContext.request.contextPath}/js/mypage/qna.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- <script src='https://code.jquery.com/jquery-3.2.1.min.js'></script> -->
<link rel='stylesheet prefetch' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>

<!-- 강의 자료 등록 -->
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/contentForm.css"> -->

<!-- myprofile -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/myProfile.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

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