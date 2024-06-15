<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 쓰기</title>
 <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<script>
	let isNull = function(obj, msg) {
		if(obj.value == ''){
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}
	
	let checkForm = function(){
		let f = document.writeForm
		if(isNull(f.title, '제목을 입력하세요'))
			return false
		
		if(isNull(f.receiver, '수신 아이디를 입력하세요'))
			return false
			
		if(isNull(f.content, '메일 내용을 입력하세요'))
			return false
		
		return true
	}
</script>
</head>
<body>
	<header></header>
	<section id="wrapper">
	<jsp:include page="/include/sidebar.jsp" />
	  <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
      	<div id="content">
	 	<div  class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0" >
                <!-- Nested Row within Card Body -->                
                    <!--  <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
                    <div class="col-lg" style="align-content: center;" >
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">메일 쓰기</h1>
                            </div>
                            <form class="user" name="writeForm" action="writeProcess.jsp" method="post" onsubmit="return checkForm()">
                                
                                <div class="form-group">
                                    <input type="text" name="title" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="제목">
                                </div>
                                <div class="form-group">                                    
                                        <input type="text" name="receiver" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="수신 아이디">
                                </div>
                                <div class="form-group" >
                                	<textarea name="content" class="form-control form-control-user" rows="10" style="border-radius: 3rem;"></textarea>
                                </div>
                                <!-- 첨부파일 -->
                               
                                <button class="btn btn-primary btn-user btn-block">
                                    보내기
                                </button>
                                
                            </form>
                            <hr>
                            
                        </div>
                    </div>                
            </div>
        </div>
        </div>
        <jsp:include page="../include/footer.jsp" />
        </div>
       
	</section>
	</body>
</html>