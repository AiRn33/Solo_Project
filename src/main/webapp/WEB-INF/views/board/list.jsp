<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	 <!-- Mashead header-->
        <header class="masthead">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <!-- Mashead text and app badges-->
                        <div class="mb-5 mb-lg-0 text-center text-lg-start">
                            <h1 class="display-1 lh-1 mb-3">게시판</h1>
                            
                            <div class="col-md-4 mb-2" >
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi bi-chat-right-text icon-feature d-block"></i>
	                                        <button class="btn btn-dark rounded-pill" onclick="location.href='/board/create_board'">
							                <span class="small">게시판 글 생성</span>
							                </button>
                                    </div>
                            </div>
                           
                            <!-- <div class="d-flex flex-column flex-lg-row align-items-center">
                            	<i class="bi bi-github"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </header>
            

</body>
</html>