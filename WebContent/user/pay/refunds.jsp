<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 입금신청</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.2.min.js"
	type="application/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<style>
.container {
	width: 90%;
}
</style>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
<noscript>
	<style>
.noscriptmsg {
	margin: auto;
	margin-top: 200px;
	text-align: center
}
</style>
	<div class="noscriptmsg">
		이 사이트의 기능을 모두 활용하기 위해서는 자바스크립트를 활성화 시킬 필요가 있습니다. <br> <a
			href="http://www.enable-javascript.com/ko/" target="_blank">
			브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
	</div>
</noscript>
<body onresize="parent.resizeTo(800,900)" onload="parent.resizeTo(800,900)">
	<div class="pagecontainer">
		<nav class="navbar navbar-light bg-light">
			<a class="navbar-brand" href="#"></a>
			<button id="close" class="btn btn-sm btn-outline-secondary border-0"
				type="button">
				<i class="material-icons"> close</i>
			</button>
		</nav>

		<div class="container-bg">
		 <form id="frm" action="refundsCheck.pay" method="post">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2></h2>
						<h3 class="text-center">입금신청</h3>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>현재 포인트</h6>
						<div class="input-group mb-3">
							<input id="orginalPoint" type="text" class="form-control"
								readonly="readonly" value="${point}">
							<div class="input-group-append">
								<span id="removeMoney" class="input-group-text"> P </span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>입급 신청 포인트</h6>
						<div class="input-group mb-3">
						<!--  <form id="frm" action="refundsCheck.pay" method="post">-->
							<input id="inputPoint" name="inputPoint" type="text" class="form-control">
						<!-- -->
							<div class="input-group-append">
								<span id="removePoint" class="input-group-text"> <i
									class="material-icons"> close</i></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<p>
							<span class="text-left" data-toggle="tooltip"
								data-placement="bottom"
								title="충전 단위는 1,000원 단위입니다. &#10;&#13; 1회 최대 충전금액은 100만원입니다.">
								<i class="material-icons">help_outline</i> 50,000 포인트부터 입금이
								가능합니다.
							</span>
						</p>
					</div>
				</div>
				<div class="row">
					<div id="addMoney" class="col">
						<div class="card text-center">
							<div class="card-body">
								<button type="button" onclick="fullMoney(${point})"
									class="btn btn-outline-primary addMoney">전체입금</button>
								<button type="button" onclick="addMoney(1000)"
									class="btn btn-outline-primary addMoney">+1,000 P</button>
								<button type="button" onclick="addMoney(3000)"
									class="btn btn-outline-primary addMoney">+3,000 P</button>
								<button type="button" onclick="addMoney(5000)"
									class="btn btn-outline-primary addMoney">+5,000 P</button>
								<button type="button" onclick="addMoney(10000)"
									class="btn btn-outline-primary addMoney">+10,000 P</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row pt-5">
					<div class="col">
						<h6>계좌 선택</h6>
						<div class="form-group">
							<label for="exampleFormControlSelect1">입금 은행을 선택해주세요.</label> <select
								class="form-control" id="exampleFormControlSelect1">
								<option>KEB하나은행</option>
								<option>SC제일은행</option>
								<option>국민은행</option>
								<option>신한은행</option>
								<option>외환은행</option>
								<option>우리은행</option>
								<option>한국시티은행</option>
								<option>BNK경남은행</option>
								<option>광주은행</option>
								<option>DGB대구은행</option>
								<option>BNK부산은행</option>
								<option>전북은행</option>
								<option>제주은행</option>
								<option>기업은행</option>
								<option>농협</option>
								<option>새마을금고</option>

							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="input-group mb-3">
							<input id="inputAccount" type="text" class="form-control"
								placeholder=" - 없이 입력(계좌번호)">
							<div class="input-group-append">
								<span id="removeAccount" class="input-group-text"> <i
									class="material-icons"> close</i></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center pt-5">
					<div class="col">
						<button id="pay" type="button" class="btn btn-primary btn-lg">입금 신청</button>
					</div>
				</div>
				<div class="row pt-5">
					<div class="col">
						<div class="accordion" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingOne">
									<h2 class="">
										<button class="btn btn-link" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">유의사항</button>
									</h2>
								</div>
								<div id="collapseOne" class="collapse hiden"
									aria-labelledby="headingOne" data-parent="#accordionExample">
									<div class="card-body">
										<ul class="list-group list-group-flush">
											<li class="list-group-item">보유한 포인트를 현금으로 받으실 수 있습니다.</li>
											<li class="list-group-item">1000포인트 이상 1000포인트 단위로 입금이
												가능합니다.</li>
											<li class="list-group-item">365일 00:10 ~ 23:50 전환 가능
												합니다.</li>
											<li class="list-group-item">단, 시스템 정비 시간은(23:50 ~ 00:10)
												서비스 이용불가</li>
											<li class="list-group-item">50,000 포인트 이상 보유시 1 포인트 단위로
												입금이 가능합니다.</li>
											<li class="list-group-item">개인의 실명이름 외에 법인사업자 또는 개인사업자의
												상호명, 동호회와 같은 모임명칭 등 기재사항이 등재되어 있는 계좌에 대해 입금이 제한될 수 있습니다.</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			 </form>
		</div>
	</div>
	<script type="text/javascript">
		$("#close").on("click", function() {
			if (confirm("결제를 취소하시겠습니까? 입력된 내용이 초기화됩니다.")) {
				window.close();
			}
		})

		function addMoney(money) {
			var input = $("#inputPoint").val();
			if (input.length == 0) {
				input = 0;
			}

			if (input < ${point}) {
				var result = parseInt(input) + parseInt(money);
				$("#inputPoint").val(result);
			}
		}
		
		function fullMoney(money){
			$("#inputPoint").val(money);
		}

		/*
		 * path : 전송 URL
		 * params : 전송 데이터 {'q':'a','s':'b','c':'d'...}으로 묶어서 배열 입력
		 * method : 전송 방식(생략가능)
		 */
		function post_to_url(path, params, method) {
			method = method || "post"; // Set method to post by default, if not specified.
			// The rest of this code assumes you are not using a library.
			// It can be made less wordy if you use one.
			var form = document.createElement("form");
			form.setAttribute("method", method);
			form.setAttribute("action", path);
			for ( var key in params) {
				var hiddenField = document.createElement("input");
				hiddenField.setAttribute("type", "hidden");
				hiddenField.setAttribute("name", key);
				hiddenField.setAttribute("value", params[key]);
				form.appendChild(hiddenField);
			}
			document.body.appendChild(form);
			form.submit();
		}

		$("#inputPoint").on("change", function() {
			//충전 금액 입력 
			var regex = /^[1-9]{1,}0{3,7}/;
			var input = $("#inputPoint").val();
			var result = regex.exec(input);
			console.log(input);
			console.log(result);
			console.log(result != null);

			console.log(input % 10 == 0);

			if (result != null && input % 10 == 0) {
				if (input.length > 8) {
					$("#inputPoint").val("");
				}

			} else {
				$("#inputPoint").val("");
			}
		})

		$("#removePoint").on("click", function() {
			//충전 금액 지우기
			$("#inputPoint").val("");
		})
		
		$("#removeAccount").on("click", function() {
			//충전 금액 지우기
			$("#inputAccount").val("");
		})
		

		$("#pay").on("click", function() {
			//실제 복사하여 사용시에는 모든 주석을 지운 후 사용하세요
			if ($("#inputPoint").val().length < 1) {
				alert("충전 금액을 입력하세요.")
			} else {
				$("#frm").submit();
			}

		})
	</script>
</body>
</html>