$('.btn-showLogin').click(function () {
    $('.formLogin__container').addClass('active');
})
$('.btn-close').click(function () {
    $('.formLogin__container').removeClass('active');
})
$('.btn-cancel').click(function () {
    $('.formLogin__container').removeClass('active');
})

$('.btn-showUser').click(function () {
    $('.dropdown-user').toggleClass('active');
})

$('.btn-showGenders').click(function () {
    $('.sub-genders').toggleClass('active');
})

$('.gender-option').click(function () {
    $('.sub-genders').removeClass('active');
})

$('.btn-cat').mouseover(function () {
    $('.dropmenu').removeClass('hidden');
})
$('.btn-cat').mouseout(function () {
    $('.dropmenu').addClass('hidden');
})









