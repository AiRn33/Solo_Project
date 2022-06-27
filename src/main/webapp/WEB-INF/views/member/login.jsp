<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>login</title>
</head>
<body>

	
	
     <header class="masthead">
            <div class="container">
                <div class="row align-items-center">
                
                <div class="col-3">
                </div>
                
                <div class="col-6">               
                 <!-- Feature item-->
                   <form action="/login" method="post">
                            
					<!-- Email address input-->
					<div class="form-floating mb-3">
<!-- 						<input class="form-control" id="loginEmail" name="email" type="email" style="text-align:center;"/>
 -->						<input class="form-control" name="username" type="email" style="text-align:center;"/>
						<label for="email">이메일</label>
					</div>
					<!-- Password number input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="password" name="password" type="password" style="text-align:center;" />
						<label for="phone">비밀번호</label>
					</div>                                              
					<div class="form-floating mb-3">
						<p style="color:red; font-weight:bold;"> 
							${requestScope.loginFailMsg}</p>					
					</div>                                              
					<div class="d-grid">
				 		<input class="btn btn-primary rounded-pill btn-lg" type="submit" value="로그인">
					</div>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
					</form>
                  </div>
             	
             	<div class="col-3">

			  	</div>
               
            </div>
          </div>
     
		
		</header>
</body>
</html>