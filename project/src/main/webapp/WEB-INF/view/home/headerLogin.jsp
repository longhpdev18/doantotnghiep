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
                    <li class="cat__title">Danh mục sản phẩm

                    </li>
                </div>
                <div class="hero__top--right rounded">
                    <ul class="stkbn__container">
                        <li class="stkbn-item">
                            <a href="#" class="cta-link cta-stk">
                                <i class="far fa-money-bill-alt"></i>
                                Hướng dẫn thanh toán
                            </a>
                        </li>
                        <li class="stkbn-item">
                            <a href="#" class="cta-link cta-stk">
                                <i class="fas fa-money-check-alt"></i>
                                Hướng dẫn trả góp
                            </a>
                        </li>
                        <li class="stkbn-item">
                            <a href="#" class="cta-link cta-stk">
                                <i class="fas fa-tools"></i>
                                Chính sách bảo hành
                            </a>
                        </li>
                        <li class="stkbn-item">
                            <a href="#" class="cta-link cta-stk">
                                <i class="fas fa-truck"></i>
                                Chính sách vận chuyển
                            </a>
                        </li>
                        <li class="stkbn-item">
                            <a href="#" class="cta-link cta-stk">
                                <i class="fas fa-user-clock"></i>
                                Tuyển dụng
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>