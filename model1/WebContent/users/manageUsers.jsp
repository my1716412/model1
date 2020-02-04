<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<style>
div {
	border: 1px solid blue;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-12">
				목록<br>
				<table class="table">
					<thead>
						<tr>
							<th>아이디</th>
							<th>아이디</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>홍</td>
							<td>홍길동</td>
						<tr>
						<tr>
							<td>홍</td>
							<td>홍길동</td>
						<tr>
						<tr>
							<td>홍</td>
							<td>홍길동</td>
						<tr>
					</tbody>
					<tfoot>
					</tfoot>
				</table>
			</div>
			<div class="col-lg-3 col-md-12">
				등록폼<br>
				<form>
					<div class="form=group row">
						<label class="col-3">아이디</label>
						<div class="col-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form=group row">
						<label class="col-3">사용자이름</label>
						<div class="col-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="col-8">
						<button class="btn btn-warning">등록</button>
						<a href="#" class="btn btn-info">목록</a>
						<button class="btn btn-outline-primary">취소</button>
					</div>
				</form>

			</div>
			<div class="col-lg-3 col-md-12">
				collapse 테스트<br> <a class="btn btn-primary"
					data-toggle="collapse" href="#userinfo" role="button"
					aria-expanded="false" aria-controls="userinfo"> 도움말 </a>
				<div class="collapse" id="userinfo">회원관리 상세 도움말</div>
			</div>
		</div>
	</div>
</body>
</html>