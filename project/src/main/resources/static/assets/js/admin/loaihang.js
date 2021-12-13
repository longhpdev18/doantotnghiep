$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/loaihang',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function() {
			location.reload()

		}, error: function(err) {
			console.log(err)
		}

	})
}
function getData() {
	$('#idLH').hide();
	$('#updateLH').hide();
	$('#labelID').hide();
	$.ajax({
		url: '/getDataLH',
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
$('#add-ProductType').click(function(e) {
	e.preventDefault();

	var tenloai = $('#nameLH').val();
	if (tenloai == null || tenloai == "") {
		toastr.error('Tên loại không được để trống');
		return false;
	}

	$.ajax({
		url: '/admin/loaihang/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				"tenloai": tenloai,
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
			toastr.error('Thêm thất bại công!');
		}

	})
})

function editLH(maloai) {
	$.ajax({
		type: "GET",
		url: "/admin/getOneLH/" + maloai,
		contentType: 'application/json',
		success: function(response) {
			$("#idLH").val(response.maloai),
				$("#nameLH").val(response.tenloai)
			$('#idLH').show();
			$('#updateLH').show();
			$('#labelID').show();
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}



$('#updateLH').click(function(e) {
	e.preventDefault();
	var maloai = parseInt($("#idLH").val());
	var tenloai = $("#nameLH").val();
	if (tenloai == null || tenloai == "") {
		toastr.success('Tên loại không được để trống');
		return false;
	}
	$.ajax({
		url: '/admin/updateLH',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			maloai: maloai,
			tenloai: tenloai
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


function delectLH(maloai) {
	$.ajax({
		url: '/admin/loaihang/delete/' + maloai,
		success: function(result) {
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
