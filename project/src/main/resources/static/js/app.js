$('.btn-showLogin').click(function() {
	$('.formLogin__container').addClass('active');
})
$('.btn-close').click(function() {
	$('.formLogin__container').removeClass('active');
})
$('.btn-cancel').click(function() {
	$('.formLogin__container').removeClass('active');
})

$('.btn-showUser').click(function() {
	$('.dropdown-user').toggleClass('active');
})

	window.addEventListener("scroll", function() {
		var x = pageYOffset;
		if (x > 300) {
			$('.btn-cat').mouseover(function() {
				
				$('.menu__container').addClass('active');
			})
			$('.btn-cat').mouseout(function() {
				
				$('.menu__container').removeClass('active');
			})
			
		}
		else {
			$('.btn-cat').hover(function() {

				$('.menu__container').removeClass('active');
			})

		}

	})