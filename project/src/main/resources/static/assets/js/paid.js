$( window ).on('load', loadData())
function loadData() {
    $.ajax({
        url:'/getAddressPaid',
        type:'GET',
        contentType:'application/json',
        data:JSON.stringify(
           
        ),
        dataType:'json',
        success:function(result){
            checkLogin(result);
        },error:function(err){
            console.log(err)
        }
        
    })}
$('.btn-cancel').click(function(){
    $('.paid-address').empty()
})
$('.btn-close').click(function(){
    $('.paid-address').empty()
})
function checkLogin(result){
    if(result.makh==0){
        $('.formLogin__container').addClass('active');
    }else{
        getData();
    }
}
function getData(){
    $.ajax({
        url:'/getAddressPaid',
        type:'GET',
        contentType:'application/json',
        data:JSON.stringify(
           
        ),
        dataType:'json',
        success:function(result){
                $('label[for=address-1]').find('.address-nameKH').html(result.fullname);
                $('label[for=address-1]').find('.address-text').html(result.diachi);
                $('label[for=address-1]').find('.address-phone').html(result.sodienthoai);
          
        },error:function(err){
            console.log(err)
        }
        
    })
}
 $('.btn-buy').click(function(e){
    e.preventDefault();
    console.log($('#saveFullname'))
    var fullname= $('#saveFullname').text();
    var address = $('#saveAddress').text();
    var phone = $('#savePhone').text();
	
	var today = Date.now();
    $.ajax({
        url:'/addPill',
        type:'POST',
        contentType:'application/json',
        data:JSON.stringify(
            {   'makh':'',
                'ngaymua':today,
                'trangthai':'Đã nhận đơn',
                'tennguoinhan':fullname,
                'diachinguoinhan':address,
                'sdtnguoinhan':phone
            }
        ),
        dataType:'json',
        success:function(result){
			if(result.value=='success'){
				location.href = '/order';
				window.load();
			}
            console.log(result)
        },error:function(err){
            console.log(err)
        }
        
    })
})