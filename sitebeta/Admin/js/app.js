$('.nav-close').click(function () {
    $('.navigation').removeClass('active');
    $('.topbar-brand').removeClass('active');
})
$('.btn-showGenders').click(function () {
    $('.sub-genders').toggleClass('active');
})

$('.gender-option').click(function () {
    $('.sub-genders').removeClass('active');
})