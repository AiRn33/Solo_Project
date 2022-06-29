<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
		<form action="/board/post/${vo.boardNumber }" method="post">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-3"></div>
					<div class="col-6">
						<div class="form-floating mb-3">글 수정</div>
						<div class="form-floating mb-3">
							<input class="form-control" name="title" type="text"
								value="${vo.title}" /> <label for="email">제목</label>
						</div>
						<div class="form-floating">
							<textarea class="form-control" name="content" id="textAreaBr"
								id="textareaBr" style="height: 500px">${vo.content }</textarea>
							<label for="email">내용</label>
						</div>
						<br> <input type="hidden" name="_method" value="put" /> <input
							type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }" />
						<div class="container">
							<div class="row">
								<div class="col-4"></div>
								<div class="col-6">
									<input class="btn btn-primary" type="submit" value="수정하기">
									<button class="btn btn-danger" onClick="location.href='/board/post/'${vo.boardNumber}">취소하기</button>
								</div>

								<div class="col-2"></div>

							</div>
						</div>

					</div>
					<div class="col-3"></div>
				</div>
			</div>
		</form>

	</header>

	<script src="../../resources/js/board.js"></script>


</body>
</html>