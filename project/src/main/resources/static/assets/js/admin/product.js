$(window).on('load', loadData())
function loadData() {
	$.ajax({
		url: '/product',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(result) {
			location.reload()
		}, error: function(err) {
			console.log(err)
		}

	})
}
