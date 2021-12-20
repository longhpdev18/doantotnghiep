$(window).on('load', getData())
function loadData() {
	$.ajax({
		url: '/sanpham',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(result) {
			if (result.value == 'success') {

				location.reload()
			} else {

			}
		}, error: function(err) {
			console.log(err)
		}

	})
}
function getData() {
	$('#add-product').show()
	$('#update-product').hide();
	$('#IDSP').hide();
	$('#lblID').hide();
	$.ajax({
		url: '/checkProductAdmin',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(result) {
			if (result.value != 'success') {
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
		url: '/prevPage',
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
		url: '/nextPage',
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

$('#add-product').click(function(e) {
	e.preventDefault();
	var tenspName = $('#tensp').val();
	if (tenspName == null || tenspName == "" || tenspName == undefined) {
		toastr.error('Tên sản phẩm không được để trống');
		return false;
	}
	var giaspName = $('#giasp').val();
	if (giaspName == NaN || giaspName == "" || giaspName == undefined) {
		toastr.error('Giá sản phẩm không được để trống');
		return false;
	} else {
		giaspName = parseInt(giaspName);
	}

	var tinhtrangName = $('#trangthaisp :selected').val();
	if (tinhtrangName == NaN || tinhtrangName == "" || tinhtrangName == undefined) {
		toastr.error('Trạng thái không được để trống');
		return false;
	} else {
		tinhtrangName = parseInt(tinhtrangName);
	}

	var manhName = $('#manh :selected').val();
	if (manhName == NaN || manhName == "" || manhName == undefined) {
		toastr.error('Nhãn hiệu không được để trống');
		return false;
	} else {
		manhName = parseInt(manhName);
	}

	var maloaiName = $('#maloai :selected').val();
	if (maloaiName == NaN || maloaiName == "" || maloaiName == undefined) {
		toastr.error('Loại hàng không được để trống');
		return false;
	}
	else {
		maloaiName = parseInt(maloaiName);
	}


	var motasp = $('textarea#motasp').val();
	if (motasp == null || motasp == "" || motasp == undefined) {
		toastr.error('Mô tả sản phẩm không được để trống');
		return false;
	}
	
	var hinhName = $('#fileSP')[0].files[0];
	if (hinhName == NaN || hinhName == "" || hinhName == undefined) {
		toastr.error('Hình không được để trống');
		return false;
	} else {
		hinhName = hinhName.name;
	}
	
	var dealName = $('#deal').val();
	if (dealName == NaN) {
		toastr.error('Giảm giá chỉ viết số');
		return false;
	} else {
		dealName = parseInt(dealName);
	}


	$.ajax({
		url: '/admin/product/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				"tensp": tenspName,
				"maloai": maloaiName,
				"manh": manhName,
				"gia": giaspName,
				"mota": motasp,
				"tinhtrang": tinhtrangName,
				"hinh": hinhName,
				"deal": dealName
			}
		),
		dataType: 'json',
		success: function() {
			var form = new FormData(document.getElementById('fAdd-product'));
			console.log(form);
			$.ajax({
				url: '/admin/product/addImage',
				type: 'POST',
				contentType: false,
				processData: false,
				data: form,
				success: function() {
					toastr.success('Thêm thành công!');
					setTimeout(function() {
						loadData();
					}, 2000);

				}, error: function(err) {
					console.log(err)
				}

			})


		}, error: function(err) {
			console.log(err)
		}

	})
})


function delectSP(masp) {
	$.ajax({
		url: '/admin/sanpham/delete/' + masp,
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

/*function Search() {
	var tensp = $('.search-input').val();
	$.ajax({
		url: '/admin/sanpham/' + tensp,
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify({

			"tensp": tensp
		}),
		dataType: 'json',
		success: function() {
			location.reload()
		}, error: function(err) {
			console.log(err)
		}

	})
}*/

function editSP(masp) {
	$.ajax({
		type: "GET",
		url: "/admin/getOneSP/" + masp,
		contentType: 'application/json',
		success: function(response) {
			$('#IDSP').val(response.masp),
				$('#tensp').val(response.tensp),
				$('#giasp').val(response.gia),
				$('#maloai').val(response.maloai),
				$('#manh').val(response.manh),
				$('textarea#motasp').val(response.mota),
				$('#deal').val(response.deal),
				$("#lblHinh").text(response.hinh)
			if (response.tinhtrang == false) {
				$("#trangthaisp").val("0")
			} else {
				$("#trangthaisp").val("1")
			}
			/*	$('#fileSP')[0].files[0].name;*/
			$('.add-product').hide();
			$('#update-product').show();
			$('#IDSP').show();
			$('#lblID').show();
		},
		error: function(err) {
			alert("error is" + err)
		}
	});
}



$('#update-product').click(function(e) {
	e.preventDefault();
	var masp = parseInt($('#IDSP').val());
	var tenspName = $('#tensp').val();
	var giaspName = parseInt($('#giasp').val());
	var maloaiName = parseInt($('#maloai :selected').val());
	var manhName = parseInt($('#manh :selected').val());
	var tinhtrangName = parseInt($('#trangthaisp :selected').val());
	var motasp = $('textarea#motasp').val();
	var hinhName = $('#fileSP')[0].files[0];
	var dealName = parseInt($('#deal').val());

	if (hinhName == undefined || hinhName == null || hinhName == "") {
		hinhName = $('#lblHinh').text();
	} else {
		hinhName = hinhName.name;
	}
	$.ajax({
		url: '/admin/updateSP',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify({
			"masp": masp,
			"tensp": tenspName,
			"maloai": maloaiName,
			"manh": manhName,
			"gia": giaspName,
			"mota": motasp,
			"tinhtrang": tinhtrangName,
			"hinh": hinhName,
			"deal": dealName
		}),
		success: function() {
			var form = new FormData(document.getElementById('fAdd-product'));
			console.log(form);
			$.ajax({
				url: '/admin/product/addImage',
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