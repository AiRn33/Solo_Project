<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <header class="masthead">
            <div class="container">
                <div class="row align-items-center">
                
                <div class="col-3">
                </div>
                
                <div class="col-6">               

	                <form action="/member/logout" method="post">
                            
					<!-- Email address input-->
					<div class="form-floating mb-3">
<!-- 						<input class="form-control" id="loginEmail" name="email" type="email" style="text-align:center;"/>
 -->						<input class="form-control" style="text-align:center;" value="로그아웃 하시겠습니까??"/>
					</div>
					                                       
					<div class="d-grid">
				 		<input class="btn btn-primary rounded-pill btn-lg" type="submit" value="로그아웃">
					</div>
					
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
					</form>
					<div class="d-grid">
				 		<button class="btn btn-primary rounded-pill btn-lg" onclick="history.go(-1)">취소</button>
					</div>
                </div>
             	
             	<div class="col-3">

			  	</div>
               
            </div>
          </div>
     
		
		</header>
	
</body>
</html>