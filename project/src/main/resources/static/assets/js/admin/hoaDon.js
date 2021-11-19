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
function getData(){
	$.ajax({
		url: '/checkHD',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(

		),
		dataType: 'json',
		success: function(mess) {
			if(mess.value=="success"){
				
			}else{
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
			if(mess.value=="success"){
				
			}else{
				loadData();
			}
		}, error: function(err) {
			console.log(err)
		}

	})
}

/**
 * 
 */