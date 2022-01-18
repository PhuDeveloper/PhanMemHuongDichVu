<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Trang chủ</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
	integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
	integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
	crossorigin="anonymous"></script>
<style type="text/css">
img {
	width: 150px;
	height: 150px;
}
</style>
</head>

<body>
	<div class="modal" tabindex="-1" role="dialog" id="idChiTiet">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Chi tiết phòng</h5>
					<button type="button" name="close" class="close"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">

					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" id="close">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- NHẬP LIỆU THÊM TIN ĐĂNG -->

	<div class="modal" tabindex="-1" role="dialog" id="idThemTin">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Thêm tin đăng</h5>
					<button type="button" name="close" class="close"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="input-group mb-3">
						<span class="input-group-text" id="matin">Mã tin</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="tieude">Tiêu đề</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="sdt">Số điện thoại</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="ngaydang">Ngày đăng</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="anninh">An ninh</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="maxa">Mã xã</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="diachi">Thông tin địa
							chỉ</span> <input type="text" class="form-control"
							placeholder="Username" aria-label="Username"
							aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="trangthai">Trạng thái</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="taikhoan">Tài khoản</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" name="luuTin" class="btn btn-primary">Lưu</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" id="close">Close</button>
				</div>
			</div>
		</div>
	</div>











	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="">Tin phòng trọ</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="TrangChu">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="DangNhap">Đăng
							nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="DangKi">Đăng
							kí</a></li>
					<li class="nav-item"><button type="button" name="dangTin"
							class="btn btn-primary">Thêm tin</button></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search"
						placeholder="Nhập tên Quận" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<table class="table table-hover" style="margin-top: 100px;">
		<thead>
			<tr>
				<th scope="col">Mã tin</th>
				<th scope="col">Ảnh</th>
				<th scope="col">Tiêu đề</th>
				<th scope="col">Thông tin địa chỉ</th>
				<th scope="col">Thông tin chung</th>
				<th scope="col">Giá phòng</th>
				<th scope="col">Chi tiết</th>
			</tr>
		</thead>
		<tbody>
			<!-- Bảng thông tin tin đăng  -->
		</tbody>
	</table>


	<!-- --------------------	AJAX ---------------------------->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="<c:url value='resources/assets/js/GetTrangChu.js'/>"></script>
</body>
</html>