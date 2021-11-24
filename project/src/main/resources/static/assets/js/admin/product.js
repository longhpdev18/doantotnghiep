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

$('.add-product').click(function(e){
	 e.preventDefault();

// var maloaiName = $('#maloai').find(":selected").text();
// var manhName = $('#manh').find(":selected").text();
// var tinhtrangName = $('#trangthaisp').find(":selected").text();
var maloaiName = $('#maloai').val();
var manhName = $('#manh').val();
var tinhtrangName = $('#trangthaisp').val();
var tensp = $('#tensp').val();
var giasp = $('#giasp').val();
var motasp = $('textarea#motasp').val();
var hinh = $('#fileSP')[0].files[0].name;
var deal = $('#deal').val();
	$.ajax({
		url: '/product/add',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(
			{
				
    "tensp": tensp,
    "maloai": maloaiName,
    "manh": manhName,
    "gia": giasp,
    "mota": motasp,
    "tinhtrang":tinhtrangName,
    "hinh": hinh,
    "deal": deal
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