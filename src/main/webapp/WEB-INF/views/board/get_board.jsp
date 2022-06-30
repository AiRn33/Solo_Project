<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../resources/css/joinMember.css" rel="stylesheet" />
<link href="../../resources/css/styles.css" rel="stylesheet" />
<script src="../../resources/js/scripts.js"></script>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<!-- Mashead header-->
	<header class="masthead">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-3"></div>
				<div class="col-6">
					<div class="form-floating mb-3">글 조회</div>
					<div class="form-floating mb-3">
						<input class="form-control" name="title" type="text"
							value="${vo.title}" /> <label for="email">제목</label>
					</div>
					<div class="form-floating">
						<textarea class="form-control" name="content" id="textAreaBr"
							id="textareaBr" style="height: 500px">${vo.content }</textarea>
						<label for="email">내용</label>
					</div>
					<br>

						<div class="container">
							<div class="row">
								<div class="col-3 form-group"></div>
								<div class="col-7 form-group">
									<button class="btn btn-primary" onClick="location.href='/board/list'">글 목록</button>
									<button class="btn btn-success"
										onclick="updateBoard(${vo.boardNumber})">수정하기</button>
								
								<form action="/board/post/${vo.boardNumber }" method="post">
									<button type="submit" class="btn btn-danger">삭제하기</button>
									<input type="hidden" name="_method" value="delete" /> <input
									type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }" />
								</form>	
								
								</div>
								<div class="col-2 form-group" ></div>
							</div>
							
						</div>
						

				</div>
			</div>
		</div>
		<div class="col-3"></div>

	</header>
	<script src="../../resources/js/board.js"></script>

</body>
</html>