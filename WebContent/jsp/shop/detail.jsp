<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html> 
<html>
<head>
  <meta charset='utf-8'>
  <title>상세정보</title>
  
  <style type="text/css">
	.container {
		width: 740px; 
		min-height: 600px;
		margin: 0 auto;
		background: rgb(237, 228, 177);
		
	}
	.titleheader {
		width: 740px;
		height: 55px;
		border: 1px  tomato;
		margin: 0 auto;
		font-size: 1em;
		background: rgb(232, 134, 48); 
	}
	
	.header {
		width: 720px;
		margin: 5px;
	}

	.containerSub1 {
		width: 720px; 
		min-height: 350px;
		margin: 0 auto;
		background: rgb(237, 228, 177);
		
	}
	
	.pic2 {
		width: 40%; 
		height: 300px;
		border: 0.5px  blue;
		line-height: 300px;
		margin: 5px;
		float: left;
	}
	.picheader2 {
		width: 40%; 
		height: 300px;
		border: 2px  blue;
		margin: 5px;
		float: left;
	}
	
	.content {
		width: 600px;
		border: 5px tomato;
		margin: 0 auto;
		float: left;
	}
	
	.footer {
	 	clear: both; 
		width: 720px;

		border: 1px tomato;
		margin: 5px;
		margin: 0 auto; 
	}
	.footer {}
	
	table.header {		
		width: 80%; 
		margin: 0 auto;
	}

	table.header  th {
		height: 10px;
		background: #B3D4F5;
		color: #444B52;
		letter-spacing: 2px;
		border: 1px solid blue;
	}
	
	table.header  td {
		padding-left: 2px;
	}
	
	.productDetailPic {
		clear: both; 
		padding-left: 120px;
	}

</style>
</head>
<body>

    <div class="titleheader"><p class="title"><h1>상품정보</h1></p></div> 
    <div class="container">
		<div class="header">

			<table class="header">
				<tr><td height=20></td></tr>

			</table>
		</div>
		
	<div class="containerSub1">
		<div class="pic2">
			<img  width='300' height='300' src='${goods.goodsPicPath}' align="center" onclick="openPop()"></img>
			
		</div>
		
		<div class="picheader2">
			<h5>1-2 상품상세 정보</h5>
			<h3>${goods.name} 500g</h3>

			<table>
				<tr><td height=20></td></tr>
				<tr>
					<td style="font-size:1em;">상품가격 :</td>
					<td style="font-size:1em;">${goods.price}원</td>
				</tr>
				<tr>
					<td>할인가격 :</td>
					<td>${goods.salePrice}원</td>
				</tr>
				<tr>
					<td>제품코드 :</td>
					<td>${goods.code}</td>
				</tr>
				<tr>
					<td>구매수량  :</td>
					<td> 2 개</td>
				</tr>
				<tr>
					<td>고객선호도  :</td>
					<td> **</td>
				</tr>
				<tr><td height=20></td></tr>

				<tr><td height=20></td></tr>
				<tr><td style="width=50%; height=10px;"></td></tr>
				<tr>

				</tr>
			</table>
		</div>
	</div>

		<div id='productDetailPic' class="productDetailPic">
			<h5 onclick="openPop()">[상세화면]</h5>
		</div>
				
		<div class="content">
			<table class="contentheader">
				<tr><td height=50></td></tr>

			</table>
		</div>
		
		<div class="footer" style="height: 38px;">
			<form name="buy1" method="post" action=" ">
<!-- 				<span id="loSpan1"> <input type="button" value="장바구니" onclick="location.href='detail?no=106'" 
					style="background: rgb(35, 227, 237); font-size: 2.5em; color: rgb(11, 1, 71); margin: 0 auto;" />
 -->
 				<span id="loSpan1"> <input type="button" value="장바구니" onclick="location.href='cartwrite?no=${goods.goodsNo}&count=2'"
					style="background: rgb(35, 227, 237); font-size: 2.5em; color: rgb(11, 1, 71); margin: 0 auto;" />
 				</span> <span id="loSpan2"> <input type="button" value="주문결제" onclick="location.href='/mini2_magiclms/shop/list'" 
					style="background: rgb(35, 227, 237); font-size: 2.5em; color: rgb(11, 1, 71); margin: 0 auto;" />
				</span>
			</form>
		</div>

	</div>

	<script>
        function openPop() {
			// window.open("http://www.naver.com", "pop1", "width=400,height=300");
			// window.open("f0.jpg", "pop1", "width=600,height=400");
			console.log(screen.width, screen.height)
            var left = (screen.width - 600) / 2;
            var top = (screen.height - 600) / 2;
            window.open(
                    "${goods.goodsPicPath}", "", 
                    `width=600, height=600, left=${left},top=${top}`
            );

        }
	</script>




	<hr />
	<hr />
	<hr />
	번호 : ${board.no} <br>
	제목 : ${board.title} <br>
  	글쓴이 : <c:out value="${board.writer}" /><br>
	내용 :${board.content} <br>
	등록일 : <fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/> <br>
	조회수 : ${board.viewCnt} <br>
	<hr />
	<a href='updateForm?no=${board.no}'>수정</a>
	<a href='delete?no=${board.no}'>삭제</a>
	<a href='list'>목록</a>
	<hr />
	 
	<div>
		<form method="post" action="commentRegist">
			<input type="hidden" name="no" value="${board.no}" />	
			<table width="70%">
			<tr>
				<td><input type="text" name="writer"/>
				</td>
				<td><textarea name="content" rows="5" cols="70" size="30"></textarea>
				</td>
				<td><button type="submit">댓글등록</button>
				</td>
			</tr>
			</table> 
		</form>
	</div>

	<table width='80%' border='1'>
		<c:forEach var="comment" items="${commentList}">
			<tr>
				<td><c:out value="${comment.writer}" /></td>
				<td>
					<c:out value="${comment.content}" /></td>
				<td><fmt:formatDate var="regDate" value="${comment.regDate}" 
				                    pattern="yyyy-MM-dd HH:mm:ss" />
				    <c:out value="${regDate}" />
				</td>
				<td>
				 	<a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
				  	<a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
				</td>
			</tr>		
		</c:forEach>
	</table>
	<c:if test="${empty commentList}">
		 <tr>
		    <td colspan='4'>댓글이 존재하지 않습니다.</td>
		 </tr>
	</c:if>
	
		
		<form action="commentUpdate" method="post">
			<input type="hidden" name="no" value="${board.no}" />
			<input type="hidden" name="commentNo" value="${commentNo}" />
		<div id="commentList">
			
		  <table width='80%' border='1'>
		  <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
					  </td>
					  <td colspan="2">
					  	  <input type="submit" value="수정" />	
					  </td>
					 </tr>
			 	</c:when>
			 	<c:otherwise>
					<tr>
					  <td><c:out value="${comment.writer}" /></td>
					  <td>
					  		<c:out value="${comment.content}" /></td>
					  <td><fmt:formatDate var="regDate" value="${comment.regDate}" 
					                      pattern="yyyy-MM-dd HH:mm:ss" />
					      <c:out value="${regDate}" />
					  </td>
					  <td>
					  	  <a href="commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
					  	  <a href="detail?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>	
					  </td>
					 </tr>
			 	</c:otherwise>
			 </c:choose>	
			 </c:forEach>
			 <c:if test="${empty commentList}">
			 <tr>
			    <td colspan='4'>댓글이 존재하지 않습니다.</td>
			 </tr>
		 	</c:if>
		 </table>
		</div>
		</form>
	
		
</body>
</html>




