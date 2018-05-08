<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Drop down menu light</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="../../css/jssor.css">
   <script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>
	<script src="../../js/index.js"></script>
	<style>
	.jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider bullet skin 053 css*/
        .jssorb053 .i {position:absolute;cursor:pointer;}
        .jssorb053 .i .b {fill:#fff;fill-opacity:0.5;}
        .jssorb053 .i:hover .b {fill-opacity:.7;}
        .jssorb053 .iav .b {fill-opacity: 1;}
        .jssorb053 .i.idn {opacity:.3;}

        /*jssor slider arrow skin 093 css*/
        .jssora093 {display:block;position:absolute;cursor:pointer;}
        .jssora093 .c {fill:none;stroke:#fff;stroke-width:400;stroke-miterlimit:10;}
        .jssora093 .a {fill:none;stroke:#fff;stroke-width:400;stroke-miterlimit:10;}
        .jssora093:hover {opacity:.8;}
        .jssora093.jssora093dn {opacity:.6;}
        .jssora093.jssora093ds {opacity:.3;pointer-events:none;}
	</style>
	
	
</head>
<body>
 <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
            <div data-p="170.00">
                <img data-u="image" src="img/011.jpg" />
            </div>
            <div data-p="170.00">
                <img data-u="image" src="img/012.jpg" />
            </div>
            <div data-p="170.00">
                <img data-u="image" src="img/013.jpg" />
            </div>
            <div data-p="170.00">
                <img data-u="image" src="img/014.jpg" />
            </div>
            <div data-p="170.00">
                <img data-u="image" src="img/015.jpg" />
            </div>
            <div data-p="170.00">
                <img data-u="image" src="img/016.jpg" />
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb053" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <path class="b" d="M11400,13800H4600c-1320,0-2400-1080-2400-2400V4600c0-1320,1080-2400,2400-2400h6800 c1320,0,2400,1080,2400,2400v6800C13800,12720,12720,13800,11400,13800z"></path>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
<!--         <div data-u="arrowleft" class="jssora093" style="width:50px;height:50px;top:0px;left:30px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75"> -->
<!--             <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;"> -->
<%--                 <circle class="c" cx="8000" cy="8000" r="5920"></circle> --%>
<!--                 <polyline class="a" points="7777.8,6080 5857.8,8000 7777.8,9920 "></polyline> -->
<!--                 <line class="a" x1="10142.2" y1="8000" x2="5857.8" y2="8000"></line> -->
<!--             </svg> -->
<!--         </div> -->
<!--         <div data-u="arrowright" class="jssora093" style="width:50px;height:50px;top:0px;right:30px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75"> -->
<!--             <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;"> -->
<%--                 <circle class="c" cx="8000" cy="8000" r="5920"></circle> --%>
<!--                 <polyline class="a" points="8222.2,6080 10142.2,8000 8222.2,9920 "></polyline> -->
<!--                 <line class="a" x1="5857.8" y1="8000" x2="10142.2" y2="8000"></line> -->
<!--             </svg> -->
<!--         </div> -->
    </div>
<div class="row">
	<div class="col-md-12">
		<c:choose>
		<c:when test="${empty sessionScope.user}">
			<a href="<c:url value="/login" />">로그인</a>
		</c:when>
		<c:otherwise>
<%-- 			${sessionScope.user.name}님 접속(<fmt:formatDate value="${user.accessTime}" pattern="yyyy-MM-dd HH:mm:ss" />) --%>
			<a href="<c:url value="/logout" />">로그아웃</a>
		</c:otherwise>
		</c:choose>		
	</div>
	${errMsg}	
</div>
	<form name="mForm" action="login" method="post">
		아이디 : <input type="text" name="userId" id="userId" />
		비밀번호 : <input type="password" name="pw" id="pw" />
		<button onclick="check()">로그인</button>
	</form>
	<form action="joinForm" method="post">
	<button>회원가입</button>
	</form>
<div class="dim"></div>
<div id="left_menu">
	<ul class="login">
		<li><a href="#" class="menu_close">메뉴닫기</a></li>
	</ul>
</div>

<div class="dim"></div>
	<div id="left_menu">
		<ul class="login">
			<li><a href="#"><span class="login"></span>로그인하세요</a></li>
			<li><a href="#" class="alarm">알림설정</a></li>
			<li><a href="#" class="menu_close">메뉴닫기</a></li>
		</ul>
	</div>
	<script>
		function check() {
			var id = document.mForm.userId.value;
			
			if(id == "") {
				alert("아이디를 입력해주세요");
				return false;
			}
		}	
	</script>
	 <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              {$Duration:500,$Delay:12,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:2049,$Easing:$Jease$.$OutQuad},
              {$Duration:500,$Delay:40,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$SlideOut:true,$Easing:$Jease$.$OutQuad},
              {$Duration:1000,x:-0.2,$Delay:20,$Cols:16,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Assembly:260,$Easing:{$Left:$Jease$.$InOutExpo,$Opacity:$Jease$.$InOutQuad},$Opacity:2,$Outside:true,$Round:{$Top:0.5}},
              {$Duration:1600,y:-1,$Delay:40,$Cols:24,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:$Jease$.$OutJump,$Round:{$Top:1.5}},
              {$Duration:1200,x:0.2,y:-0.1,$Delay:16,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:260,$Easing:{$Left:$Jease$.$InWave,$Top:$Jease$.$InWave,$Clip:$Jease$.$OutQuad},$Round:{$Left:1.3,$Top:2.5}},
              {$Duration:1500,x:0.3,y:-0.3,$Delay:20,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$During:{$Left:[0.2,0.8],$Top:[0.2,0.8]},$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:260,$Easing:{$Left:$Jease$.$InJump,$Top:$Jease$.$InJump,$Clip:$Jease$.$OutQuad},$Round:{$Left:0.8,$Top:2.5}},
              {$Duration:1500,x:0.3,y:-0.3,$Delay:20,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$During:{$Left:[0.1,0.9],$Top:[0.1,0.9]},$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:260,$Easing:{$Left:$Jease$.$InJump,$Top:$Jease$.$InJump,$Clip:$Jease$.$OutQuad},$Round:{$Left:0.8,$Top:2.5}}
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        });
    </script>
    
</body>

</html>