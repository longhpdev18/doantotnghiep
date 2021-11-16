
// SHOW MENU
$('.btn-menu').click(function () {
    $('.navigation').toggleClass('active');
    $('.topbar-brand').addClass('active');
})
//show profile
function menuToggle() {
    const toggleMenu = document.querySelector('.menu');
    toggleMenu.classList.toggle('active')
}

