<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Bangers|Coming+Soon|Gloria+Hallelujah|Handlee|Rock+Salt&display=swap"
	rel="stylesheet">
<style>
@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'BMEULJIRO';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/BMEULJIRO.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
<title>마이페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>



<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Calistoga&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/MyPageStyle.css">



</head>
<body>
	<div>
		<img
			src="${pageContext.request.contextPath }/resources/img/backgroundMain.jpg"
			class="back"
			style="position: fixed; z-index: -500; filter: blur(4px);">
	</div>

	<div class="container" style="background-color: #FFFFFF">
		<br> <br> <br>

		<div class="onefloor" style="text-align: center;">
			<br>
			<div style="text-align: start; margin-left: 5%;">
				<a href="myPageDetailView.mypage?id=${id }" class="submenu"
					style="font-family: 'BMEULJIRO';">My Information</a>
			</div>
			<br> <br>
			<div class="media">
				<img
					src="${pageContext.request.contextPath}/resources/img/profileicon.png"
					class="mr-3" alt="..."
					style="width: 100px; height: 100px; margin-left: 10%;">
				<div class="media-body">
					<br>
					<h5 class="mt-0" style="font-family: 'BMEULJIRO';">${id}님의
						마이페이지입니다.</h5>

				</div>


			</div>

			<br>
			<script>
			console.log(${dto.getPercent()});
			</script>
			<div class="progress">
				<label for="file">나의 경험치 </label> <br> <label>현재 레벨 🔷
					${dto.getLevel()}</label>
				<progress id="file" max="100" value="${dto.getPercent()}"
					style="width: 65%; background-color: purple;">${dto.getPercent()}%</progress>
				<label>다음 레벨 🔶 ${dto.getLevel() +1}</label>

			</div>
			<br> <br>
		</div>

		<div class="twofloor">
			<br> <br>
			<div style="text-align: start; margin-left: 5%;">
				<a href="MyPoint.usboard" class="submenu"
					style="font-family: 'BMEULJIRO';">My Point </a>
			</div>
			<br> <br>
			<h1 style="margin-left: 15%;">My Point is ${dto.point}</h1>
			<br> <br>
		</div>

		<div class="threefloor">
			<br> <br>
			<div style="text-align: start; margin-left: 5%;">
				<a href="#" class="submenu" style="font-family: 'BMEULJIRO';">My
					Challenge</a>
			</div>
			<br> <br>

			<c:choose>
				<c:when test="${giveList.size() eq 0 || giveList eq null}">

					<div
						style="text-align: start; margin-left: 5%; font-weight: 700; font-size: 20px; font-family: 'BMEULJIRO'">기부</div>
					<div class="row" style="width: 100%; margin: auto;">
						<div class="col-12 p-4 m-1"
							style="background: white; width: 100%;">
							<div>존재하는 챌린지가 없습니다.</div>
						</div>
					</div>

				</c:when>
				<c:otherwise>

					<div class="row">
						<div class="col-12"
							style="text-align: start; margin-left: 5%; font-weight: 700; font-size: 20px; font-family: 'BMEULJIRO';">기부</div>

						<c:forEach items="${giveList}" var="dto">

							<div class="col-4">

								<a
									href="${pageContext.request.contextPath}/myBoardDetailView.usboard?challengeSeq=${dto.seq}">
									<div class="card m-3" style="width: 300px; height: 300px;">
										<img
											src="${pageContext.request.contextPath}/files/${dto.file_path}"
											style="width: 100%; height: 200px;" class="card-img-top">
										<div class="card-body">
											<h5 class="card-title">${dto.title }</h5>
											<p class="card-text">참여인원 : ${dto.total_participate }</p>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>

				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${takeList.size() eq 0 || takeList eq null}">
					<div
						style="text-align: start; margin-left: 5%; font-weight: 700; font-size: 20px; font-family: 'BMEULJIRO';">테이크</div>
					<div class="row mb-5" style="width: 100%; margin: auto;">
						<div class="col-12 p-4 m-1"
							style="background: white; width: 100%;">
							<div>존재하는 챌린지가 없습니다.</div>
						</div>

					</div>
				</c:when>
				<c:otherwise>

					<div class="row">
						<div class="col-12"
							style="text-align: start; margin-left: 5%; font-weight: 700; font-size: 20px; font-family: 'BMEULJIRO';">테이크</div>
						<c:forEach items="${takeList}" var="dto">

							<div class="col-4">
								<a
									href="${pageContext.request.contextPath}/myBoardDetailView.usboard?challengeSeq=${dto.seq}">
									<div class="card m-3" style="width: 300px; height: 300px;">

										<img
											src="${pageContext.request.contextPath}/files/${dto.file_path}"
											class="card-img-top" style="width: 100%; height: 200px;">
										<div class="card-body">
											<h5 class="card-title">${dto.title }</h5>
											<p class="card-text">참여인원 : ${dto.total_participate }</p>
										</div>
									</div>
								</a>
							</div>

						</c:forEach>
					</div>
				</c:otherwise>
			</c:choose>

		</div>



		<br>



		<div class="fivefloor" style="background-color: white;">
			<ul class="lastbar">
				<li class="navi-item3"><a href="#">COMPANY</a></li>
				<li class="navi-item3"><a href="#">POLICIES</a></li>
				<li class="navi-item3"><a href="#">SUPPORT</a></li>
				<li class="navi-item3"><a href="#">기업교육</a></li>
				<br>
				<br>
			</ul>
			<ul class="lastbar">
				<li class="navi-item2"><a href="#">블로그</a></li>
				<li class="navi-item2"><a href="#">이용약관</a></li>
				<li class="navi-item2"><a href="#">FAQ</a></li>
				<li class="navi-item2"><a href="#">MIWANSUNG.BIZ</a></li>

			</ul>
			<ul class="lastbar">
				<li class="navi-item2"><a href="#">언론보도</a></li>
				<li class="navi-item2"><a href="#">개인정보취급방침</a></li>
				<li class="navi-item2"><a href="#">미완성센터</a></li>
				<li class="navi-item2"><a href="#"></a></li>
				<br>
				<br>
			</ul>
			<div class="lastbar2" style="text-align: center;">
				상호 : (주)미완성자들 | 주소 : 서울특별시 종로구 평창동 486 -20 | 사업자등록번호 : 234-88-00720
				| 대표자명 : 김세원<br> Copyright ⓒ2019 Miwansung inc, ltd. All rights
				reserved
			</div>
			<br>
			<div class="lastbar3" style="text-align: center">
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/img/icon1.png"
					class="mr-3" alt="..."
					style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/img/icon2.png"
					class="mr-3" alt="..."
					style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/img/icon3.png"
					class="mr-3" alt="..."
					style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
			</div>
			<br>
		</div>
	</div>
	<div class="category" style="background-color: #FFFFFF;">
		<div class="wrapper">
			<br>

			<div class="sidebar">
				<img
					src="${pageContext.request.contextPath }/resources/img/inforcon.png"
					style="widht: 30px; height: 30px;">
			</div>
			<div class="sidebar">
				<a href="myPageDetailView.usboard?id=${id }"
					style="font-family: 양진체; font-weight: bold;">My Information</a>
			</div>
			<div class="sidebar">
				<img
					src="${pageContext.request.contextPath }/resources/img/challcon.png"
					style="widht: 30px; height: 30px;">

			</div>
			<div class="sidebar">
				<a href="#" style="font-family: 양진체; font-weight: bold;">My
					Challenge</a>
			</div>
			<div class="sidebar">
				<img
					src="${pageContext.request.contextPath }/resources/img/cashcon.png"
					style="widht: 30px; height: 30px;">
			</div>
			<div class="sidebar">
				<a href="MyPoint.usboard"
					style="font-family: 양진체; font-weight: bold;">My Point</a>
			</div>
		</div>
	</div>
	<ul class="navi">
		<ul class="title">
			<li class="navi-title"><c:if test="${clickPage == 'take'}">
					<a href="take.challenge"
						style="font-family: 'Rock Salt', cursive; font-size: 20px;">Don't
						Give Up</a></li>
			</c:if>

			<c:if test="${clickPage == 'donation'}">
				<a href="donation.challenge"
					style="font-family: 'Rock Salt', cursive; font-size: 20px;">Don't
					Give Up</a>
				</li>
			</c:if>
		</ul>
		<ul class="itemList">
			<li class="navi-item"></li>
			<li class="navi-item"></li>
			<li class="navi-item"><a href="banner.usboard"
				style="font-family: 양진체; font-weight: bold;">MYPAGE</a></li>
			<li class="navi-item"><a href="logout.mem"
				style="font-family: 양진체; font-weight: bold;">LOGOUT</a></li>
		</ul>
	</ul>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>



</body>
</html>