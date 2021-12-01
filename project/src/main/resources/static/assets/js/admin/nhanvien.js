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
			}, 2000);
			
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
			}, 2000);
		},
		error: function(err) {
			console.log(err)
			toastr.error('Xóa thất bại');
		}
	})
}