<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
	 <header class="masthead">
            <div class="container">
                <div class="row align-items-center">
                
                <div class="col-3">
                </div>
                
                <div class="col-6">               
               		<div class="form-floating mb-3">
 						마이페이지
					</div>
               		<div class="form-floating mb-3">
 						<input class="form-control" name="email" type="email" style="text-align:center;" value="${vo.name }"/>
						<label for="email">이름</label>
					</div>
               		<div class="form-floating mb-3">
 						<input class="form-control" name="email" type="email" style="text-align:center;" value="${vo.email }"/>
						<label for="email">이메일</label>
					</div>                                      
               		<div class="form-floating mb-3">
 						<input class="form-control" name="email" type="email" style="text-align:center;" value="${vo.phone }"/>
						<label for="email">휴대폰 번호</label>
					</div>
					                                        
					
                  </div>
             	
             	<div class="col-3">

			  	</div>
               
            </div>
          </div>
     
		
		</header>
</body>
</html>