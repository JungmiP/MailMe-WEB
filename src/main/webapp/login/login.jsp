<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies){
		if(c.getName().equals("savedId")){
			String savedId = c.getValue();
			pageContext.setAttribute("savedId", savedId);			
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
 -->
<title>로그인</title>
<!-- Custom fonts or this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
<style>
#image-div{
	background-image: url(../resources/img/hedgehog.jpg);
	background-size: cover;
}
</style>
<script>
	window.onload = function(){
		<c:if test="${ not empty savedId }">
			let chkbox = document.querySelector("#customCheck");
			chkbox.checked = true;
			loginForm.id.value = "${ savedId }"
		</c:if>
	}
	
	let isNull = function(obj, msg) {
		if(obj.value == '') {
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}

	let checkForm = function() {
		
		let f = document.loginForm
		
		if(isNull(f.id, '아이디를 입력하세요'))
			return false
		
		if(isNull(f.password, '패스워드를 입력하세요'))
			return false
		
		return true
	}
</script>
</head>
<body class="bg-gradient-primary">
	<header>
	</header>
	<section>
	<div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image" id="image-div">
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">로그인</h1>
                                    </div>
                                    <form class="user" action="loginProcess.jsp" method="post" name="loginForm" onsubmit="return checkForm()">
                                        <div class="form-group">
                                            <input type="text" name="id" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="아이디">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="비밀번호">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" name="saveCheck" value="yes" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">기억해줘</label>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary btn-user btn-block">
                                            로그인
                                        </button>                                        
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="findPassword.jsp">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="join.jsp">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>
	
	</section>
		<%@ include file="/include/footer.jsp" %>
</body>
</html>





    


    
