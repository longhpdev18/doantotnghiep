$(window).on('load', checkSession())
function loadData() {
	$.ajax({
		url: '/product',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(result) {
			if(result.value=='success'){
				
				location.reload()
			}else{

			}
		}, error: function(err) {
			console.log(err)
		}

	})
}
function checkSession() {
	$.ajax({
		url: '/checkProductAdmin',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(result) {
			if(result.value!='success'){
				loadData();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
}

$('.btn-prev').click(function(){
	//lấy ra số page hiện tại VD vào là 1, nhưng trên api mảng tính từ giá trị 0 còn form tính từ giá trị 1 nên phải -1
	var count = $('#countPage').text()-1;
	console.log(count)
	$.ajax({
		url: '/prevPage',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{

				'count' : count
			}
		),
		dataType: 'json',
		success: function(result) {
			if(result.value=='success'){
				location.reload();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
})
$('.btn-next').click(function(){
	var count = $('#countPage').text()-1;
	console.log(count)
	$.ajax({
		url: '/nextPage',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{

				'count' : count
			}
		),
		dataType: 'json',
		success: function(result) {
			if(result.value=='success'){
				location.reload();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
})