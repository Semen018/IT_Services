<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h1>Контакты</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<!-- Contact Form -->
				<h3>Отправьте нам сообщение</h3>
				<div class="contact-form-wrapper">
					<form class="form-horizontal" role="form" method="POST">
						<input type="hidden" name="method" value="create_feedback">

						<?php if (isset($_SESSION['sid'])) : ?>
							<input type="hidden" name="id_user" value="<?= $_SESSION['sid'][0][0]['id'] ?>">
						<?php endif; ?>
						<div class="form-group">
							<label for="Name" class="col-sm-3 control-label"><b>Ваше имя</b></label>
							<div class="col-sm-9">
								<input class="form-control" id="Name" name="fio" type="text" placeholder="" required value="<?php
																															if (isset($_SESSION['sid'])) {
																																if (isset($_SESSION['sid'][0][0]['fio']))
																																	echo  $_SESSION['sid'][0][0]['fio'];
																															}
																															?>">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-email" class="col-sm-3 control-label"><b>Ваш Email</b></label>
							<div class="col-sm-9">
								<input class="form-control" id="contact-email" name="mail" type="email" placeholder="" required value="<?php
																																		if (isset($_SESSION['sid'])) {
																																			echo  $_SESSION['sid'][0][0]['mail'];
																																		}
																																		?>">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-message" class="col-sm-3 control-label"><b>Сообщение</b></label>
							<div class="col-sm-9">
								<textarea class="form-control" rows="15" name="feedback_text" id="contact-message"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="submit" class="btn pull-right" onclick="UIkit.notification({message: '<span uk-icon=\'icon: check\'></span> Сообщение отправлено'})">Отправить</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End Contact Info -->
			</div>
		</div>
	</div>
</div>