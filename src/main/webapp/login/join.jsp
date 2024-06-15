<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
-->
<title>회원가입</title>
<!-- Custom fonts for this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
<style>
#image-div{
	background-image: url(../resources/img/bird01.jpg);
	background-size: cover;
}
</style>

</head>
<body class="bg-gradient-primary">
<header>
</header>
<section>
<div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image" id="image-div">           
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
                            </div>
                            <form action="joinProcess.jsp" method="post" onsubmit="return checkForm()" class="user">
 								<div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="아이디" name="id">
                                </div>
 								<div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="이름" name="name">
                                </div>	
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" name="password" placeholder="비밀번호">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" name="repeatPassword" placeholder="비밀번호 확인">
                                    </div>
                                </div>
 								<div class="form-group">
                                    <input type="date" class="form-control form-control-user" id="exampleInputEmail"
                                 			name="birthDate">
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control form-control-user" id="exampleInputEmail"
                                 			pattern="\d*" minlength="10" maxlength="11" name="phone" placeholder="'-'없이 입력하세요">
                                </div>	
                                <button class="btn btn-primary btn-user btn-block">
                                    회원 가입
                                </button>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="findPassword.jsp">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.jsp">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>
</section>
<%@ include file="/include/footer.jsp" %>
</body>
</html>




    



    

</body>