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
    $('.dropdown-user').toggle('active');
})