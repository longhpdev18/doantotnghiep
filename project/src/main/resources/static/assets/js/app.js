$('.btn-showLogin').click(function () {
    $('.formLogin__container').addClass('active');
})
$('.btn-toLogin').click(function () {
    $('.formLogin__container').addClass('active');
    $('.formRegister__container').removeClass('active');
})
$('.btn-toRegister').click(function () {
    $('.formRegister__container').addClass('active');
    $('.formLogin__container').removeClass('active');
})
$('.btn-close').click(function () {
    $('.formLogin__container').removeClass('active');
    $('.formRegister__container').removeClass('active');
})
$('.btn-cancel').click(function () {
    $('.formLogin__container').removeClass('active');
    $('.formRegister__container').removeClass('active');
})

$('.btn-showUser').click(function () {
    $('.dropdown-user').toggleClass('active');
})
$('.btn-menu-mobile').click(function () {
    $('.menu-mobile').toggleClass('active');
})

$('.menu-mobile-close').click(function () {
    $('.menu-mobile').removeClass('active');
})

$('.btn-mobile-searchbox').click(function () {
    $('.mb-search').toggleClass('active');
})





