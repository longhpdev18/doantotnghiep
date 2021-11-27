$('.gender-select').click(function(){
    $('.gender-list').toggleClass('active')
})
$('.gender-option').click(function(){
    if(this.innerHTML=='Nam'){
        $('.gender-value').html('Nam')
        $('.gender-list').toggleClass('active')
    }else{
        $('.gender-value').html('Nữ')
        $('.gender-list').toggleClass('active')
    }
})
$('.btn-save').click(function(e){
    e.preventDefault();
   // var maNV= $('.profile-id').val();
    var maNV = $("#MaNV").text();
    var username = $('#usernameProfile').val();
    var password = $('#passwordProfile').val();
    var fullname = $('#fullnameProfile').val();
    var birthday = Date.parse($('#birthdayProfile').val());
    var genders ;
    if($('#gender-valueProfile').text()=='Nam'){
        genders=1;
        
    }else
    {
        genders=0;
    }
    var sodienthoai = $('#phone').val();
    var address = $('#address').val();
    var email = $('#email').val();
    $.ajax({
        url:'/updateProfileAD',
        type:'POST',
        contentType:'application/json',
        data:JSON.stringify(
            {
            	'manv':maNV,
                'tendangnhap':username,
                'matkhau':password,
                'fullname':fullname,
                'ngaysinh':birthday,
                'gioitinh':genders,
                'diachi':address,
                'email':email,
                'sodienthoai':sodienthoai
            }
        ),
        dataType:'json',
        success:function(result){
            if(result.value=='success'){
                
                toastr.success('Đổi thông tin thành công!');
                setTimeout(function() {
                    location.reload()
                  }, 2000);
            }else{
                toastr.error('Lỗi!');
            }
        },error:function(err){
            console.log(err)
        }
        
    })
})