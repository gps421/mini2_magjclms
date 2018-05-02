<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/annList.css">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:300italic,400italic,400,100,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!-- </head> -->
<!-- <body> -->
	전체 ${fn:length(annList)}개 <br>
	<button type="button" onclick="location.href='/mini2_magiclms/mypage/annForm'">공지등록</button> 
	
	<div class="announcement message">
		<c:forEach var="announcement" items="${annList}">
<%-- 		<td><a href="detail?no=${announcement.annNo}"><button id="annbtn">${announcement.title}</button></a></td> --%>
			<div class="message"><a href='annDetail?annNo=${announcement.annNo}'>${announcement.title}</a></div>
		</c:forEach>
	</div>
<!-- </body> -->
<!-- </html> -->