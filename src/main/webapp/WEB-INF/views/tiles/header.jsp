<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/joinMember.css" rel="stylesheet" />
<link href="../resources/css/styles.css" rel="stylesheet" />
<script src="../resources/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<meta charset="UTF-8">
 <title>Main Page</title>
<link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
</head>
	
	<body id="page-top">
      	    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
            <div class="container px-5">
                <a class="navbar-brand fw-bold" href="/">Kim Portfolio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                   <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                        <!-- <li class="nav-item"><a class="nav-link me-lg-3" href="/board/list">게시판</a></li>
                        <li class="nav-item"><a class="nav-link me-lg-3" href="#features">간단이력</a></li> -->
                    </ul> 
                    
                    <c:if test="${empty sessionEmail }">    	
	                    <button class="btn btn-danger rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" onclick="location.href='/member/login'">
	                        <span class="d-flex align-items-center">
	                            <i class="bi-chat-text-fill me-2"></i>
	                            <span class="small">로그인</span>
	                        </span>
	                    </button>
	                    <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
	                        <span class="d-flex align-items-center">
	                            <i class="bi-chat-text-fill me-2"></i>
	                            <span class="small">회원가입</span>
	                        </span>
	                    </button>   
                    </c:if>
                    <c:if test="${not empty sessionEmail }">
                       <button class="btn btn-success rounded-pill px-3 mb-2 mb-lg-0" onclick="location.href='/member/myPage'">
	                        <span class="d-flex align-items-center">
	                            <i class="bi-chat-text-fill me-2"></i>
	                            <span class="small">마이페이지</span>
	                        </span>
	                    </button>   
                       <button class="btn btn-danger rounded-pill px-3 mb-2 mb-lg-0" onclick="location.href='/member/logout'">
	                        <span class="d-flex align-items-center">
	                            <i class="bi-chat-text-fill me-2"></i>
	                            <span class="small">로그아웃</span>
	                        </span>
	                    </button>   
                    </c:if>
                </div>
            </div>
        </nav>
	
		
		<!-- -------------------------------------- 회원가입 로그인 Proc ---------------------------------- -->
		
		
        <!-- Feedback Modal-->
        <div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
        	<div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header bg-gradient-primary-to-secondary p-4">
                        <h5 class="modal-title font-alt text-white" id="feedbackModalLabel">회원가입</h5>
                        <button class="btn-close btn-close-white" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body border-0 p-4">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        
                        <form action="/member/joinProc" method="post" onsubmit="return formCheck();">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" name="name" type="text"/>
                                <label for="name">이름 / 닉네임</label>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" name="email" type="email"/>
                                <label for="email">이메일</label>
                            </div>
                            <div class="form-floating mb-3">
                            	<button type="button" class="btn btn-success" id="emailCheck" onclick="email_check()">중복 체크</button>
                            	<button type="button" class="btn btn-primary" id="emailCheckBarTrue">이메일이 사용가능합니다</button>
                            	<button type="button" class="btn btn-danger" id="emailCheckBarFalse">이메일이 중복되었습니다</button>
                            	<button type="button" class="btn btn-danger" id="emailReset" onclick="email_reset()">초기화</button>
                            </div>  
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="password" name="password" type="password"/>
                                <label for="phone">비밀번호 / [8~15]자리의 영문과 숫자만 사용 가능</label>
                            </div>       
                            <div class="form-floating mb-3">
                                <input class="form-control" id="passwordCheck" type="password"/>
                                <label for="passwordCheck">비밀번호 확인</label>
                            </div>  
                            <div class="form-floating mb-3" id="passwordCheckBar">
                            	<button type="button" class="btn btn-secondary">비밀번호를 입력해주세요</button>
                            </div>      
                            <div class="form-floating mb-3" id="passwordCheckBarTrue">
                            	<button type="button" class="btn btn-primary">비밀번호가 일치합니다</button>
                            </div>      
                            <div class="form-floating mb-3" id="passwordCheckBarFalse">
                                <button type="button" class="btn btn-danger">비밀번호가 일치하지 않습니다</button>
                            </div>      
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" name="phone" type="tel"/>
                                <label for="phone">휴대폰</label>
                            </div>                         
                            <div class="d-grid">
                           	 	<input class="btn btn-primary rounded-pill btn-lg" type="submit" value="회원 가입">
                            </div>
                            
                            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                            <input type="hidden" name="emailCheckVal" id=emailCheckVal value="0">
                        </form>
                    </div>
                </div>
            </div>
        </div>
       
 	<script src="../resources/js/password.js"></script>
 	
      
        
</body>
</html>