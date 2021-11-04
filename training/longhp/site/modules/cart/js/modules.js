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

const qtyValue = document.getElementById('qty-value');
function stepper(btn) {
    let id = btn.getAttribute('id');
    let min = qtyValue.getAttribute('min');
    let max = qtyValue.getAttribute('max');
    let step = qtyValue.getAttribute('step');
    let val = qtyValue.getAttribute('value');
    let calcStep = (id == "btn-qty-up") ? (step * 1) : (step * -1);
    console.log(id, min, max, step, val, calcStep)
    let newValue = parseInt(val) + calcStep;
    if (newValue >= min && newValue <= max) {
        qtyValue.setAttribute("value", newValue);
    }
}










