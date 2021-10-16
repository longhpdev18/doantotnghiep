<%@ page pageEncoding="utf-8"%>
		<!-- ======= LOGIN =======-->
		<div class="formLogin__container blur-dark">
			<form action="login" class="fLogin" method="POST">
				<div class="form-heading">
					<h1 class="form-title">Đăng nhập</h1>
					<div class="btn btn-close bg-red-hover">
						<i class="fas fa-times"></i></div>
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
					<p> Bạn chưa có tài khoản?</p> <a href="#"
						class="cta-link btn-toRegister text-primary text-primary-hover">Đăng
						ký</a>
				</div>
			</form>
		</div>

		<!-- ======= REGISTER =======-->
		<div class="formRegister__container blur-dark">
			<form action="" class="fRegister">
				<div class="form-heading">
					<h1 class="form-title">Đăng ký</h1>
					<div class="btn btn-close bg-red-hover">
						<i class="fas fa-times"></i></div>
				</div>
				<h2 class="heading-title">Thông tin tài khoản</h2>
				<div class="form-group">
					<label for="username">
						Tên tài khoản:
					</label>
					<input type="text" name="username" id="username" class="txtUsername" placeholder="Tên tài khoản"
						required>
				</div>
				<div class="form-group">
					<label for="password">
						Mật khẩu:
					</label>
					<input type="password" name="password" id="password" class="txtPassword" placeholder="Mật khẩu"
						required>
				</div>
				<div class="form-group">
					<label for="repassword">
						Xác nhận mật khẩu:
					</label>
					<input type="password" name="repassword" id="repassword" class="txtRePassword"
						placeholder="Xác nhận mật khẩu" required>
				</div>
				<div class="hr"></div>
				<h2 class="heading-title">Thông tin người dùng</h2>
				<div class="form-group">
					<label for="fullname">
						Họ và tên:
					</label>
					<input type="text" name="fullname" id="fullname" class="txtFullname" placeholder="Họ và tên"
						required>
				</div>
				<div class="form-group">
					<label for="email">
						Xác nhận mật khẩu:
					</label>
					<input type="email" name="email" id="email" class="txtEmail" placeholder="Email" required>
				</div>
				<div class="group-button">
					<button class="btn btn-primary btn-register rounded-8">Đăng ký</button>
					<button class="btn btn-light btn-cancel rounded-8">Hủy</button>
				</div>
				<div class="hr"></div>
				<div class="toLogin">
					<p>Bạn đã có tài khoản?</p> <a href="#"
						class="cta-link btn-toLogin text-primary text-primary-hover">Đăng
						nhập ngay</a>
				</div>
			</form>
		</div>
