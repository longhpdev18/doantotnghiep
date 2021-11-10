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

var numbers = document.getElementById('cart-qty-input');
for (i = 0; i < 100; i++) {
    var span = document.createElement('span');
    span.textContent = i;
    numbers.appendChild(span);
}
var num = numbers.getElementsByTagName('span');
var index = 0;

function nextNum() {
    num[index].style.display = "none";
    index = (index + 1) % num.length;
    num[index].style.display = "flex";
}









