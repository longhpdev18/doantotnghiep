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
    console.log($('#profile-id').html())
    var makh= $('#profile-id').html()
    var username = $('#usernameProfile').val();
    var password = $('#passwordProfile').val();
    var fullname = $('#fullnameProfile').val();
    var birthday = Date.parse($('#birthdayProfile').val());
    var genders ;
    if($('#gender-valueProfile').text()=='Nam'){
        genders=0;
        
    }else
    {
        genders=1;
    }
    var sodienthoai = $('#phoneProfile').val();
    var address = $('#addressProfile').val();
    var email = $('#emailProfile').val();
    var hinh = $('#upload-photo')[0].files[0].name;
    $.ajax({
        url:'/admin/updateKH',
        type:'POST',
        contentType:'application/json',
        data:JSON.stringify(
            {
				makh: makh,
                tendangnhap:username,
                matkhau:password,
                fullname:fullname,
                ngaysinh:birthday,
                gioitinh:genders,
                diachi:address,
                email:email,
                sodienthoai:sodienthoai,
                active:true,
                hinh:hinh
            }
        ),
        success:function(result){
            if(result=='updated'){
                var form = new FormData(document.getElementById('fprofile'));
			console.log(form);
			$.ajax({
				url: '/admin/khachhang/addImage',
				type: 'POST',
				contentType: false,
				processData: false,
				data: form,
				success: function() {
					toastr.success('Cập nhật thành công!');
					setTimeout(function() {
						loadData();
					}, 1000);

				}, error: function(err) {
					console.log(err)
				}

			})
                
            }else{
                toastr.error('Lỗi!');
            }
        },error:function(err){
            console.log(err)
        }
        
    })
})