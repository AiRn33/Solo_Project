<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<!-- Mashead header-->
	<header class="masthead">

		<section class="ftco-section">
			<div class="container">

				<div class="row">
					<div class="col-md-12">
						<div class="table-wrap">
							<table id="listTable" class="table table-hover">
								<thead class="thead-dark">
									<tr>
										<th>No.</th>
										<th>Name</th>
										<th>Title</th>
										<th>Content</th>
										<th>Day</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list }" var="list">
										<tr class="alert" role="alert" onclick="getBoard(${list.boardNumber})">
											<th scope="row">${list.boardNumber }</th>
											<td>${list.name}</td>
											<td>${list.title }</td>
											<td>${list.content }</td>
											<td><fmt:formatDate pattern="yy-MM-dd"
													value="${list.createDay}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="container">
			<div class="row">
				<div class="col"></div>
				<div class="col">
					<div class="text-center">
						<button class="btn btn-dark rounded-pill"
							onclick="location.href='/board/create_board'">
							<span class="small">중앙 페이징 넘버 칸</span>
						</button>
					</div>
				</div>
				<div class="col">
					<div class="text-center">
						<button class="btn btn-dark rounded-pill"
							onclick="location.href='/board/post'">
							<span class="small">게시판 글 생성</span>
						</button>
					</div>
				</div>
			</div>
		</div>


	</header>
	
	
</body>
</html>