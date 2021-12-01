$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/nhanhieu',
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
		url: '/getDataNH',
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
$('#addNH').click(function(e) {
	e.preventDefault();

	var tennh = $('#nameNH').val();
	if(tennh == null || tennh == ""){
		toastr.success('Tên nhãn hiệu không được để trống');
		return false;
	}

	$.ajax({
		url: '/admin/nhanhieu/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				"tennh": tennh,
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
			toastr.success('Thêm thất bại công!');
		}

	})
})

function editLH(maloai) {
	$.ajax({
		type: "GET",
		url: "/admin/getOneNH/" + maloai,
		contentType: 'application/json',
		success: function() {
			$("#idLH").val(maloai),
				$("#nameLH").val(tenloai)
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}


$('#updateNH').click(function(e) {
	e.preventDefault();
	var manh = parseInt($("#idNH").val());
	var tennh = $("#nameNH").val();
	if(tennh == null || tennh == ""){
		toastr.success('Tên loại không được để trống');
		return false;
	}
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



function delectNH(manh) {
	$.ajax({
		url: '/admin/nhanhieu/delete/' + manh,
		success: function(result) {
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
