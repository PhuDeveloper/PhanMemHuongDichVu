$(document).ready(function() {
	getTrangChu();
})
//Xử lý xem chi tiết phòng
$(document).on('click', "button[name='xemCt']", function() {
	let maTin = $(this).closest('tr').attr('id');
	$.ajax({
		url: "https://localhost:44354/api/GetChiTetPhong",
		type: "get",

		data: {
			matin: maTin
		},
		success: function(data) {
			console.log(data);
			$('.modal-body').empty();
			$.each(data, function(index, item) {
				let ul = '<ul>'
				ul += '<li>Giá phòng :' + item.GiaPhong + '</li>';
				ul += '<li>Số phòng :' + item.SoPhong + '</li>';
				ul += '<li>Diện tích :' + item.DienTich + '</li>';
				ul += '<li>Điều hòa :' + item.DieuHoa + '</li>';
				ul += '<li>Loại phòng :' + item.MaLoaiPhong + '</li>';
				ul += '<li>Mô tả :' + item.MoTa + '</li>';
				ul += '</ul>'
				$('.modal-body').append(ul);
			})
		},
		fail: function(data) {
			alert('Lỗi');
		}

	})

	$('#idChiTiet').modal('show');
})
//Xử lý xóa tin đăng 
$(document).on('click', "button[name='xoaTin']", function() {
	alert('Xóa');
	let maTin = $(this).closest('tr').attr('id');
	alert(maTin);
	$.ajax({
		url: "https://localhost:44354/api/XoaTinDang",
		type: "delete",
		data: {
			matin: maTin
		},
		success: function(res) {
			console.log(res);
			$('tbody').empty();
			$.each(res, function(index, item) {
				console.log(res);
				let tr = '<tr>'
				tr += '<td>' + item.MaTin + '</td>';
				tr += '<td><img src="data:image/png;base64, ' + item.HinhAnh + '"/></td >';
				tr += '<td>' + item.TieuDe + '</td>';
				tr += '<td>' + item.ThongTinDiaChi + '</td>';
				tr += '<td>' + item.ThongTinChung + '</td>';
				tr += '<td>' + item.GiaPhong + '</td>';
				tr += '<td>';
				tr += '<button type="button" name="xemCt" class="btn btn-primary" >Xem</button >';
				tr += '<button type="button" name="xoaTin" class="btn btn-primary" >Xóa</button >';
				tr += '</tr>';
				$('tbody').append(tr);
			})

		},
		fail: function(data) {
			alert('Lỗi');
		}

	})


})

//Xử lý đăng tin
$(document).on('click', "button[name='dangTin']", function() {

	//	$('#idChiTiet').modal('hidden');
	$('#idThemTin').modal('show');
	$(document).on('click', "button[name='luuTin']", function() {
		console.log("hhhh");
		alert('Luu tin');
	})
})

//button Đăng nhập 
$(document).on('click', "button[name='DangNhap']", function() {

	var taiKhoan = $('#idTaiKhoan').val().trim();
	var matKhau = $('#idMatKhau').val().trim();
	if (taiKhoan.length == 0 || matKhau.length == 0) {
		alert('Vui lòng điền đủ thông tin đăng nhập!!');
	}
	$.ajax({
		url: "https://localhost:44354/api/DangNhap?" + jQuery.param({ TaiKhoan: taiKhoan, MatKhau: matKhau }),
		type: "post",

		success: function(res) {
			console.log(res);
			if (res == "Đăng nhập thành công!") {
				alert('Đăng nhập thành công!!');
			} else {
				alert('Đăng nhập thất bại!!');
			}

		},
		fail: function(data) {
			alert('Lỗi');
		}

	})

})



//Hàm hiển thị thông tin các phòng trọ cho trang chủ
function getTrangChu() {

	$.ajax({
		url: "https://localhost:44354/api/GetThongTinPhong",
		type: "get",

		success: function(data) {
			alert('Xin chào!!');
			console.log(data);
			$('tbody').empty();
			$.each(data, function(index, item) {
				console.log(data);
				let tr = '<tr id="' + item.MaTin + '">'
				tr += '<td>' + item.MaTin + '</td>';
				tr += '<td><img src="data:image/png;base64, ' + item.HinhAnh + '"/></td >';
				tr += '<td>' + item.TieuDe + '</td>';
				tr += '<td>' + item.ThongTinDiaChi + '</td>';
				tr += '<td>' + item.ThongTinChung + '</td>';
				tr += '<td>' + item.GiaPhong + '</td>';
				tr += '<td>';
				tr += '<button type="button" name="xemCt" class="btn btn-primary" >Xem</button >';
				tr += '<button type="button" name="xoaTin" class="btn btn-primary" >Xóa</button >';
				tr += '</tr>';
				$('tbody').append(tr);
			})
		},
		fail: function(data) {
			alert('Lỗi');
		}
	})

}

