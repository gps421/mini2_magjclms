<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>질문 등록</title>
<!--   <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!--   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<!--   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
  <style>
    label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 1000px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; height: 50px;}
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
    #thname { width: 200px;}
    #thquestion { width: 700px;}
  </style>
  <script>
  $( function() {
    var dialog, form,
 
      name = $( "#name" ),
      question = $( "#question" ),
      allFields = $( [] ).add( name ).add( question ),
      tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }
 
    function addUser() {
      var valid = true;
      allFields.removeClass( "ui-state-error" );
        $( "#users tbody" ).append( "<tr>" +
          "<td>" + name.val() + "</td>" +
          "<td>" + question.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" );
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
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#create-question" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  } );
  </script>
</head>
<body>
 
<div id="dialog-form" title="Create new Question" style="z-index:1000">
  <p class="validateTips">질문을 등록해 주세요.</p>
 
  <form>
    <fieldset>
      <label for="name">Name</label> <!-- 질문 등록한 학생 -->
      <input type="text" name="name" id="name" value="${student.name}" class="text ui-widget-content ui-corner-all">
      <label for="question">Question</label>
            질문을 등록하세요 : <br>
            <textarea name="question" id="question"></textarea>
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
 
 
<div id="users-contain" class="ui-widget">
  <h1>강의 관련 질문을 등록하세요:</h1>
  <table id="users" class="ui-widget ui-widget-content">
    <thead>
      <tr class="ui-widget-header ">
        <th id="thname">Name</th>
        <th id="thquestion">Question</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>질문 등록자(학번? or 이름?)</td>
        <td>Question</td>
      </tr>
    </tbody>
  </table>
</div>
<button id="create-question">Create new Question</button>
</body>
</html>