<%@ page pageEncoding="utf-8"%>

<div class="formLogin__container blur-dark">
	<form action="" class="fLogin">
		<div class="form-content">
			<div class="form-content-left">
				<div class="form-content-heading">
					<img src="./../assets/images/logo_white.png" class="heading-image"
						alt="">
				</div>
				<div class="form-content-content">
					<img src="./../assets/images/banner_loginpage.png" alt="">
				</div>
			</div>
			<div class="form-content-right">
				<div class="form-heading">
					<h1 class="form-title">Đăng nhập</h1>
					<div class="btn btn-close bg-red-hover">
						<i class="fas fa-times"></i>
					</div>
				</div>
				<div class="form-group">
					<label for="username"> Tên tài khoản: </label> <input type="text"
						name="username" id="username" class="txtUsername"
						placeholder="Tài khoản" required>
				</div>
				<div class="form-group">
					<label for="password"> Mật khẩu: </label> <input type="password"
						name="password" id="password" class="txtPassword"
						placeholder="Mật khẩu" required>
				</div>
				<div class="chk-remember">
					<input type="checkbox" name="chkremember" id="chkremember"
						class="chkRemember">
					<p>Ghi nhớ tài khoản</p>
				</div>
				<div class="group-button">
					<button class="btn btn-primary btn-login rounded-8">Đăng
						nhập</button>
					<button class="btn btn-light btn-cancel rounded-8">Hủy</button>
				</div>
				<div class="hr"></div>
				<div class="toRegister">
					<p>Bạn chưa có tài khoản?</p>
					<a href="#"
						class="cta-link btn-toRegister text-primary text-primary-hover">Đăng
						ký</a>
				</div>
			</div>
		</div>
	</form>
</div>


<!-- ======= REGISTER =======-->
<div class="formRegister__container blur-dark">
	<form action="" class="fRegister">
		<div class="form-content">
			<div class="form-content-left">
				<div class="form-content-heading">
					<img src="../../assets/images/logo_white.png" class="heading-image"
						alt="">
				</div>
				<div class="form-content-content">
					<img src="../../assets/images/banner_registerpage.png" alt="">
				</div>
			</div>
			<div class="form-content-right">
				<div class="form-heading">
					<h1 class="form-title">Đăng ký</h1>
					<div class="btn btn-close bg-red-hover">
						<i class="fas fa-times"></i>
					</div>
				</div>
				<h2 class="heading-title">Thông tin tài khoản</h2>
				<div class="form-group flex-row">
					<div class="form-group-col2 flex-col">
						<label for="username"> Tên tài khoản: </label> <input type="text"
							name="username" id="username" class="txtUsername"
							placeholder="Tên tài khoản" required>
					</div>
					<div class="form-group-col2 flex-col ml-m">
						<label for="email"> Email: </label> <input type="email"
							name="email" id="useemailrname" class="txtEmail"
							placeholder="Email" required>
					</div>
				</div>
				<div class="form-group flex-row">
					<div class="form-group-col2 flex-col">
						<label for="password"> Mật khẩu: </label> <input type="password"
							name="password" id="password" class="txtPassword"
							placeholder="Mật khẩu" required>
					</div>
					<div class="form-group-col2 flex-col ml-m ">
						<label for="repassword"> Xác nhận mật khẩu: </label> <input
							type="password" name="repassword" id="repassword"
							class="txtRePassword" placeholder="Xác nhận mật khẩu" required>
					</div>
				</div>

				<div class="hr"></div>
				<h2 class="heading-title">Thông tin người dùng</h2>
				<div class="form-group flex-row">
					<div class="form-group-col2 flex-col">
						<label for="fullname"> Họ và tên: </label> <input type="text"
							name="fullname" id="fullname" class="txtFullname"
							placeholder="Họ và tên" required>
					</div>
					<div class="form-group-col2 ml-m flex-col">
						<label for="phone"> Số điện thoại: </label> <input type="number"
							name="phone" id="phone" class="txtPhone"
							placeholder="Số điện thoại" required>
					</div>
				</div>
				<div class="form-group">
					<label for="address"> Địa chỉ: </label> <input type="text"
						name="address" id="address" class="txtAddress"
						placeholder="Địa chỉ" required>
				</div>
				<div class="group-button">
					<button class="btn btn-primary btn-register rounded-8">Đăng
						ký</button>
					<button class="btn btn-light btn-cancel rounded-8">Hủy</button>
				</div>
				<div class="hr"></div>
				<div class="toLogin">
					<p>Bạn đã có tài khoản?</p>
					<a href="#"
						class="cta-link btn-toLogin text-primary text-primary-hover">Đăng
						nhập ngay</a>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="header">
	<div class="header__container">
		<div class="header__brand">
			<a href="../../index" class="header__brand--logo"> <img
				src="../../assets/images/logo.png" alt=""
				class="header__brand--image" />
			</a>
		</div>
		<div class="header__searchbox">
			<div class="searchbox">
				<input type="text" class="header__searchbox--input"
					placeholder="Tìm kiếm..." />
				<button class="header__searchbox--button btn-primary">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>

		<!-- HEADER RIGHT ĐÃ LOGIN // Mở comment ra là được-->

		<!-- <div class="header__right">
                    <div class="header__right--container">
                        <button href="#" class="btn btn-primary rounded btn btn-showUser">
                            <p class="user-fullname">Hoàng Phi Long</p>
                            <i class="fas fa-angle-down"></i>
                            <ul class="dropdown-user">
                                <li class="dropdown-user-item">
                                    <a href="#" class="cta-link text-dark cta-user-item">
                                        <i class="fas fa-user-alt"></i>
                                        <p class="user-item-text">Thông tin tài khoản</p>
                                    </a>
                                </li>
                                <li class="dropdown-user-item">
                                    <a href="#" class="cta-link text-dark cta-user-item">
                                        <i class="fas fa-list-ul"></i>
                                        <p class="user-item-text">Đơn đặt hàng</p>
                                    </a>
                                </li>
                                <div class="hr"></div>
                                <li class="dropdown-user-item">
                                    <a href="/logout.html" class="cta-link text-dark cta-user-item">
                                        <i class="fas fa-sign-out-alt"></i>
                                        <p class="user-item-text">Đăng xuất</p>
                                    </a>
                                </li>
                            </ul>
                        </button>

                        <a href="./modules/cart/" class="btn btn-primary rounded cta-link cta-cart cta-white">
                            <i class="fas fa-shopping-cart"></i>
                        </a>
                    </div>
                </div> -->

		<!-- HEADER RIGHT CHƯA LOGIN // Mở comment ra là được-->
		<div class="header__right">
			<div class="header__right--container">
				<button href="#"
					class="btn btn-primary rounded btn btn-showLogin cta-white">Đăng
					nhập</button>

				<a href="./../cart/index"
					class="btn btn-primary rounded cta-link cta-cart cta-white"><i
					class="fas fa-shopping-cart"></i></a>

			</div>
		</div>
	</div>
</div>
<div class="header__bottom">
	<div class="header__bottom--container">
		<div class="header__bottom--left rounded">
			<li class="cat__title bg-primary btn-cat">Danh mục sản phẩm
				<div class="dropmenu hidden">
					<ul class="dropmenu__container">
						<li class="menu-item"><a href="#" class="menu-link ">
								<div class="menu-icon">
									<img src="../../assets/icons/laptop.svg" alt="">
								</div>
								<p>Laptop</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/desktop.svg" alt="">
								</div>
								<p>PC BestGear</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link ">
								<div class="menu-icon">
									<img src="../../assets/icons/apple.svg" alt="">
								</div>
								<p>Apple</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/pc.svg" alt="">
								</div>
								<p>PC Văn Phòng</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link ">
								<div class="menu-icon">
									<img src="../../assets/icons/pcacessory.svg" alt="">
								</div>
								<p>Linh Kiện</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/monitor.svg" alt="">
								</div>
								<p>Màn hình</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/keyboard.svg" alt="">
								</div>
								<p>Bàn phim</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/mouse.svg" alt="">
								</div>
								<p>Chuột + Lót chuột</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/headphone.svg" alt="">
								</div>
								<p>Tai nghe & Loa</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/chair.svg" alt="">
								</div>
								<p>Ghế Gaming</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/print.svg" alt="">
								</div>
								<p>Thiết bị văn phòng</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/internet.svg" alt="">
								</div>
								<p>Thiết bị mạng</p>
						</a></li>
						<li class="menu-item"><a href="#" class="menu-link">
								<div class="menu-icon">
									<img src="../../assets/icons/accessorypc.svg" alt="">
								</div>
								<p>Phụ Kiện</p>
						</a></li>
					</ul>
				</div>
			</li>
		</div>
		<div class="header__bottom--right rounded">
			<ul class="stkbn__container">
				<li class="stkbn-item"><a href="#" class=" cta-stk"> <i
						class="far fa-money-bill-alt"></i> Hướng dẫn thanh toán
				</a></li>
				<li class="stkbn-item"><a href="#" class=" cta-stk"> <i
						class="fas fa-money-check-alt"></i> Hướng dẫn trả góp
				</a></li>
				<li class="stkbn-item"><a href="#" class=" cta-stk"> <i
						class="fas fa-tools"></i> Chính sách bảo hành
				</a></li>
				<li class="stkbn-item"><a href="#" class=" cta-stk"> <i
						class="fas fa-truck"></i> Chính sách vận chuyển
				</a></li>
				<li class="stkbn-item"><a href="#" class=" cta-stk"> <i
						class="fas fa-user-clock"></i> Tuyển dụng
				</a></li>
			</ul>
		</div>
	</div>
</div>