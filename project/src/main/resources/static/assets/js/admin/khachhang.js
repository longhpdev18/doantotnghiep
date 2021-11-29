$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/tatca',
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
function getData(){
	$.ajax({
		url: '/getData',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(mess) {
			if(mess.value=="session"){
				
			}else{
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
})/**
 * 
 */