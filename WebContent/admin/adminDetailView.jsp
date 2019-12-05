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
   <link href="https://fonts.googleapis.com/css?family=Bangers|Coming+Soon|Gloria+Hallelujah|Handlee|Rock+Salt&display=swap" rel="stylesheet">
<style>
@font-face { font-family: '양진체'; src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'BMEULJIRO'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/BMEULJIRO.woff') format('woff'); font-weight: normal; font-style: normal; }
</style>
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
   position: fixed;
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
   right: -250px;
   width: 50%;
}

.navi-title {
   list-style-type: none;
   width: 50%;
   line-height: 72px;
   float: left;
   text-align: center;
   color: #1D1F21;
}

.navi-item {
   list-style-type: none;
   width: 30%;
   line-height: 72px;
   float: left;
   text-align: center;
   color: #1D1F21;
}

.navi-item2 {
   list-style-type: none;
   width: 25%;
   line-height: 30px;
   float: left;
   text-align: center;
   color: #1D1F21;
}

.navi-item3 {
   list-style-type: none;
   width: 25%;
   line-height: 72px;
   float: left;
   text-align: center;
   color: #1D1F21;
}

.navi-item>a {
   text-decoration: none;
   color: #1D1F21;
   width: 100%;
   height: 100%;
   display: block;
}

.navi-item2>a {
   text-decoration: none;
   color: #1D1F21;
   width: 100%;
   height: 100%;
   display: block;
}

.navi-item3>a {
   text-decoration: none;
   color: #1D1F21;
   width: 100%;
   height: 100%;
   display: block;
   font-weight: bold;
}

.navi-title>a {
   text-decoration: none;
   color: #1D1F21;
   width: 100%;
   height: 100%;
   display: block;
}



.container {
   background-color: #FFFFFF;
   width: 60%;
   margin: auto;
   margin-top: 0px;
}

.onefloor {
   border-bottom: 3px solid #1D1F21;
   border-top: 3px solid #1D1F21;
   border-radius: 3px;
}

.twofloor {
   border-bottom: 3px solid #1D1F21;
   border-radius: 3px;
   text-align: center;
}

.threefloor {
   position: relative;
   top: 150px;
   
   text-align: center;
  
}

.fourthfloor {
   
   top: 300px;
   z-index: -10;
}

.fivefloor {
   border-top: 3px solid #1D1F21;
   border-radius: 3px;
   width: 100%;
   background-color: #FFFFFF;

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
   border: 3px solid #1D1F21;
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
   color: #1D1F21;
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
<div>
<img src="${pageContext.request.contextPath }/resources/img/backgroundMain.jpg" class="back" style="position:fixed; z-index:-500;filter: blur(4px);">
</div>
   <div class="container">
      <br> <br> <br>
      <div class="onefloor" style="text-align:center; ">
         <div class="bd-example">
            <img src="${dto.file_path}">

            <div style="font-size: 20px; font-family: 'BMEULJIRO';">제목</div><br>
            <div> ${dto.title}</div>
         </div>

      </div>

      <div class="twofloor" style=" font-family: 'BMEULJIRO';">
      <div class="middlethird" id="summary" style="font-size: 20px; ">내용</div><br>
      <div class="middlethird" id="summary">${dto.content}</div>
         <br> <br> <br> <br>
         <h1>레드카드발급 관련 공통 안내사항</h1>
         <br> <br> <br> 1. 인증규정과 무관한 이미지로 인증을 대체하려 한 경우<br>
         2. 신체의 일부가 나와야 할 때 본인이 아닌 경우<br> 3. 한번의 행위로 2회 인증하는 경우(예. 자정전과
         후로 한 챌린지를 2회 인증하는 경우)<br> 4. 미리 해놓고 다음에는 사진만 찍는 경우<br> 5. 한
         번의 행위로 두 개의 서로 다른 챌린지에 인증하는 경우<br> (예. 닭가슴살 샐러드를 먹으며, 닭가슴살 먹기
         챌린지와 샐러드 먹기 챌린지에 둘 다 인증하는 경우)<br> 6. 미리 해놓고 인증샷은 나중에 찍는 경우 <br>
         (예. 한 주 할 일을 모두 계획 후 미리 써두고, 밤에는 사진만 찍는 경우)<br> 7. 다수의 회원들로부터
         수행여부를 의심받았는데, 회사가 그 의심이 납득 가능하다고 판단한 경우<br> 8. 고의적으로 인증규정만 맞췄을 뿐
         인증규정의 빈틈을 노렸다고 회사가 판단하는 경우<br> 9. 한 사람이 두 계정으로 인증하거나, 지인이 인증할 때를
         이용해 본인도 인증하는 경우<br> (예. 아메리카노 한 잔을 두고, 두 사람이 카페에서 아메리카노 주문하기
         챌린지에 인증한 경우)<br> <br> <br> <br>

      </div>


      <div class="threefloor">
         
         </div>
         <div class="fourthfloor">
         <div>
         <form action="${pageContext.request.contextPath}/succesCheck.adboard"
         id="frm">
         <input type="hidden" name="seq" value="${dto.seq}">
         <c:forEach items="${recordList}" var="record">
            <input type="checkbox" class="succesCheck" name="succesCheck"
               value="${record.member_id}"> ${record.member_id}
            
            <table>

               <tr>
                  <c:forEach items="${fileList}" var="fileitem">
                     <c:if test="${fileitem.challenge_record_num == record.seq}">
                        <td><img src="${fileitem.file_path}"></td>

                     </c:if>

                  </c:forEach>
               </tr>

            </table>
         </c:forEach>
      </form>

      </div>
<div style="height:100px; text-align:center;">
<br>
      <input type="button" value="성공" id="succesBtn" style="background-color:black; border-radius:4px; color:white; font-family: 'BMEULJIRO';"> 
      <input type="button" value="챌린지 관리" id="modifyBtn" style="background-color:black; border-radius:4px; color:white; font-family: 'BMEULJIRO';">  
      <input type="button" value="챌린지 삭제" id="deleteBtn" style="background-color:black; border-radius:4px; color:white; font-family: 'BMEULJIRO';">
    <br>
      </div>   
         </div>
<div class="fivefloor" style="background-color:white;">
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
         <a href="#"><img src="${pageContext.request.contextPath}/resources/img/icon1.png" class="mr-3" alt="..."
            style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
         <a href="#"><img src="${pageContext.request.contextPath}/resources/img/icon2.png" class="mr-3" alt="..."
            style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
         <a href="#"><img src="${pageContext.request.contextPath}/resources/img/icon3.png" class="mr-3" alt="..."
            style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
      </div>
      <br>
   </div>
      </div>
<ul class="navi">
      <ul class="title">
         <li class="navi-title"><a href="#" style="font-family: 'Rock Salt', cursive; font-size:20px;">Don't Give Up</a></li>
      </ul>
      <ul class="itemList">
            <li class="navi-item"></li>
         <li class="navi-item"></li>
         <li class="navi-item"><a href="banner.usboard" style="font-family: 양진체; font-weight:bold;">MYPAGE</a></li>
         <li class="navi-item"><a href="logout.mem" style="font-family: 양진체; font-weight:bold;">LOGOUT</a></li>
      </ul>
   </ul>
      





      

      <script>
         $("#succesBtn").on("click", function() {
            var result = confirm("값을 넘길거...?");

            if (result) {
               $("#frm").submit();
            }
         })
         $("#modifyBtn").on("click", function() {
            var result = confirm("챌린지 정보를 수정하시겠습니까?");

            if (result) {
               location.href = "modify.adboard?seq=${dto.seq}";
            }
         })
         $("#deleteBtn").on("click", function() {
            var result = confirm("챌린지를 삭제하시겠습니까?");

            if (result) {
               location.href = "delete.adboard?seq=${dto.seq}";
            }
         })
      </script>
</body>
</html>