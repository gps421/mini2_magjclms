<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">

  <title> 공지 등록 form </title>
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
