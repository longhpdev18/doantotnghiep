<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="navigation blur-white-lg">
	<ul class="navigation-wp">
		<div class="nav-header">
			<img src="./../assets/images/logo.png" alt="" class="header-brand">
			<button class="nav-close">
				<i class="fas fa-times"></i>
			</button>
		</div>
		<li><a href="./index"> <span class="icon"> <ion-icon
						name="home"></ion-icon>
			</span> <span class="title">Trang chủ</span>
		</a></li>
		<li><a href="./product"> <span class="icon"><i
					class="fas fa-box"></i> </span> <span class="title">Danh sách sản
					phẩm</span>
		</a></li>
		<li><a href="./customer"> <span class="icon"> <i
					class="far fa-user-circle"></i>
			</span> <span class="title">Quản lý người dùng</span>
		</a></li>
		<c:if test="${chucVuNV == true}">
			<li><a href="./product-type"> <span class="icon"> <i
						class="fas fa-list-ol"></i>
				</span> <span class="title">Quản lý loại hàng</span>
			</a></li>
			<li><a href="./brand"> <span class="icon"> <i
						class="fas fa-tags"></i>
				</span> <span class="title">Quản lý nhãn hiệu</span>
			</a></li>
		</c:if>
		<li><a href="./staff"> <span class="icon"> <i
					class="fas fa-users"></i>
			</span> <span class="title">Quản lý nhân viên</span>
		</a></li>

		<li><a href="/logoutAdmin"> <span class="icon"> <ion-icon
						name="log-in"></ion-icon>
			</span> <span class="title">Thoát</span>
		</a></li>
	</ul>
</div>