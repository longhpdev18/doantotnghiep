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

