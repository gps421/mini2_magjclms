<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/content.css" >
<script src="${pageContext.request.contextPath}/js/content.js"></script>
<!-- <link href='https://fonts.googleapis.com/css?family=Englebert' rel='stylesheet' type='text/css'> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"> -->
<!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->
</head>
<body>
	<div class="header">
		<ul class="nav">
			<li><a href="/" id="view-top-shelf">Shelf 1</a></li>
			<li><a href="/" id="view-middle-shelf">Shelf 2</a></li>
<!-- 			<li><a href="/" id="view-bottom-shelf">Shelf 3</a></li> -->
		</ul>
	</div>
	<div class="scene">
		<!-- camera -->
		<div class="roll-camera">
			<div class="move-camera">
				<div class="wallpaper"></div>
				<!-- shelf -->
				<div class="shelf top">
					<div class="face top"></div>
					<div class="face front">

			  <a href="#" data-img-url="../photos/1.jpg" class="photocard">
                <img src="https://raw.github.com/peterwestendorp/shelves/master/photos/1.jpg" alt="">
              </a>
              <a href="#" class="photocard">
                <img src="https://raw.github.com/peterwestendorp/shelves/master/photos/2.jpg" alt="">
              </a>
              <a href="#" class="photocard">
                <img src="https://raw.github.com/peterwestendorp/shelves/master/photos/3.jpg" alt="">
              </a>

					</div>
					<div class="face back"></div>
					<div class="face left"></div>
					<div class="face bottom"></div>
				</div>
				<!-- /shelf -->

				<!-- shelf -->
				<div class="shelf middle">
					<div class="face top"></div>
					<div class="face front">

						<a href="#" data-img-url="../photos/1.jpg" class="photocard">
							<img
							src="https://raw.github.com/peterwestendorp/shelves/master/photos/4.jpg"
							alt="">
						</a> <a href="#" class="photocard"> <img
							src="https://raw.github.com/peterwestendorp/shelves/master/photos/5.jpg"
							alt="">
						</a> <a href="#" class="photocard"> <img
							src="https://raw.github.com/peterwestendorp/shelves/master/photos/6.jpg"
							alt="">
						</a>

					</div>
					<div class="face back"></div>
					<div class="face left"></div>
					<div class="face bottom"></div>
				</div>
				<!-- /shelf -->

				<!-- shelf -->
<!-- 				<div class="shelf bottom"> -->
<!-- 					<div class="face top"></div> -->
<!-- 					<div class="face front"> -->

<!-- 						<a href="#" data-img-url="../photos/1.jpg" class="photocard"> -->
<!-- 							<img -->
<!-- 							src="https://raw.github.com/peterwestendorp/shelves/master/photos/7.jpg" -->
<!-- 							alt=""> -->
<!-- 						</a> <a href="#" class="photocard"> <img -->
<!-- 							src="https://raw.github.com/peterwestendorp/shelves/master/photos/8.jpg" -->
<!-- 							alt=""> -->
<!-- 						</a> <a href="#" class="photocard"> <img -->
<!-- 							src="https://raw.github.com/peterwestendorp/shelves/master/photos/9.jpg" -->
<!-- 							alt=""> -->
<!-- 						</a> -->

<!-- 					</div> -->
<!-- 					<div class="face back"></div> -->
<!-- 					<div class="face left"></div> -->
<!-- 					<div class="face bottom"></div> -->
<!-- 				</div> -->
				<!-- /shelf -->
			</div>
			<!-- /camera -->
		</div>
	</div>
</body>
</html>
