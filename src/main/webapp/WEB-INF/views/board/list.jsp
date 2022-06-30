<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
									<c:set var="listLength" value="${fn:length(listLength)}" />
									
									<c:forEach items="${list }" var="list" varStatus="vs" end="6">
										<tr class="alert" role="alert"
											onclick="getBoard(${list.boardNumber})">
											<th scope="row">${(listLength - page) - vs.index}</th>
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
				<div class="col-5"></div>
				<div class="col-5">
					<div class="text-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
							
							<fmt:parseNumber var="pages" integerOnly="true" value="${page /35}"/>
							
								<li class="page-item black"><a class="page-link" 
								href="/board/list?page='${(pages*5)+1}'">Previous</a></li>
								<c:if test="${(listLength % 7 ) eq 0}">
									<c:forEach begin="1" end="${(listLength / 7)}" varStatus="vs">
										<li class="page-item">
										<a class="page-link" href="/board/list?page='${vs.index }'">${vs.index }</a></li>
									</c:forEach>
								</c:if>
								<c:if test="${(listLength % 7 ) ne 0}">
									<c:forEach begin="1" end="5" varStatus="vs">
										<li class="page-item">
										<a class="page-link" href="/board/list?page='${vs.index }'">${vs.index }</a></li>
									</c:forEach>
								</c:if>
								<li class="page-item"><a class="page-link" 
								href="#">Next</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-2">
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