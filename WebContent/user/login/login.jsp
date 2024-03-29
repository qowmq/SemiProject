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
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">

<!-- Font Icon -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/user/login/colorlib-regform-7/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/user/login/colorlib-regform-7/css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link
   href="https://fonts.googleapis.com/css?family=Calistoga&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Bangers|Coming+Soon|Gloria+Hallelujah|Handlee|Rock+Salt&display=swap"
   rel="stylesheet">
<style>
@font-face{font-family:'양진체';src:url(https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff) format('woff');font-weight:400;font-style:normal}body{margin:0;padding:0;background-color:#fff}.lastbar{margin:0;overflow:hidden;padding:0}.navi{position:fixed;top:0;margin:0;overflow:hidden;padding:0;width:900px;left:26.4%;border-bottom:3px solid #000;font-family:fantasy;font-size:20px}.title{margin:0;padding:0;width:50%}.itemList{position:absolute;margin:0;padding:0;right:0;width:50%}.navi-title{list-style-type:none;width:50%;line-height:72px;float:left;text-align:center;color:#1d1f21}.navi-item{position:absolute;right:0;list-style-type:none;width:50%;line-height:72px;float:left;text-align:center;color:#1d1f21}.navi-item2{list-style-type:none;width:25%;line-height:30px;float:left;text-align:center;color:#1d1f21}.navi-item3{list-style-type:none;width:25%;line-height:72px;float:left;text-align:center;color:#1d1f21}.navi-item>a{text-decoration:none;color:#1d1f21;width:100%;height:100%;display:block}.navi-item2>a{text-decoration:none;color:#1d1f21;width:100%;height:100%;display:block}.navi-item3>a{text-decoration:none;color:#1d1f21;width:100%;height:100%;display:block;font-weight:700}.navi-title>a{text-decoration:none;color:#1d1f21;width:100%;height:100%;display:block}.navi-item>a:hover{background-color:orange}.onefloor{border-top:3px solid #1d1f21;border-radius:3px}.twofloor{border-bottom:3px solid #1d1f21;border-radius:3px}.threefloor{border-bottom:3px solid #1d1f21;border-radius:3px;height:50px}.fivefloor{width:100%;background-color:#fff}.progress{display:inline-block;width:90%;height:10%}.submenu{font-family:Calistoga,cursive;color:#7019ff}.sidebar{height:51px;font-family:Calistoga,cursive;text-align:center}.sidebar>a{height:100%;color:#fff}.fourthfloor{height:700px}table{width:300px;height:200px;position:relative;margin:auto;text-align:center;top:0}.bottom{border:1px solid #000;height:300px}th{font-size:25px}#check{border-bottom:1px solid #000}#login{background-color:#fff;border:1px solid #000}#signupbtn{background-color:#fff;border:1px solid #000}.container{padding:0}.signin-content{padding-top:200px}
</style>
</head>
<body>
   <div>
      <img
         src="${pageContext.request.contextPath }/resources/img/backgroundMain.jpg"
         class="back"
         style="position: absolute; z-index: -500; filter: blur(4px); width: 100%; height: 990px;">
   </div>
   <div class="container">
      <div class="fourthfloor">
         <%
            String uri = request.getHeader("Referer");
            System.out.println("uri : " + uri);
            request.getSession().setAttribute("uri", uri);
         %>

         <form action="${pageContext.request.contextPath}/login.mem" method="post" id="loginfrm">
            <section class="sign-in">
               <div class="container">
                  <div class="signin-content">
                     <div class="signin-image">
                        <figure>
                           <img
                              src="${pageContext.request.contextPath }/user/login/colorlib-regform-7/images/signin-image.jpg"
                              alt="sing up image">
                        </figure>
                     </div>

                     <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <div class="form-group">
                           <label for="your_name"><i
                              class="zmdi zmdi-account material-icons-name"></i></label> <input
                              type="text" name="id" id="id" placeholder="Your ID" />
                        </div>
                        <div class="form-group">
                           <label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
                              type="password" name="pw" id="pw" placeholder="Password" />
                        </div>
                        <div class="form-group form-button">
                           <input type="submit" name="signin" id="signin"
                              class="form-submit" value="Log in" />
                              <div class="signUp"
                           style="margin: auto; padding: 20px 0px 0px 0px; color: gray; opacity:0.5; font-size:2px;">
                           <a href="${pageContext.request.contextPath}/user/login/signup.jsp">회원가입</a>
                           │<a href="${pageContext.request.contextPath}/user/login/findId.jsp">아이디</a>
                           │<a href="${pageContext.request.contextPath}/user/login/findPw.jsp">비밀번호찾기</a>
                        </div> 
                        </div>         
                        <input type="hidden" name="page" value="${clickPage}">               
                     </div>
                  </div>
               </div>
            </section>
         </form>

      </div>




      <div class="fivefloor">
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

   <ul class="navi">
      <ul class="title">
         <li class="navi-title"><a href="${pageContext.request.contextPath }/index.jsp"
            style="font-family: 'Rock Salt', cursive; font-size: 20px;">Don't
               Give Up</a></li>
      </ul>
      <ul class="itemList">


         <li class="navi-item" style="font-family: 양진체; font-weight: bold;">당신의
            오늘을 배팅하라!</li>
      </ul>
   </ul>



   <script>
      $("#signin").on("click", function(){
         $("#loginfrm").submit();
      })
      
      
   </script>

</body>
</html>