	<!-- Page Title -->
	<?php sha1(12345);?>
	<div class="section section-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Авторизация</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="basic-login">
						<form role="form" method="POST">
							<input type="hidden" name="method" value="authorization">
							<div class="form-group">
								<label for="login-username"><i class="icon-user"></i> <b>Логин или Email</b></label>
								<input class="form-control" id="login-username" name="login-username" type="text" placeholder="">
							</div>
							<div class="form-group">
								<label for="login-password"><i class="icon-lock"></i> <b>Пароль</b></label>
								<input class="form-control" id="login-password" name="login-password" type="password" placeholder="">
							</div>
							<div class="form-group">
								<button type="submit" class="btn pull-right">Войти</button>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-7 social-login">
					<div class="not-member">
						<p>Нет учетной записи? <a href="index.php?method=register">Создать учетную запись</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>