
$('.btn-save').click(function(e) {
	e.preventDefault();
	var maNV = $("#MaNV").text();
	var username = $('#usernameProfile').val();
	var password = $('#passwordProfile').val();
	var fullname = $('#fullnameProfile').val();
	var birthday = Date.parse($('#birthdayProfile').val());
	var genders = parseInt($('#genders :selected').val());
	var sodienthoai = $('#phone').val();
	if(sodienthoai == null || sodienthoai == 0 || sodienthoai ==""){
		toastr.error('Lỗi! Sai định dạng số điện thoại');
		return false;
	}else{
	sodienthoai = parseInt(sodienthoai)
	}
	var address = $('#address').val();
	var email = $('#email').val();
	$.ajax({
		url: '/updateProfileAD',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				'manv': maNV,
				'tendangnhap': username,
				'matkhau': password,
				'fullname': fullname,
				'ngaysinh': birthday,
				'gioitinh': genders,
				'diachi': address,
				'email': email,
				'sodienthoai': sodienthoai
			}
		),
		dataType: 'json',
		success: function(result) {
			if (result.value == 'success') {

				toastr.success('Đổi thông tin thành công!');
				setTimeout(function() {
					location.reload()
				}, 1000);
			} else {
				toastr.error('Lỗi!');
			}
		}, error: function(err) {
			console.log(err)
		}

	})
})