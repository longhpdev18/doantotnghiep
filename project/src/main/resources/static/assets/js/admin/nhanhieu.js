$(window).on('load', getData())
function loadData() {

	$.ajax({
		url: '/nhanhieu',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function() {
			location.reload();
		}, error: function(err) {
			console.log(err)
		}

	})
}
function getData() {
	$('#idNH').hide();
	$('#updateNH').hide();
	$('#labelID').hide();

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
	if (tennh == null || tennh == "") {
		toastr.error('Tên nhãn hiệu không được để trống');
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
			}, 1000);

		}, error: function(err) {
			console.log(err)
			toastr.error('Thêm thất bại công!');
		}

	})
})

function editNH(manh) {

	$.ajax({
		type: "GET",
		url: "/admin/getOneNH/" + manh,
		contentType: 'application/json',
		success: function(response) {
			$("#idNH").val(response.manh),
				$("#nameNH").val(response.tennh)
			$('#idNH').show();
			$('#updateNH').show();
			$('#labelID').show();
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
	if (tennh == null || tennh == "") {
		toastr.error('Tên loại không được để trống');
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
			}, 1000);
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
})



function delectNH(manh) {
	$.ajax({
		url: '/admin/nhanhieu/delete/' + manh,
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
