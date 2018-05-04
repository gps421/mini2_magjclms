<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myProfileForm.css">
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- <link -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
</head>
<body>

<!-- profile card -->
<div class="card">
  <img src="${pageContext.request.contextPath}/img/harryprofile.jpg" style="width:290px;">
  <h1>${student.name}이름</h1> <!-- student table에서 이름 불러오기 -->
  <p class="year">${student.year}학년</p>
  <p class="dormitory">${student.dormitory}그리핀도르</p>
  <p class="crest">
  	<img src="${pageContext.request.contextPath}/img/gryffcrest.png" alt="crest"
		style="width: 90px; height: 90px;">
  </p>
   <p></p>
</div>

<!-- profile -->
	<div class="profile">
		<div class="container" id="con">
			<div class="row" id="rw">
				<div class="col-md-10 ">
					<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/mypage/myProfileUpdate">
						<fieldset>

							<!-- Form Name -->
							<legend>Edit Profile</legend>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label" for="Name (Full name)">Name
									(Full name)</label>
								<div class="col-md-4">
									<div class="input-group">
										<input id="Name (Full name)" name="Name (Full name)"
											type="text" placeholder="Name (Full name)"
											class="form-control">
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Date Of Birth">Date
									Of Birth</label>
								<div class="col-md-4">

									<div class="input-group">
										<input id="dob" name="Date Of Birth" type="text"
											placeholder="Date Of Birth" class="form-control input-md">
									</div>


								</div>
							</div>

							<!-- Multiple Radios (inline) -->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Gender">Gender</label>
								<div class="col-md-4">
									<label class="radio-inline" for="Gender-0"> <input
										type="radio" name="Gender" id="Gender-0" value="1"
										checked="checked"> Male
									</label> <label class="radio-inline" for="Gender-1"> <input
										type="radio" name="Gender" id="Gender-1" value="2">
										Female
									</label> <label class="radio-inline" for="Gender-2"> <input
										type="radio" name="Gender" id="Gender-2" value="3">
										Other
										</label>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label col-xs-12"
									for="Permanent Address">Permanent Address</label>
								<div class="col-md-2  col-xs-4">
<!-- 									<input id="Permanent Address" name="Permanent Address" -->
<!-- 										type="text" placeholder="District" -->
<!-- 										class="form-control input-md "> -->
										
									<textarea id="Permanent Address" name="Permanent Address" rows="2" style="resize:none; width:500px;"
									class="form-control input-md "></textarea>	
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Email Address">Phone
									No</label>
								<div class="col-md-4">
									<div class="input-group">
										<input id="phoneno" name="phoneno" type="text"
											placeholder="Phone No" class="form-control input-md">
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="Email Address">Email
									Address</label>
								<div class="col-md-4">
									<div class="input-group">
										<input id="Email Address" name="Email Address" type="text"
											placeholder="Email Address" class="form-control input-md">
									</div>

								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label"></label>
								<div class="col-md-4">
									<button class="btn btn-success"><span
										class="glyphicon glyphicon-thumbs-up"></span> Submit</button> 
<!-- 										<a href="#" class="btn btn-danger" value=""><span -->
<!-- 										class="glyphicon glyphicon-remove-sign"></span> Clear</a> -->
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>