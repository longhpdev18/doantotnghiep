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
	var matkhau = $('#passNV').val();
	var chucvu = parseInt($('#chucvu :selected').val());
	var fullname = $('#nameNV').val();
	var birthday = Date.parse($('#birthdayNV').val());
	var gioitinh = parseInt($('#genders :selected').val());
	var diachi = $('#addressNV').val();
	var email = $('#emailNV').val();
	var hinh = $('#fileNV')[0].files[0].name;
	var sodienthoai = parseInt($('#phoneNV').val());
	
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
			toastr.success('Thêm thành công!');
			setTimeout(function() {
				loadData();
			}, 1000);
			
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
	var hinh = $('#udHinh')[0].files[0];	
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
			toastr.success('Cập nhật thành công!');
			setTimeout(function() {
				loadData();
			}, 1000);
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
})