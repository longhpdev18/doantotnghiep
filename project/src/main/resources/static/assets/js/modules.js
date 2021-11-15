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
$('.btn-cat').mouseover(function () {
    $('.dropmenu').removeClass('hidden');
})
$('.btn-cat').mouseout(function () {
    $('.dropmenu').addClass('hidden');
})

const decButton = document.getElementsByClassName('btn-qty-down');
const incButton = document.getElementsByClassName('btn-qty-up');

for (var i = 0; i < incButton.length; i++) {
    var button = incButton[i];
    button.addEventListener('click', function (event) {
        var buttonClicked = event.target;
        var input = buttonClicked.parentElement.parentElement.children[1];
        var inputValue = input.value;
        if (inputValue >= 100) {
            var newValue = 100;
        } else {
            var newValue = parseInt(inputValue) + 1;
        }
        input.value = newValue;
    })
}
for (var i = 0; i < decButton.length; i++) {
    var button = decButton[i];
    button.addEventListener('click', function (event) {
        var buttonClicked = event.target;
        var input = buttonClicked.parentElement.parentElement.children[1];
        var inputValue = input.value;
        if (inputValue <= 1) {
            var newValue = 1;
        } else {
            var newValue = parseInt(inputValue) - 1;
        }
        input.value = newValue;
    })
}











