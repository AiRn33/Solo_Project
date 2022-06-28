<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<form action="/board/${sessionUserNumber}" method="post">
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
								<div class="col"></div>
								<div class="col">
									<input type="submit" class="btn btn-outline-primary" value="등록하기">
									<input type="reset"  class="btn btn-outline-danger"	value="초기화">
								</div>
								<div class="col"></div>
							</div>
						</div>
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
					</form>
				</div>
				<div class="col-3"></div>
			</div>
		</div>

	</header>

</body>
</html>