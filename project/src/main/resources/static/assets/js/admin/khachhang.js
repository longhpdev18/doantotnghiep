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

$('.btn-prev').click(function() {
	var count = $('#countPage').text() - 1;
	console.log(count)
	$.ajax({
		url: '/admin/kh/prevPage',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{

				'count': count
			}
		),
		dataType: 'json',
		success: function(result) {
			if (result.value == 'success') {
				location.reload();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
})
$('.btn-next').click(function() {
	var count = $('#countPage').text() - 1;
	console.log(count)
	$.ajax({
		url: '/admin/kh/nextPage',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{

				'count': count
			}
		),
		dataType: 'json',
		success: function(result) {
			if (result.value = 'success') {
				location.reload();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
})


$('#add-customer').click(function(e) {
	e.preventDefault();

	var tendangnhap = $('#userKH').val();
	var matkhau = $('#passKH').val();
	var fullname = $('#fullname').val();
	var gioitinh = parseInt($('#genders :selected').val());
	var birthday = Date.parse($('#birthday').val());
	var diachi = $('#address').val();
	var email = $('#emailKH').val();
	var hinh = $('#fileKH')[0].files[0];
	if (hinh == undefined || hinh == null || hinh == "") {
		hinh = "anh"
	} else {
		hinh = hinh.name
	}

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
		success: function() {
			var form = new FormData(document.getElementById('faddKH'));
			console.log(form);
			$.ajax({
				url: '/admin/khachhang/addImage',
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
				, $("#lblHinh").text(response.hinh)
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
	var makh = $('#udID').val();
	var tendangnhap = $('#udUser').val();
	var matkhau = $('#udPass').val();
	var fullname = $('#udName').val();
	var ngaysinh = Date.parse($("#udDate").val());
	var diachi = $('#udAddress').val();
	var email = $('#udMAil').val();
	var sodienthoai = $('#udPhone').val();
	var hinh = $('#udImg')[0].files[0];	
	if (hinh == undefined || hinh == null || hinh == "") {
		hinh = $('#lblHinh').text();
	} else {
		hinh = hinh.name;
	}
	var active = parseInt($('#udActive :selected').val());
	var gioitinh = parseInt($('#udGT :selected').val());
	$.ajax({
		url: '/admin/updateKH',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			makh: makh,
			tendangnhap: tendangnhap,
			matkhau: matkhau,
			fullname: fullname,
			ngaysinh: ngaysinh,
			diachi: diachi,
			email: email,
			sodienthoai: sodienthoai,
			active: active,
			gioitinh: gioitinh,
			hinh: hinh
		}),
	success: function() {
			var form = new FormData(document.getElementById('fupdate-kh'));
			console.log(form);
			$.ajax({
				url: '/admin/khachhang/UDImage',
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
