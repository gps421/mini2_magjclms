<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title> 공지 등록 form </title>
<%--   <link rel="stylesheet" href="<c:url value='/css/annForm.css'/>"> --%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/annForm.css">
</head>

<body>

  <div id="form-main">
  <div id="form-div">
    <form class="form" id="form1" method="post" action="annRegist">
    <input type="hidden" name="professorNo" value="${announcement.professorNo}" />
	<input type="hidden" name="courseNo" value="${announcement.courseNo}" />
      <p class="title">
        <input name="title" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Title" id="title" />
      </p>
      <p class="content">
        <textarea name="content" class="validate[required,length[6,300]] feedback-input" id="content" placeholder="Content"></textarea>
      </p>
      
      <div class="submit">
        <input type="submit" value="등록" id="button-blue"/>
        <div class="ease"></div>
        </div>
    </form>
    </div>
  </div>
</body>
</html>

<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <!-- text editor 사용하면??? --> -->
<!-- 	<form method="post" action="annRegist"> -->
<%-- 	<input type="hidden" name="professorNo" value="${announcement.professorNo}" /> --%>
<%-- 	<input type="hidden" name="courseNo" value="${announcement.courseNo}" /> --%>
<!-- 		제목 : <input type='text' name='title' size='70' /><br>  -->
<!-- <!-- 		작성자 : 로그인한 교수번호 불러오기 --> -->
<!-- 		내용 : <textarea name='content' rows='7' cols='70'></textarea> -->
<!-- 		<br> -->
<!-- 		<button type='submit'>등록</button> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->