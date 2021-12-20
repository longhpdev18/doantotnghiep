$('.nav-close').click(function () {
    $('.navigation').removeClass('active');
    $('.topbar-brand').removeClass('active');
})

$('.btn-showEdit').click(function () {
	$('.edit_product').addClass('active');
})

$('.btn-cancel').click(function () {
	$('.edit_product').removeClass('active');
})

$('.btn-close-edit').click(function () {
	$('.edit_product').removeClass('active');
})

/*$('.btn-delete').click(function () {
	$('.delete_product_nof').addClass('active');
	$('.delete-warning').addClass('active');
})*/

$('.btn-delete-done').click(function () {
	$('.delete_product_nof').removeClass('active');
	$('.delete-warning').removeClass('active');
	$('.delete-success').removeClass('active');
	$('.delete-err').removeClass('active');
})

$('.staff-button-edit').click(function () {
    $('.staff-update').addClass('active');
})

$('.update-button-cancel').click(function () {
    $('.staff-update').removeClass('active');
})


$('.btn-showEdit').click(function() {
    $('.order-update').addClass('active');
})

$('.order-update-cancel').click(function() {
    $('.order-update').removeClass('active');
})

$('.btn-showAction').click(function() {
    $('.action-content').addClass('active');
})

$('.add-item').mousedown(function() {
    $('.action-content').removeClass('active');
})
$('.export-file').click(function() {
    $('.action-content').removeClass('active');
})

$('.add-item').mousedown(function() {
     $('.add-customer').addClass('active');
})

$('.cancel-customer-button').mousedown(function() {
    $('.add-customer').removeClass('active');
})

/*$('.customer-button-edit').mousedown(function() {
     $('.edit-customer').addClass('active');
})*/

$('.cancel-customer-button').mousedown(function() {
    $('.add-customer').removeClass('active');
})

/*$('.customer-button-edit').mousedown(function() {
     $('.edit-customer').addClass('active');
})
*/
$('.cancel-customer-button').mousedown(function() {
    $('.add-customer').removeClass('active');
})

$('.add-item').mousedown(function() {
    $('.add-staff').addClass('active');
})

/*$('.staff-button-edit').mousedown(function() {
    $('.edit-staff').addClass('active');
})*/

$('.card-total').click(function() {
    $('.statistic').addClass('active');
	$('.statistic-order').addClass('active');
})

$('.card-total-week').click(function() {
    $('.statistic').addClass('active');
	$('.statistic-order-onweek').addClass('active');
})

$('.card-total-customer').click(function() {
    $('.statistic').addClass('active');
	$('.statistic-customer').addClass('active');
})

/*$('.card-total-revenue').click(function() {
    $('.statistic').addClass('active');
	$('.statistic-turnover').addClass('active');
})*/



$('.btn-statistic-close').click(function() {
    $('.statistic').removeClass('active');
	$('.statistic-customer').removeClass('active');
	$('.statistic-order-onweek').removeClass('active');
	$('.statistic-order').removeClass('active');
	$('.statistic-turnover').removeClass('active');
})



$(document).ready(function () {
    $('.recentCustomer-slider').slick({
        infinite: false,
        slidesToShow: 1,
        arrows: true,
        draggable: false,
        prevArrow: "<button type='button' class='slick-prev slick-button pull-left'><i class='fa fa-angle-left' aria-hidden='true'></i></button>",
        nextArrow: "<button type='button' class='slick-next  slick-button pull-right'><i class='fa fa-angle-right' aria-hidden='true'></i></button>",

	});
});

$('.btn-showGenders').click(function () {
    $('.sub-genders').toggleClass('active');
})

/*$('.gender-option').click(function () {
    $('.sub-genders').removeClass('active');
})*/
