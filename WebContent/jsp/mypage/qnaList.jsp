<%-- <%@ page contentType="text/html; charset=UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html id="qhtml"> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Q&A</title> -->
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- <script src='https://code.jquery.com/jquery-3.2.1.min.js'></script> -->
<!-- <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/qna.css">
<script  src="${pageContext.request.contextPath}/js/qna.js"></script>
<!-- <link rel='stylesheet prefetch' -->
<!-- 	href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'> -->
<!-- </head> -->
<!-- <body id="qbody"> -->
	<div class="container">

		<h2 id="qh2">Frequently Asked Questions</h2>
		<button id="create-question">Create new Question</button>
		<div class="accordion">
			<div class="accordion-item">
				<a>Q1</a><span><button type="button" class="btn btn-info">답변하기</button></span>
				<div class="content">
					<p>A1</p>
				</div>
			</div>
			<div class="accordion-item">
				<a>Q2</a>
				<div class="content">
					<p>A2</p>
				</div>
			</div>
			<div class="accordion-item">
				<a>Q3</a>
				<div class="content">
					<p>A3</p>
				</div>
			</div>
			<div class="accordion-item">
				<a>Q4</a>
				<div class="content">
					<p>A4</p>
				</div>
			</div>
			<div class="accordion-item">
				<a>Q5</a>
				<div class="content">
					<p>A5</p>>
				</div>
			</div>
			
		</div>

	</div>
	
<div id="dialog-form" title="Create new Question" style="z-index:1000">
  <p class="validateTips">질문을 등록해 주세요.</p>
 
  <form>
    <fieldset>
<!--       <label for="name">Name</label> 질문 등록한 학생 -->
<%--       <input type="text" name="name" id="name" value="${student.name}" class="text ui-widget-content ui-corner-all"> --%>
      <label for="question">Question</label>
            질문을 등록하세요 : <br>
            <textarea name="question" id="question"></textarea>
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

<script>
function addUser() {
    var valid = true;
    var question = $("#question");
    
    // DB 저장 CODE(ajax)
    $.ajax({});
    
    
    // 화면 추가 => success call back function에서 
      $( ".accordion" ).append( 
		'<div class="accordion-item">' +
		'<a>' + question.val() +'</a>' +
		'<div class="content">' +
		'	<p>답변 미등록</p> ' +
		'</div>' +
	'</div>'
      );
      dialog.dialog( "close" );
      
      $('.accordion a').click(function(){
    	    $(this).toggleClass('active');
    	    $(this).next('.content').slideToggle(400);
    	});
  }

  dialog = $( "#dialog-form" ).dialog({
    autoOpen: false,
    height: 400,
    width: 350,
    modal: true,
    buttons: {
      "Create an question": addUser,
      Cancel: function() {
        dialog.dialog( "close" );
      }
    },
    close: function() {
      form[ 0 ].reset();
    }
  });

  form = dialog.find( "form" ).on( "submit", function( event ) {
    event.preventDefault();
    addUser();
  });

  $( "#create-question" ).button().on( "click", function() {
    dialog.dialog( "open" );
  });
</script>	
	
<!-- </body> -->
<!-- </html> -->