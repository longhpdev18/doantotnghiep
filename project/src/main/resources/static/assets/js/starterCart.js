$('.btn-cat').mouseover(function() {
	$('.dropmenu').removeClass('hidden');
})
$('.btn-cat').mouseout(function() {
	$('.dropmenu').addClass('hidden');
})

$('.btn-addToCart').click(function(e) {
	e.preventDefault();
	var masp = this.value;
	if (masp) {
		$.ajax({
			url: '/cart/add',
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(
				{
					'masp': masp
				}
			),
			dataType: 'json',
			success: function(result) {
				if (result != null) {
					$('#showCountCart').html('<i class="fas fa-shopping-cart"></i> <span class="cart-badge active">'+result+'</span>');
					toastr.success('Thêm sản phẩm vào giỏ hàng thành công!')
				} else {
					toastr.error(result.value);
				}
			}, error: function(err) {
				console.log(err)
			}

		})
	} 
})