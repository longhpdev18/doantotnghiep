$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/nhanvien',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(mess) {
			location.reload()

		}, error: function(err) {
			console.log(err)
		}

	})
}
function getData() {
	$.ajax({
		url: '/getDataNV',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(mess) {
			if (mess.value == "session") {

			} else {
				loadData();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
}

$('#add-staff').click(function(e) {
	e.preventDefault();

	var tendangnhap = $('#userNV').val();

	if (tendangnhap == null || tendangnhap == "" || tendangnhap == undefined) {
		toastr.error('Tên tài khoản không được để trống');
		return false;
	}

	var matkhau = $('#passNV').val();

	if (matkhau == null || matkhau == "" || matkhau == undefined) {
		toastr.error('Mật khẩu không được để trống');
		return false;
	}

	var chucvu = $('#chucvu :selected').val();

	if (chucvu == NaN || chucvu == "" || chucvu == undefined) {
		toastr.error('Chức vụ không được để trống');
		return false;
	} else {
		chucvu = parseInt(chucvu);
	}

	var fullname = $('#nameNV').val();

	if (fullname == null || fullname == "" || fullname == undefined) {
		toastr.error('Tên không được để trống');
		return false;
	}

	var birthday = $('#birthdayNV').val();

	if (birthday == null || birthday == "" || birthday == undefined) {
		toastr.error('Ngày sinh được để trống');
		return false;
	}else{
		birthday = Date.parse(birthday);
	}

	var gioitinh = $('#genders :selected').val();


	if (gioitinh == NaN || gioitinh == "" || gioitinh == undefined) {
		toastr.error('Giới không được để trống');
		return false;
	} else {
		gioitinh = parseInt(gioitinh);
	}

	var diachi = $('#addressNV').val();

	if (diachi == null || diachi == "" || diachi == undefined) {
		toastr.error('Địa chỉ không được để trống');
		return false;
	}

	var email = $('#emailNV').val();

	if (email == null || email == "" || email == undefined) {
		toastr.error('Email không được để trống');
		return false;
	}

	var sodienthoai = $('#phoneNV').val();

	if (sodienthoai == null || sodienthoai == "" || sodienthoai == undefined) {
		toastr.error('Số điện thoại không được để trống');
		return false;
	} else {
		sodienthoai = parseInt(sodienthoai);
	}
	var hinh = $('#fileNV')[0].files[0];

	if (hinh == NaN || hinh == "" || hinh == undefined) {
		toastr.error('Hình không được để trống');
		return false;
	} else {
		hinh = hinh.name;
	}

	$.ajax({
		url: '/admin/nhanvien/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				"tendangnhap": tendangnhap,
				"matkhau": matkhau,
				"chucvu": chucvu,
				"fullname": fullname,
				"ngaysinh": birthday,
				"gioitinh": gioitinh,
				"diachi": diachi,
				"email": email,
				"sodienthoai": sodienthoai,
				"hinh": hinh,

			}
		),
		dataType: 'json',
		success: function() {
			var form = new FormData(document.getElementById('fAdd-nv'));
			console.log(form);
			$.ajax({
				url: '/admin/nhanvien/addImage',
				type: 'POST',
				contentType: false,
				processData: false,
				data: form,
				success: function() {
					toastr.success('Thêm thành công!');
					setTimeout(function() {
						loadData();
					}, 2000);

				}, error: function(err) {
					console.log(err)
				}

			})

		}, error: function(err) {
			console.log(err)
		}

	})
})

function delectNV(manv) {
	$.ajax({
		url: '/admin/nhanvien/delete/' + manv,
		success: function() {
			toastr.success('Xóa thành công!');
			setTimeout(function() {
				loadData();
			}, 1000);
		},
		error: function(err) {
			console.log(err)
			toastr.error('Xóa thất bại');
		}
	})
}

function editNV(manv) {
	$('.edit-staff').addClass('active');
	$.ajax({
		type: "GET",
		url: "/admin/getOneNV/" + manv,
		contentType: 'application/json',
		success: function(response) {
			$("#udID").val(response.manv)
				, $("#udUser").val(response.tendangnhap)
				, $("#udPass").val(response.matkhau)
				, $("#udName").val(response.fullname)
				, $("#udDate").val(response.ngaysinh)
				, $("#udAddress").val(response.diachi)
				, $("#udMAil").val(response.email)
				, $("#udPhone").val(response.sodienthoai)
				, $("#lblHinh").text(response.hinh)
			if (response.chucvu == false) {
				$("#udChucvu").val("0")
			} else {
				$("#udChucvu").val("1")
			}
			if (response.gioitinh == false) {
				$("#udGT").val("0")
			} else {
				$("#udGT").val("1")
			}
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}


$('#UpdateNV').click(function(e) {
	e.preventDefault();
	var manv = parseInt($('#udID').val());
	var tendangnhap = $('#udUser').val();
	var matkhau = $('#udPass').val();
	var fullname = $('#udName').val();
	var ngaysinh = Date.parse($("#udDate").val());
	var diachi = $('#udAddress').val();
	var email = $('#udMAil').val();
	var sodienthoai = $('#udPhone').val();
	var hinh = $('#UDfileNV')[0].files[0];
	if (hinh == undefined || hinh == null || hinh == "") {
		hinh = $('#lblHinh').text();
	} else {
		hinh = hinh.name;
	}
	var chucvu = parseInt($('#udChucvu :selected').val());
	var gioitinh = parseInt($('#udGT :selected').val());
	$.ajax({
		url: '/admin/updateNV',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			manv: manv,
			tendangnhap: tendangnhap,
			matkhau: matkhau,
			fullname: fullname,
			ngaysinh: ngaysinh,
			diachi: diachi,
			email: email,
			sodienthoai: sodienthoai,
			chucvu: chucvu,
			gioitinh: gioitinh,
			hinh: hinh
		}),
		success: function() {
			var form = new FormData(document.getElementById('fupdate-nv'));
			console.log(form);
			$.ajax({
				url: '/admin/nhanvien/UDImage',
				type: 'POST',
				contentType: false,
				processData: false,
				data: form,
				success: function() {
					toastr.success('Cập nhật thành công!');
					setTimeout(function() {
						loadData();
					}, 1000);

				}, error: function(err) {
					console.log(err)
				}

			})

		},
		error: function(err) {
			alert("error is" + err)
		}
	});
})