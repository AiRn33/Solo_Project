<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    
 
    </head>
    <body id="page-top">
      	    
     
        <!-- Mashead header-->
        <header class="masthead">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <!-- Mashead text and app badges-->
                        <div class="mb-5 mb-lg-0 text-center text-lg-start">
                            <h1 class="display-1 lh-1 mb-3">초보 개발자</h1>
                            <p class="lead fw-normal text-muted mb-5">
                            	좋은 개발자가 되자 
                            </p>
                            <div class="col-md-4 mb-2" >
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi bi-chat-right-text icon-feature d-block"></i>
	                                        <button class="btn btn-dark rounded-pill" onclick="location.href='/board/list'">
							                <span class="small">게시판</span>
							                </button>
                                    </div>
                            </div>
                            <div class="col-md-4 mb-2" >
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi bi-github icon-feature d-block"></i>
	                                        <button class="btn btn-dark rounded-pill" onclick=>
							                <span class="small">Git Hub</span>
							                </button>
                                    </div>
                            </div>
                            <!-- <div class="d-flex flex-column flex-lg-row align-items-center">
                            	<i class="bi bi-github"></i>
                            </div> -->
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <!-- Masthead device mockup feature-->
                        <div class="masthead-device-mockup">
                            <svg class="circle" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                                <defs>
                                    <linearGradient id="circleGradient" gradientTransform="rotate(45)">
                                        <stop class="gradient-start-color" offset="0%"></stop>
                                        <stop class="gradient-end-color" offset="100%"></stop>
                                    </linearGradient>
                                </defs>
                                <circle cx="50" cy="50" r="50"></circle></svg
                            ><svg class="shape-1 d-none d-sm-block" viewBox="0 0 240.83 240.83" xmlns="http://www.w3.org/2000/svg">
                                <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(120.42 -49.88) rotate(45)"></rect>
                                <rect x="-32.54" y="78.39" width="305.92" height="84.05" rx="42.03" transform="translate(-49.88 120.42) rotate(-45)"></rect></svg
                            ><svg class="shape-2 d-none d-sm-block" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><circle cx="50" cy="50" r="50"></circle></svg>
                            <div class="device-wrapper">
                                <div class="device" data-device="iPhoneX" data-orientation="portrait" data-color="black">
                                    <div class="screen bg-black">
                                        <!-- PUT CONTENTS HERE:-->
                                        <!-- * * This can be a video, image, or just about anything else.-->
                                        <!-- * * Set the max width of your media to 100% and the height to-->
                                        <!-- * * 100% like the demo example below.-->
                                        <video muted="muted" autoplay="" loop="" style="max-width: 100%; height: 100%"><source src="../resources/assets/img/demo-screen.mp4" type="video/mp4" /></video>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
            
            
        <!-- Basic features section-->
        <section class="bg-light text-black" id="Basic">
            <div class="container px-5">
                <div class="row gx-5 align-items-center justify-content-center justify-content-lg-between">
                    
                   <!--  <div class="col-sm-8 col-md-6">
                        <div class="px-5 px-sm-0">
                       		<img class="img-fluid rounded-circle" src="https://source.unsplash.com/u8Jn2rzYIps/900x900" alt="..." />
                        </div>
                    </div> -->
                    <div class="col-12 col-lg-10">
                        <h2 class="display-4 lh-1 mb-4">간단한 이력서 배치 공간</h2>
                        <p class="lead fw-normal text-muted mb-5 mb-lg-0">
                        	이 곳에는 간단한 이력, 학교 졸업, 내가 일한 것들, 자격등 등을 배치할 수 있도록 해보자
                        </p>
                        <br>
                        <p class="lead fw-normal text-muted mb-5 mb-lg-0">
                        	table을 배치하는 방법이나 아이콘을 활용해서 깔끔하게 배치해보도록 하자
                        </p>
                    </div>
            
                </div>
            </div>
        </section>
        
        <!-- App features section-->
        <section id="features">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-12 order-lg-1 mb-5 mb-lg-0">
                        <div class="container-fluid px-5">
                            <div class="row gx-5">
                                <div class="col-md-4 mb-5">
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi bi-book icon-feature text-gradient d-block mb-3"></i>
                                        <h3 class="font-alt">언제나 책과 함께!</h3>
                                        <p class="text-muted mb-0">항상 배우고자 하는 의욕이 넘치고</p>
                                        <p class="text-muted mb-0">새로운 공부를 즐깁니다</p>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-5">
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi-camera icon-feature text-gradient d-block mb-3"></i>
                                        <h3 class="font-alt">Flexible Use</h3>
                                        <p class="text-muted mb-0">Put an image, video, animation, or anything else in the screen!</p>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-5">
                                    <!-- Feature item-->
                                    <div class="text-center">
                                        <i class="bi-camera icon-feature text-gradient d-block mb-3"></i>
                                        <h3 class="font-alt">Flexible Use</h3>
                                        <p class="text-muted mb-0">Put an image, video, animation, or anything else in the screen!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    
       
    </body>
</html>
