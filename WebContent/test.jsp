<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>My Challenge</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Calistoga&display=swap"
	rel="stylesheet">
<style>
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
	position: absolute;
	top: 0px;
	margin: 0px;
	overflow: hidden;
	padding: 0px;
	width: 60%;
	left: 20%;
	background-color: #FFFFFF90;
	font-family: fantasy;
	font-size: 20px;
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
	right: 0px;
	width: 50%;
}

.navi-title {
	list-style-type: none;
	width: 50%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item {
	list-style-type: none;
	width: 30%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item2 {
	list-style-type: none;
	width: 25%;
	line-height: 30px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item3 {
	list-style-type: none;
	width: 25%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item2>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item3>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
	font-weight: bold;
}

.navi-title>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item>a:hover {
	background-color: orange;
}

.container {
	background-color: #ededed;
	width: 60%;
	margin: auto;
	margin-top: 0px;
}

.onefloor {
	border-bottom: 3px solid #7019FF;
	border-top: 3px solid #7019FF;
	border-radius: 3px;
}

.twofloor {
	border-bottom: 3px solid #7019FF;
	border-radius: 3px;
}

.threefloor {
	position: relative;
	top: 150px;
	background-color: #edceed;
	text-align: center;
	height: 700px;
}

.fourthfloor {
	position: relative;
	top: 300px;
	z-index:-10;
}

.fivefloor {
	border-top: 3px solid #7019FF;
	border-radius: 3px;
	width: 100%;
	background-color: gainsboro;
}

.progress {
	display: inline-block;
	width: 90%;
	height: 10%;
}

.category {
	position: fixed;
	top: 80px;
	right: 3%;
	width: 16%;
	height: 500px;
	border: 3px solid #7019FF;
}

#enjoybtn {
	width: 80%;
	height: 50px;
	font-size: 20px;
	position: relative;
	top: 430px;
}

.submenu {
	font-family: 'Calistoga', cursive;
	color: #7019FF;
}

.sidebar {
	height: 51px;
	font-family: 'Calistoga', cursive;
	text-align: center;
}

.sidebar>a {
	height: 100%;
	color: #FFFFFF;
}

.menubtn {
	width: 24%;
	height: 100%;
	font-size: 20px;
	background: none;
	padding: 0;
	margin: 0;
	border: 0px solid black;
}

.fourthfloor {
	height: 500px;
}

.fifthfloor {
	height: 500px;
}

.seventhfloor {
	height: 500px;
}

.eighthfloor {
	height: 500px;
}

td {
	border: 1px solid black;
	width: 200px;
	height: 200px;
}

img {
	width: 100%;
	hegiht: 100%;
}

.confirmDiv {
	padding-top: 30px;
}
</style>

</head>
<body>

	<div class="container">
		<br> <br> <br>
		<div class="twofloor">
			<div class="bd-example">
				<img src="${pageContext.request.contextPath}/files/${dto.file_path}">

				<div>���� ${dto.title}</div>
			</div>

		</div>

		<div class="threefloor">
			<br> <br> <br> <br>
			<h1>����ī��߱� ���� ���� �ȳ�����</h1>
			<br> <br> <br> 1. ���������� ������ �̹����� ������ ��ü�Ϸ� �� ���<br>
			2. ��ü�� �Ϻΰ� ���;� �� �� ������ �ƴ� ���<br> 3. �ѹ��� ������ 2ȸ �����ϴ� ���(��. ��������
			�ķ� �� ç������ 2ȸ �����ϴ� ���)<br> 4. �̸� �س��� �������� ������ ��� ���<br> 5. ��
			���� ������ �� ���� ���� �ٸ� ç������ �����ϴ� ���<br> (��. �߰����� �����带 ������, �߰����� �Ա�
			ç������ ������ �Ա� ç������ �� �� �����ϴ� ���)<br> 6. �̸� �س��� �������� ���߿� ��� ��� <br>
			(��. �� �� �� ���� ��� ��ȹ �� �̸� ��ΰ�, �㿡�� ������ ��� ���)<br> 7. �ټ��� ȸ����κ���
			���࿩�θ� �ǽɹ޾Ҵµ�, ȸ�簡 �� �ǽ��� ���� �����ϴٰ� �Ǵ��� ���<br> 8. ���������� ���������� ������ ��
			���������� ��ƴ�� ��ȴٰ� ȸ�簡 �Ǵ��ϴ� ���<br> 9. �� ����� �� �������� �����ϰų�, ������ ������ ����
			�̿��� ���ε� �����ϴ� ���<br> (��. �Ƹ޸�ī�� �� ���� �ΰ�, �� ����� ī�信�� �Ƹ޸�ī�� �ֹ��ϱ�
			ç������ ������ ���)<br> <br> <br> <br>

		</div>


		<div class="fourthfloor">
			<div class="middlethird" id="summary">����${dto.content}</div>

		</div>





		<form action="${pageContext.request.contextPath}/succesCheck.adboard"
			id="frm">
			<input type="hidden" name="seq" value="${dto.seq}">
			<c:forEach items="${recordList}" var="record">
				<input type="checkbox" class="succesCheck" name="succesCheck"
					value="${record.member_id}"> ${record.member_id}
		<table>

					<tr>
						<td><img></td>
						<td><img></td>
						<td><img></td>
						<td><img></td>
						<td><img></td>
					</tr>
					<tr>
						<td><img></td>
						<td><img></td>
						<td><img></td>
						<td><img></td>
						<td><img></td>
					</tr>
				</table>
			</c:forEach>
		</form>
		
		<input type="button" value="����" id="succesBtn"><br>
<input type="button" value="ç���� ����" id="modifyBtn"><br>
<input type="button" value="ç���� ����" id="deleteBtn">

		<script>
			$("#succesBtn").on("click", function() {
				var result = confirm("���� �ѱ��...?");

				if (result) {
					$("#frm").submit();
				}
			})
			$("#modifyBtn").on("click", function() {
				var result = confirm("ç���� ������ �����Ͻðڽ��ϱ�?");

				if (result) {
					location.href="modify.adboard?seq=${dto.seq}";
				}
			})
			$("#deleteBtn").on("click", function() {
				var result = confirm("ç������ �����Ͻðڽ��ϱ�?");

				if (result) {
					location.href="delete.adboard?seq=${dto.seq}";
				}
			})
		</script>
</body>
</html>