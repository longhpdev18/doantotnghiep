<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="navigation">
	<ul class="navigation-wp">
		<div class="nav-header">
			<img src="./../assets/images/logo_white.png" alt="" class="header-brand">
			<button class="nav-close">
				<i class="fas fa-times"></i>
			</button>
		</div>
		<li><a href="./index"> <span class="icon">
					<ion-icon name="home"></ion-icon>
			</span> <span class="title">Trang chủ</span>
		</a></li>
		<li><a href="./product"> <span class="icon"><i class="fas fa-box"></i>
			</span> <span class="title">Danh sách sản phẩm</span>
		</a></li>
		<li><a href="./product">
			<span class="icon"> 
				<i class="far fa-user-circle"></i>
			</span> 
			<span class="title">Quản lý người dùng</span>
		</a></li>
		<li><a href="./product">
			<span class="icon"> 
				<i class="fas fa-users"></i>
			</span> 
			<span class="title">Quản lý nhân viên</span>
		</a></li>
		<!-- <li>
                    <a href="./editProduct.html">
                        <span class="icon">
                            <ion-icon name="create"></ion-icon>
                        </span>
                        <span class="title">Sửa sản phẩm</span>
                    </a>
                </li> -->
		<!-- <li>
                    <a href="./listProduct.html">
                        <span class="icon">
                            <ion-icon name="list"></ion-icon>
                        </span>
                        <span class="title">Danh sách sản phẩm</span>
                    </a>
                </li> -->
		<li><a href="#"> <span class="icon"> <ion-icon
						name="chatbubbles"></ion-icon>
			</span> <span class="title">Tin nhắn</span>
		</a></li>

		<li><a href="#"> <span class="icon"> <ion-icon
						name="lock"></ion-icon>
			</span> <span class="title">Quên mật khẩu</span>
		</a></li>
		<li><a href="#"> <span class="icon"> <ion-icon
						name="log-in"></ion-icon>
			</span> <span class="title">Thoát</span>
		</a></li>
	</ul>
</div>