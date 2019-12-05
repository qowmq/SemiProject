<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	if(${isIdOK}){
		location.href = "${pageContext.request.contextPath}/findpw.mem?id=${id}&email=${email}";
	}else{
		alert("아이디나 비밀번호를 확인해 주세요");
		location.href= "${pageContext.request.contextPath}/user/login/findPw.jsp";
	}
		
</script>
</head>
<body>

</body>
</html>