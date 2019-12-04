<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<!-- Font Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/user/login/colorlib-regform-7/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/user/login/colorlib-regform-7/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link
	href="https://fonts.googleapis.com/css?family=Calistoga&display=swap"
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

body {
	margin: 0px;
	padding: 0px;
	background-color: #FFFFFF;
}

.lastbar {
	margin: 0px;
	overflow: hidden;
	padding: 0px;
}

.navi {
	position: fixed;
	top: 0px;
	margin: 0px;
	overflow: hidden;
	padding: 0px;
	width: 900px;
	left: 26.4%;
	font-family: fantasy;
	font-size: 20px;
	border-bottom: 3px solid black;
}

.title {
	margin: 0px;
	padding: 0px;
	width: 50%;
}

.itemList {
	position: absolute;
	margin: 0px;
	padding: 0px;
	right: 15px;
}

.navi-title {
	list-style-type: none;
	width: 50%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: black;
}

.navi-item {
	list-style-type: none;
	line-height: 72px;
	float: left;
	color: black;
	position: absolute;
	right: 20px;
}

.navi-item2 {
	list-style-type: none;
	width: 25%;
	line-height: 30px;
	float: left;
	text-align: center;
	color: black;
}

.navi-item3 {
	list-style-type: none;
	width: 25%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: black;
}

.navi-item>a {
	text-decoration: none;
	color: black;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item2>a {
	text-decoration: none;
	color: black;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item3>a {
	text-decoration: none;
	color: black;
	width: 100%;
	height: 100%;
	display: block;
	font-weight: bold;
}

.navi-title>a {
	text-decoration: none;
	color: black;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item>a:hover {
	background-color: orange;
}

.onefloor {
	border-top: 3px solid black;
	border-radius: 3px;
}

.labelTag {
	padding-left: 7px
}

.fourthfloor {
	height: 700px;
}

#confirm {
	background-color: black;
	color: white;
}

#confirm:hover {
	background-color: #2c303b;
	color: white;
}

#reset {
	background-color: black;
	border: 1px solid black;
	color: white;
}
</style>

</head>
<body>
	<div>
		<img
			src="${pageContext.request.contextPath }/resources/img/backgroundMain.jpg"
			class="back"
			style="position: fixed; z-index: -500; filter: blur(4px);">
	</div>
	<div class="container" style="width: 900px;">

		<br> <br> <br>
		<div class="twofloor"></div>

		<div class="fourthfloor">
			<form action="update.mem" method="post" id="signfrm">
				<div class="main" style="padding: 33px 0px 0px 0px;">
					<!-- Sign up form -->
					<section class="signup" style="margin: 0px">
						<div class="container">
							<div class="signup-content">
								<div class="signup-form">
									<h2 class="form-title" style="font-weight: bold;">Information
										modification</h2>
									<div class="form-group">
										<label for="pass" class="labelTag"><i
											class="zmdi zmdi-lock"></i></label> <input type="password" name="pw1"
											id="pw1" placeholder="Password" /> <span id="pw1result"></span>
									</div>
									<div class="form-group">
										<label for="re-pass" class="labelTag"><i
											class="zmdi zmdi-lock-outline"></i></label> <input type="password"
											name="pw" id="pw2" placeholder="Repeat your password" /> <span
											id="pw2result"></span>
									</div>
									<div class="form-group">
										<label for="name" class="labelTag"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="text" name="name" id="name" placeholder="Your Name" />
										<span id="nameresult"></span>
									</div>
									<div class="form-group">
										<label for="re-pass" class="labelTag"><i
											class="zmdi zmdi-lock-outline"></i></label> <input type="text"
											name="phone" id="phone" placeholder="010-1234-5678" /> <span
											id="phoneresult"></span>
									</div>

									<div class="form-group">
										<label for="email" class="labelTag"><i
											class="zmdi zmdi-email"></i></label> <input type="email" name="email"
											id="email" placeholder="abc123@def.com" /> <span
											id="emailresult"></span>
									</div>
									<div class="form-group form-button">
										<input type="submit" name="confirm" id="confirm"
											class="form-submit" value="modify" />
									</div>
								</div>
								<div class="signup-image">
									<figure>
										<img
											src="${pageContext.request.contextPath }/resources/img/flower.png"
											alt="sing up image" style="margin-top: 10px; height: 400px;">
									</figure>
								</div>
							</div>
						</div>
					</section>
				</div>
			</form>
		</div>
		<div class="bottom"></div>
	</div>
	<div class="fivefloor"
		style="width: 900px; background-color: gainsboro; margin: auto">
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
			상호 : (주)미완성자들 | 주소 : 서울특별시 종로구 평창동 486 -20 | 사업자등록번호 : 234-88-00720 |
			대표자명 : 김세원<br> Copyright ⓒ2019 Miwansung inc, ltd. All rights
			reserved
		</div>
		<br>
		<div class="lastbar3" style="text-align: center">
			<a href="#"><img
				src="${pageContext.request.contextPath }/resources/img/icon1.png"
				class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
			<a href="#"><img
				src="${pageContext.request.contextPath }/resources/img/icon2.png"
				class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
			<a href="#"><img
				src="${pageContext.request.contextPath }/resources/img/icon3.png"
				class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
		</div>
		<br>
	</div>
	<ul class="navi">
		<ul class="title">
			<li class="navi-title"><a
				href="${pageContext.request.contextPath }/index.jsp"
				style="font-family: 'Rock Salt', cursive; font-size: 20px;">Don't
					Give Up</a></li>
		</ul>
		<!--       <ul class="itemList"> -->
		<li class="navi-item" style="font-family: 양진체; font-weight: bold;">당신의
			오늘을 배팅하라!</li>
	</ul>
	</ul>

	<script>
      var ctx = document.getElementById('myChart').getContext('2d');
      var chart = new Chart(ctx, {
         // The type of chart we want to create
         type : 'line',

         // The data for our dataset
         data : {
            labels : [ 'January', 'February', 'March', 'April', 'May',
                  'June', 'July' ],
            datasets : [ {
               label : 'My First dataset',
               backgroundColor : 'rgb(255, 99, 132)',
               borderColor : 'rgb(255, 99, 132)',
               data : [ 0, 10, 5, 2, 20, 30, 45 ]
            } ]
         },

         // Configuration options go here
         options : {}
      });
   </script>
	<script>
      $("#pw1").on("focusout", function() {
         var regex = /^[a-z0-9]{8,}$/;
         var data = $("#pw1").val();
         var result = regex.exec(data);
         if (result != null) {
            $("#pw1result").html("✔");
            $("#pw1result").css("color", "blue");
            $("#pw1result").css("text-align", "center");
         } else {
            $("#pw1result").html("❌");
            $("#pw1").val("");
            $("#pw1result").css("color", "red");
            $("#pw1result").css("text-align", "center");
         }
      })

      $("#pw2").on("focusout", function() {
         if ($("#pw1").val() == "") {
            $("#pw1result").html("❌");
            $("#pw1result").css("color", "red");
            $("#pw1result").css("text-align", "center");
         }
         if ($("#pw1").val() == $("#pw2").val()) {
            $("#pw2result").html("✔");
            $("#pw2result").css("text-align", "center");
         } else {
            $("#pw2result").html("❌");
            $("#pw2").val("");
            $("#pw2result").css("text-align", "center");
         }
      })

      $("#name").on("focusout", function() {
         var regex = /^[가-힇]{2,4}$/;
         var data = $("#name").val();
         var result = regex.exec(data);
         if (result != null) {
            $("#nameresult").html("✔");
            $("#nameresult").css("color", "blue");
            $("#nameresult").css("text-align", "center");
         } else {
            $("#nameresult").html("❌");
            $("#name").val("");
            $("#nameresult").css("color", "red");
            $("#nameresult").css("text-align", "center");
         }
      })

      $("#phone").on("focusout", function() {
         var regex = /^01[0-1]-[0-9]{3,4}-[0-9]{4}$/;
         var data = $("#phone").val();
         var result = regex.exec(data);
         if (result != null) {
            $("#phoneresult").html("✔");
            $("#phoneresult").css("color", "blue");
            $("#phoneresult").css("text-align", "center");
         } else {
            $("#phoneresult").html("❌");
            $("#phone").val("");
            $("#phoneresult").css("color", "red");
            $("#phoneresult").css("text-align", "center");
         }
      })

      $("#email").on("focusout", function() {
         var regex = /^[a-z0-9]*@[a-z]{3,}\.[a-z]{2,4}$/;
         var data = $("#email").val();
         var result = regex.exec(data);
         if (result != null) {
            $("#emailresult").html("✔");
            $("#emailresult").css("color", "blue");
            $("#emailresult").css("text-align", "center");
         } else {
            $("#emailresult").html("❌");
            $("#email").val("");
            $("#emailresult").css("color", "red");
            $("#emailresult").css("text-align", "center");
         }
      })

      $("#confirm").on(
            "click",
            function() {
               if ($("#pw1").val() == ""
                     || $("#pw2").val() == "" || $("#name").val() == ""
                     || $("#phone").val() == ""
                     || $("#email").val() == "") {
                  alert("양식을 확인해주세요");
               } else {
                  $("#signfrm").submit();
               }
            })
   </script>
	<script>
      function sample6_execDaumPostcode() {
         new daum.Postcode(
               {
                  oncomplete : function(data) {

                     var addr = '';
                     var extraAddr = '';

                     if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                     } else {
                        addr = data.jibunAddress;
                     }

                     if (data.userSelectedType === 'R') {

                        if (data.bname !== ''
                              && /[동|로|가]$/g.test(data.bname)) {
                           extraAddr += data.bname;
                        }

                        if (data.buildingName !== ''
                              && data.apartment === 'Y') {
                           extraAddr += (extraAddr !== '' ? ', '
                                 + data.buildingName
                                 : data.buildingName);
                        }

                        if (extraAddr !== '') {
                           extraAddr = ' (' + extraAddr + ')';
                        }
                     }

                     document.getElementById('sample6_postcode').value = data.zonecode;
                     document.getElementById("sample6_address").value = addr;
                     document.getElementById("sample6_detailAddress")
                           .focus();
                  }
               }).open();
      }
   </script>
</body>
</html>