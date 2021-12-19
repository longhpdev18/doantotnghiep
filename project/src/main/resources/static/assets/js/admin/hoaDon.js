$(window).on('load', getData())

function loadData() {
	$.ajax({
		url: '/HD',
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

	}),
		$.ajax({
			url: '/HDCT',
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
		url: '/checkHD',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(mess) {
			if (mess.value == "success") {
				
			} else {
				loadData();
			}
		}, error: function(err) {
			console.log(err)
		}

	}),
		$.ajax({
			url: '/checkHDCT',
			type: 'GET',
			contentType: 'application/json',
			data: JSON.stringify(

			),
			dataType: 'json',
			success: function(mess) {
				if (mess.value == "success") {
					
				} else {
					loadData();
				}
			}, error: function(err) {
				console.log(err)
			}

		})
}

$('.btn-prev').click(function() {
	//lấy ra số page hiện tại VD vào là 1, nhưng trên api mảng tính từ giá trị 0 còn form tính từ giá trị 1 nên phải -1
	var count = $('#countPage').text() - 1;
	console.log(count)
	$.ajax({
		url: '/admin/hd/prevPage',
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
		url: '/admin/hd/nextPage',
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


function editHD(mahd) {
	$.ajax({
		type: "GET",
		url: "/admin/getOneHD/" + mahd,
		contentType: 'application/json',
		success: function(response) {
			$("#maHD").text(response.mahd)
				, $("#Date").text(response.ngaymua)
				, $("#Name").val(response.tennguoinhan)
				, $("#Phone").val(response.sdtnguoinhan)
				, $("#Address").val(response.diachinguoinhan)
				, $('#Status option:selected').text(response.trangthai);
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}


$('#updateHD').click(function(e) {
	e.preventDefault();
	var mahd = parseInt($("#maHD").text());
	var tennguoinhan = $("#Name").val();
	var sdtnguoinhan = $("#Phone").val();
	var diachinguoinhan = $("#Address").val();
	var trangthai = $('#Status option:selected').text();

	$.ajax({
		url: '/admin/updateHD',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			mahd: mahd,
			tennguoinhan: tennguoinhan,
			sdtnguoinhan: sdtnguoinhan,
			diachinguoinhan: diachinguoinhan,
			trangthai: trangthai
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
