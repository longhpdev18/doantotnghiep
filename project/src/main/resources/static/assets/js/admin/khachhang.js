$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/khachhang',
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
		url: '/getDataKH',
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

$('#add-customer').click(function(e) {
	e.preventDefault();

	var tendangnhap = $('#userKH').val();
	var matkhau = $('#passKH').val();
	var fullname = $('#fullname').val();
	var gioitinh = parseInt($('#genders :selected').val());
	var birthday = Date.parse($('#birthday').val());
	var diachi = $('#address').val();
	var email = $('#emailKH').val();
	var hinh = $('#fileKH')[0].files[0].name;
	var sodienthoai = $('#phoneKH').val();
	var active = parseInt($('#active :selected').val());
	$.ajax({
		url: '/admin/customer/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				"tendangnhap": tendangnhap,
				"matkhau": matkhau,
				"fullname": fullname,
				"gioitinh": gioitinh,
				"ngaysinh": birthday,
				"diachi": diachi,
				"email": email,
				"sodienthoai": sodienthoai,
				"hinh": hinh,
				"active": active
			}
		),
		dataType: 'json',
		success: function() {

			loadData();

		}, error: function(err) {
			console.log(err)
		}

	})
})

function delectKH(makh) {
	$.ajax({
		url: '/admin/khachhang/delete/' + makh,
		success: function() {
			toastr.success('Xóa thành công!');
			setTimeout(function() {
				loadData();
			}, 2000);
		},
		error: function(err) {
			console.log(err)
			toastr.error('Xóa thất bại');
		}
	})
}


function editKH(makh) {
	$('.edit-customer').addClass('active');
	$.ajax({
		type: "GET",
		url: "/admin/getOneKH/" + makh,
		contentType: 'application/json',
		success: function(response) {
			$("#udID").val(response.makh)
				, $("#udUser").val(response.tendangnhap)
				, $("#udPass").val(response.matkhau)
				, $("#udName").val(response.fullname)
				, $("#udDate").val(response.ngaysinh)
				, $("#udAddress").val(response.diachi)
				, $("#udMAil").val(response.email)
				, $("#udPhone").val(response.sodienthoai)
				, $("#udImg").val(response.hinh)
			if (response.active == false) {
				$("#udActive").val("0")
			} else {
				$("#udActive").val("1")
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


$('#UpdateKH').click(function(e) {
	e.preventDefault();

	$.ajax({
		url: '/admin/updateNH',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			manh: manh,
			tennh: tennh
		}),
		success: function() {
			toastr.success('Cập nhật thành công!');
			setTimeout(function() {
				loadData();
			}, 2000);
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
})