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

$('.btn-delete').click(function () {
	$('.delete_product_nof').addClass('active');
	$('.delete-warning').addClass('active');
})

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