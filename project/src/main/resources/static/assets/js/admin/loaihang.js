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
function getData() {
	$.ajax({
		url: '/getData',
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
$('.add-ProductType').click(function(e) {
	e.preventDefault();

	var tenloai = $('#nameProductType').val();

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
		url: "/admin/getOneLH/" + maloai,
		dataType: 'json',
		success: function(response) {
			//alert("student--"+response.id);
			$("#idLH").val(response.maloai),
			$("#nameLH").val(response.tenloai)
		//	$('#saveStudent').hide();
		//	$('#updateStudent').show();
		//	$('#idfield').show();
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}

function delectLH(maloai) {
	$.ajax({
		url: '/admin/loaihang/delete/' + maloai,
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
