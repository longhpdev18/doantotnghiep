<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="topbar blur-white-lg">
	<div class="topbar-left">
		<div class="btn-menu">
			<i class="fas fa-bars"></i>
		</div>

	</div>
	<!-- search-->
	<div class="topbar-brand">
		<img src="./../assets/images/logo.png" alt=""
			class="topbar-brand-image">
	</div>
	<!-- userImg -->
	<div class="action">
		<div class="user" onclick="menuToggle();">
			<!--profile-->
				<img src="./../assets/images/profile/${hinhNV}"
				alt="" width="50px">
		</div>
		<div class="menu">
			<h3>${fullnameNV}
				<br>
				<span><c:if test="${chucVuNV == true}">Admin</c:if> <c:if
						test="${chucVuNV == false}">Nhân viên</c:if></span>
			</h3>
			<ul>
				<li><i class="far fa-user-circle"></i><a href="./profile">My
						Profile</a></li>
				<li><i class="far fa-edit"></i><a href="./profile">Edit
						Profile</a></li>
				<li><i class="far fa-envelope"></i><a href="">Inbox</a></li>
				<li><i class="far fa-question-circle"></i><a href="">Help</a></li>
				<li><i class="fas fa-sign-out-alt"></i><a href="/logoutAdmin">Logout</a></li>
			</ul>
		</div>
	</div>
	<!-- <div class="action">
        <div class="profile" onclick="menuToggle();">
            <img src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.6435-9/127222247_1086079278516962_38767906172782592_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FcF-DqXSBUYAX-u-j1Z&tn=8Xk759-Pc91XDR0g&_nc_ht=scontent.fdad1-1.fna&oh=39f0b948a1be6268de1169086e3e2d21&oe=6192E86C" alt="">
        </div>
        <div class="menu">
            <h3>Someone Famous <br><span>Website Designer</span></h3>
            <ul>
                <li><i class="far fa-user-circle"></i><a href="">My Profile</a></li>
                <li><i class="far fa-edit"></i><a href="">Edit Profile</a></li>
                <li><i class="far fa-envelope"></i><a href="">Inbox</a></li>
                <li><i class="far fa-question-circle"></i><a href="">Help</a></li>
                <li><i class="fas fa-sign-out-alt"></i><a href="">Logout</a></li>
            </ul>
        </div>
    </div> -->
</div>