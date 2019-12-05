<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/index.css?ver1">
  <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link
   href="https://fonts.googleapis.com/css?family=Bangers|Coming+Soon|Gloria+Hallelujah|Handlee|Rock+Salt&display=swap"
   rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <title>Document</title>
  <script type="text/javascript">
    window.onload = function () {
      $('.startBtn').click(function () {
        var $layer = $('.js-layer');
        $layer.fadeIn();
        $(".backgroundImg").css("opacity","0.6");
        $(".explan").css("display","none");
      });
      $(".naviStartBtn").on("click",function(){
        var $layer = $('.js-layer');
        $layer.fadeIn();
        $(".backgroundImg").css("opacity","0.6");
        $(".explan").css("display","none");
      })
      $(".closeBtn").on("click",function(){
        var $layer = $('.js-layer');        
        $layer.css("display","none");  
        $(".backgroundImg").css("opacity","0.8");
        $(".explan").css("display","block");        
      })
      $("#donate").on("click",function(){
          location.href = "donation.challenge";

        })
        
        $("#take").on("click",function(){
          location.href = "take.challenge";
        })
      var elm = ".box";
      $(elm).each(function (index) {
        // 개별적으로 Wheel 이벤트 적용
        $(this).on("mousewheel DOMMouseScroll", function (e) {
          e.preventDefault();
          var delta = 0;
          if (!event) event = window.event;
          if (event.wheelDelta) {
            delta = event.wheelDelta / 120;
            if (window.opera) delta = -delta;
          }
          else if (event.detail)
            delta = -event.detail / 3;
          var moveTop = $(window).scrollTop();
          var elmSelecter = $(elm).eq(index);
          // 마우스휠을 위에서 아래로
          if (delta < 0) {
            if ($(elmSelecter).next() != undefined) {
              try {
                moveTop = $(elmSelecter).next().offset().top;
              } catch (e) { }
            }
            // 마우스휠을 아래에서 위로
          } else {
            if ($(elmSelecter).prev() != undefined) {
              try {
                moveTop = $(elmSelecter).prev().offset().top;
              } catch (e) { }
            }
          }

          // 화면 이동 0.8초(800)
          $("html,body").stop().animate({
            scrollTop: moveTop + 'px'
          }, {
            duration: 800, complete: function () {
            }
          });
        });
      });
    }
  </script>
  <noscript>
	<style>
body {
	display: none;
}

.noscriptmsg {
	text-align: center;
}
</style>
	<div class="noscriptmsg">
		이 사이트의 기능을 모두 활용하기 위해서는 자바스크립트를 활성화 시킬 필요가 있습니다. <br> <a
			href="http://www.enable-javascript.com/ko/" target="_blank">
			브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
	</div>
</noscript>
</head>

<body class="animated fadeIn delay-1s">
  <div class="wrap">
    <div class="box firstBox">
      <img src="${pageContext.request.contextPath }/resources/img/campfire.gif" class="backgroundImg firstImg">
      <div class="navi firstNavi">
        <div class="logo" style="font-family: 'Rock Salt', cursive;">Don't Give Up</div>
        <div><button class="naviStartBtn">시작하기</button></div>
      </div>
      <div class="explan firstExplan">
        <div class="firstText" style="font-family: 'East Sea Dokdo', cursive;">열정을 불태우기</div>
        <div class="secondText" style="font-family: 'East Sea Dokdo', cursive;">시작할 때</div>
        <div class="referenceText">지금 바로 도전 긔릿</div>
        <div class="start"><button class="startBtn">레츠고</button></div>
        <div class="scroll animated infinite bounce delay-2s"><img src="${pageContext.request.contextPath }/resources/img/scroll@2x.png"></div>
      </div>
    </div>

    <div class="box secondBox">
      <img src="${pageContext.request.contextPath }/resources/img/dive.gif" class="backgroundImg secondImg">
      <div class="navi secondNavi">
        <div class="logo" style="font-family: 'Rock Salt', cursive;">Don't Give Up</div>
        <div><button class="naviStartBtn">시작하기</button></div>
      </div>
      <div class="explan firstExplan">
        <div class="firstText" style="font-family: 'East Sea Dokdo', cursive;"> 그 어떤 곳도 </div>
        <div class="secondText" style="font-family: 'East Sea Dokdo', cursive;">깊게 느껴지지 않고</div>
        <div class="referenceText">지금 바로 도전 긔릿</div>
        <div class="start"><button class="startBtn">레츠고</button></div>
        <div class="scroll animated infinite bounce delay-2s"><img src="${pageContext.request.contextPath }/resources/img/scroll@2x.png"></div>
      </div>
    </div>
    <div class="box thirdBox">
      <img src="${pageContext.request.contextPath }/resources/img/jump.gif" class="backgroundImg thirdImg">
      <div class="navi thirdNavi">
        <div class="logo" style="font-family: 'Rock Salt', cursive;">Don't Give Up</div>
        <div><button class="naviStartBtn">시작하기</button></div>
      </div>
      <div class="explan firstExplan">
        <div class="firstText" style="font-family: 'East Sea Dokdo', cursive;">그 어떤곳도</div>
        <div class="secondText" style="font-family: 'East Sea Dokdo', cursive;">높게 느껴지지 않고</div>
        <div class="referenceText">지금 바로 도전 긔릿</div>
        <div class="start"><button class="startBtn">레츠고</button></div>
        <div class="scroll animated infinite bounce delay-2s"><img src="${pageContext.request.contextPath }/resources/img/scroll@2x.png"></div>
      </div>
    </div>
    <div class="box fourthBox">
      <img src="${pageContext.request.contextPath }/resources/img/shootingStar.gif" class="backgroundImg fourthImg">
      <div class="navi fourthNavi">
        <div class="logo" style="font-family: 'Rock Salt', cursive;">Don't Give Up</div>
        <div><button class="naviStartBtn">시작하기</button></div>
      </div>
      <div class="explan firstExplan">
        <div class="firstText" style="font-family: 'East Sea Dokdo', cursive;">마침내</div>
        <div class="secondText" style="font-family: 'East Sea Dokdo', cursive;">세상을 꿈꾸게 됩니다</div>
        <div class="referenceText">지금 바로 도전 긔릿</div>
        <div class="start"><button class="startBtn">레츠고</button></div>        
      </div>
    </div>
  </div>
  <div class="js-layer  layer  hidden" style="font-family: 'Righteous', cursive;">
      <div class="close"><button class="closeBtn">X</button></div>
      <div class="layerFirstText">What's your choice?</div><br>
      <div class="layerSecondText"><a href="#" id="donate">DONATE</a>&nbsp&nbspOR&nbsp&nbsp<a href="#" id="take">TAKE</a></div>
  </div>
</body>

</html>