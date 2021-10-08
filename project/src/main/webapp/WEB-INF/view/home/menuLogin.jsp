<%@ page pageEncoding="utf-8"%>
<div class="formLogin__container">
            <form action="" class="fLogin">
                <div class="form-heading">
                    <h1 class="form-title">Đăng nhập</h1>
                    <div class="btn btn-close bg-red-hover"><i class="fas fa-times"></i></div>
                </div>

                <div class="form-group">
                    <label for="username">
                        Tên tài khoản:
                    </label>
                    <input type="text" name="username" id="username" class="txtUsername" placeholder="Tài khoản"
                        required>
                </div>
                <div class="form-group">
                    <label for="password">
                        Mật khẩu:
                    </label>
                    <input type="password" name="password" id="password" class="txtPassword" placeholder="Mật khẩu"
                        required>
                </div>
                <div class="chk-remember">
                    <input type="checkbox" name="chkremember" id="chkremember" class="chkRemember">
                    <p>Ghi nhớ tài khoản</p>
                </div>
                <div class="group-button">
                    <button class="btn btn-primary btn-login rounded-8">Đăng nhập</button>
                    <button class="btn btn-light btn-cancel rounded-8">Hủy</button>
                </div>
                <div class="hr"></div>
                <div class="toRegister">
                    <p> Bạn chưa có tài khoản?</p> <a href="#" class="cta-link text-primary text-primary-hover">Đăng
                        ký</a>
                </div>
            </form>
        </div>
        <div class="header">
            <div class="header__container">
                <div class="header__brand">
                    <a href="./" class="header__brand--logo">
                        <img src="./images/logo.png" alt="" class="header__brand--image" />
                    </a>
                </div>
                <div class="header__searchbox">
                    <div class="searchbox">
                        <input type="text" class="header__searchbox--input" placeholder="Tìm kiếm..." />
                        <button class="header__searchbox--button btn-primary">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>

                <div class="header__right">
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
                                    <a href="#" class="cta-link text-dark cta-user-item">
                                        <i class="fas fa-sign-out-alt"></i>
                                        <p class="user-item-text">Đăng xuất</p>
                                    </a>
                                </li>
                            </ul>
                        </button>

                        <a href="./modules/cart/" class="btn btn-primary rounded cta-link cta-cart cta-white"><i
                                class="fas fa-shopping-cart"></i></a>

                    </div>
                </div>

                <!-- HEADER RIGHT CHƯA LOGIN // Mở comment ra là được-->
                <!-- <div class="header__right">
                    <div class="header__right--container">
                        <button href="#" class="btn btn-primary rounded btn btn-showLogin cta-white">Đăng
                            nhập</button>

                        <a href="./modules/cart/" class="btn btn-primary rounded cta-link cta-cart cta-white"><i
                                class="fas fa-shopping-cart"></i></a>

                    </div>
                </div> -->
            </div>
        </div>
        <div class="hero__top">
			<div class="hero__top--container">
				<div class="hero__top--left rounded">
					<li class="cat__title">Danh mục sản phẩm</li>
				</div>
				<div class="hero__top--right rounded">
					<ul class="stkbn__container">
						<li class="stkbn-item"><a href="#" class="cta-link cta-stk">
								<i class="far fa-money-bill-alt"></i> Hướng dẫn thanh toán
						</a></li>
						<li class="stkbn-item"><a href="#" class="cta-link cta-stk">
								<i class="fas fa-money-check-alt"></i> Hướng dẫn trả góp
						</a></li>
						<li class="stkbn-item"><a href="#" class="cta-link cta-stk">
								<i class="fas fa-tools"></i> Chính sách bảo hành
						</a></li>
						<li class="stkbn-item"><a href="#" class="cta-link cta-stk">
								<i class="fas fa-truck"></i> Chính sách vận chuyển
						</a></li>
						<li class="stkbn-item"><a href="#" class="cta-link cta-stk">
								<i class="fas fa-user-clock"></i> Tuyển dụng
						</a></li>
					</ul>
				</div>
			</div>
		</div>
<div class="hero">
			<div class="hero__container">
				<div class="hero__bottom">
					<div class="hero__left">
						<ul class="menu__left">
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-laptop"></i> Laptop
							</a>
								<ul class="submenu submenu-laptop">
									<div class="submenu__container">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop theo giá</h4> <a href="#"
											class="cta-link cta-brand__item">Dưới 10 triệu</a> <a
											href="#" class="cta-link cta-brand__item">Từ 10 đến 15
												triệu</a> <a href="#" class="cta-link cta-brand__item">Từ 15
												đến 30 triệu</a> <a href="#" class="cta-link cta-brand__item">Trên
												30 triệu</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">Dưới 10
												triệu</a> <a href="#" class="cta-link cta-brand__item">Từ 10
												đến 15 triệu</a> <a href="#" class="cta-link cta-brand__item">Từ
												15 đến 30 triệu</a> <a href="#" class="cta-link cta-brand__item">Trên
												30 triệu</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"><i
									class="fas fa-desktop"></i> PC BestGear </a>
								<ul class="submenu submenu-pcbest">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fab fa-apple"></i> Apple
							</a>
								<ul class="submenu submenu-apple">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop theo giá</h4> <a href="#"
											class="cta-link cta-brand__item">Dưới 10 triệu</a> <a
											href="#" class="cta-link cta-brand__item">Từ 10 đến 15
												triệu</a> <a href="#" class="cta-link cta-brand__item">Từ 15
												đến 30 triệu</a> <a href="#" class="cta-link cta-brand__item">Trên
												30 triệu</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">Dưới 10
												triệu</a> <a href="#" class="cta-link cta-brand__item">Từ 10
												đến 15 triệu</a> <a href="#" class="cta-link cta-brand__item">Từ
												15 đến 30 triệu</a> <a href="#" class="cta-link cta-brand__item">Trên
												30 triệu</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-desktop"></i> PC Văn Phòng
							</a>
								<ul class="submenu submenu-pc">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-microchip"></i> Linh kiện PC
							</a>
								<ul class="submenu submenu-pcaccessory">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-tv"></i> Màn hình
							</a>
								<ul class="submenu submenu-monitor">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="far fa-keyboard"></i> Bàn phím
							</a>
								<ul class="submenu submenu-keyboard">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-mouse"></i> Chuột & Lót chuột
							</a>
								<ul class="submenu submenu-mouse">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-headphones-alt"></i> Tai nghe Gaming
							</a>
								<ul class="submenu submenu-headgame">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-chair"></i> Ghế Gaming
							</a>
								<ul class="submenu submenu-chair">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-volume-up"></i> Loa & Tai nghe
							</a>
								<ul class="submenu submenu-speaker">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-print"></i> Thiết bị văn phòng
							</a>
								<ul class="submenu submenu-offaccessory">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fas fa-server"></i> Thiết bị mạng
							</a>
								<ul class="submenu submenu-network">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
							<li class="menu-item"><a href="#"
								class="cta-link cta-menu hover-primary rounded-8"> <i
									class="fab fa-usb"></i> Phụ kiện
							</a>
								<ul class="submenu submenu-accessory">
									<div class="submenu__container  ">
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming</h4> <a href="#"
											class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop học tập & làm việc</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo giá</h4> <a
											href="#" class="cta-link cta-brand__item">MSI</a> <a href="#"
											class="cta-link cta-brand__item">Dell</a> <a href="#"
											class="cta-link cta-brand__item">Acer</a> <a href="#"
											class="cta-link cta-brand__item">Asus</a> <a href="#"
											class="cta-link cta-brand__item">Lenovo</a> <a href="#"
											class="cta-link cta-brand__item">Gigabyte</a> <a href="#"
											class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
										<li class="submenu-item">
											<h4 class="submenu-title">Laptop Gaming theo thương hiệu</h4>
											<a href="#" class="cta-link cta-brand__item">MSI</a> <a
											href="#" class="cta-link cta-brand__item">Dell</a> <a
											href="#" class="cta-link cta-brand__item">Acer</a> <a
											href="#" class="cta-link cta-brand__item">Asus</a> <a
											href="#" class="cta-link cta-brand__item">Lenovo</a> <a
											href="#" class="cta-link cta-brand__item">Gigabyte</a> <a
											href="#" class="cta-link cta-brand__item">HP</a>
										</li>
									</div>
								</ul></li>
						</ul>
					</div>
					<div class="hero__right">
						<div class="hero--right__top">
							<ul class="hero__slide">
								<li class="hero__slide-item"><a href="#"
									class="cta-link cta-slide"> <img
										src="https://i.vietgiaitri.com/2020/2/9/minh-da-tau-man-hinh-roi-cho-laptop-de-choi-game-dung-bai-hon-3ec28d.png"
										alt="" class="slide--image" />
								</a></li>
							</ul>
						</div>
						<div class="hero--right__bottom">
							<ul class="hero__ads">
								<li class="hero__ads-item"><a href="#"
									class="cta-link cta-ads"> <img
										src="http://www.myboss.vn/images/Upload/images/manhinh-razer.jpg"
										alt="" class="ads--image">
								</a></li>
								<li class="hero__ads-item"><a href="#"
									class="cta-link cta-ads"> <img
										src="https://minhancomputer.com/media/lib/14-01-2021/razer.jpg"
										alt="" class="ads--image">
								</a></li>
								<li class="hero__ads-item"><a href="#"
									class="cta-link cta-ads"> <img
										src="https://cdn.tgdd.vn/Files/2019/10/26/1212545/chon-mua-laptop-choi-game-nen-mua-hang-nao-cau-hinh-bao-nhieu-la-du-10.jpg"
										alt="" class="ads--image">
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>